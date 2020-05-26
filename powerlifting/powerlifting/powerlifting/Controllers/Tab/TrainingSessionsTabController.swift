//  powerlifting
//
// 167682

import UIKit

class TrainingSessionsTabController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var statusLabel: UILabel!
    
    
   
    private func findTodaysTrainingSession() -> [Int] {
        func isUnderway(_ trainingSession: TrainingSession) -> Bool {
            let app = UIApplication.shared.delegate as! AppDelegate
            for name in trainingSession.movements {
                if let movement = app.routine.findMovement(name), !trainingSession.noncompulsory.contains(name) {
                    if case .underway = movement.method.state, movement.method.on(trainingSession) {
                        return true
                    }
                }
            }
            return false
        }
        
        func numCompleted(_ trainingSession: TrainingSession) -> Int {
            var count = 0
            let app = UIApplication.shared.delegate as! AppDelegate
            let calendar = Calendar.current
            for name in trainingSession.movements {
                if let movement = app.routine.findMovement(name), !trainingSession.noncompulsory.contains(name) {
                    if let completed = movement.completed[trainingSession.name], calendar.isDate(completed, inSameDayAs: Date()) {
                        count += 1
                    }
                }
            }
            return count
        }
        
        var todays: [Int] = []
        let app = UIApplication.shared.delegate as! AppDelegate
        for (i, trainingSession) in app.routine.trainingSessions.enumerated() {
            let completed = numCompleted(trainingSession)
            if isUnderway(trainingSession) || (completed > 0 && completed < trainingSession.movements.count) {
                todays.append(i)
            }
        }
        return todays
    }
    
    private func findFirstMissingTrainingSession() -> Int? {
        let app = UIApplication.shared.delegate as! AppDelegate
        for (i, trainingSession) in app.routine.trainingSessions.enumerated() {
            if trainingSession.scheduled && trainingSession.movements.all({
                if let movement = app.routine.findMovement($0), !trainingSession.noncompulsory.contains($0) {
                    if movement.completed[trainingSession.name] == nil {
                        return true
                    }
                }
                return false
            }) {
                return i
            }
        }
        return nil
    }
    
    private func findOldestTrainingSession() -> Int? {
        var date = Date()
        var index: Int? = nil
        
        let app = UIApplication.shared.delegate as! AppDelegate
        for (i, trainingSession) in app.routine.trainingSessions.enumerated() {
            if trainingSession.scheduled {
                if let (candidate, _) = app.dateTrainingSessionWasCompleted(trainingSession) {
                    if candidate.compare(date) == .orderedAscending {
                        date = candidate
                        index = i
                    }
                }
            }
        }
        return index
    }
    
    private func hasActiveMovement(_ trainingSession: TrainingSession) -> Bool {
        for movementName in trainingSession.movements {
            if !trainingSession.noncompulsory.contains(movementName) {
                return true
            }
        }

        return false
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statusLabel.numberOfLines = 0 
        
        tableView.dataSource = self
        tableView.delegate = self
        
       
        statusLabel.backgroundColor = tableView.backgroundColor
        view.backgroundColor = tableView.backgroundColor
        view.setNeedsDisplay()
        
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
    }
    
    override func applicationFinishedRestoringState() {
    }
    
    @objc func enteringForeground() {
      
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        statusLabel.text = TrainingSessionsTabController.getTrainingSessionSummary()
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        

    }
    
    @IBAction func unwindToTrainingSessions(_ segue:UIStoryboardSegue) {
        statusLabel.text = TrainingSessionsTabController.getTrainingSessionSummary()
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let app = UIApplication.shared.delegate as! AppDelegate
        return app.routine.trainingSessions.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
        let index = path.item
        let app = UIApplication.shared.delegate as! AppDelegate
        let trainingSession = app.routine.trainingSessions[index]

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "TrainingSessionID") as! TrainingSessionController
        view.initialize(trainingSession, "TrainingSessions")
        present(view, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrainingSessionCellID")!
        cell.backgroundColor = tableView.backgroundColor
        
        let index = path.item
        let app = UIApplication.shared.delegate as! AppDelegate
        let trainingSession = app.routine.trainingSessions[index]
        cell.textLabel!.text = trainingSession.name

        if !hasActiveMovement(trainingSession) {
            cell.detailTextLabel!.text = "inactive"

        } else {
            cell.detailTextLabel!.text = ""
        }
        
        let todays = findTodaysTrainingSession()
        if todays.contains(index) {
            
            cell.detailTextLabel!.text = "in progress"
            let color = UIColor.red
            cell.textLabel!.setColor(color)
            cell.detailTextLabel!.setColor(color)

        } else {
            let selectedIndex = findFirstMissingTrainingSession() ?? findOldestTrainingSession() ?? app.routine.trainingSessions.count
            var color = selectedIndex == index && todays.isEmpty ? UIColor.red : UIColor.black

            let app = UIApplication.shared.delegate as! AppDelegate
            if let (date, somewhat) = app.dateTrainingSessionWasCompleted(trainingSession) {
                let calendar = Calendar.current
                if calendar.isDate(date, inSameDayAs: Date()) && somewhat {
                    cell.detailTextLabel!.text = "in progress"
                } else if calendar.isDate(date, inSameDayAs: Date()) && !somewhat {
                    cell.detailTextLabel!.text = "finished today"
                    color = .lightGray
                } else if somewhat {
                    cell.detailTextLabel!.text = "somewhat completed \(date.daysName())"
                } else {
                    cell.detailTextLabel!.text = "completed \(date.daysName())"
                }

            } else {
                cell.detailTextLabel!.text = "not finished"
            }

            cell.textLabel!.setColor(color)
            cell.detailTextLabel!.setColor(color)
        }
        
        return cell
    }
    
    
    static internal func getTrainingSessionSummary() -> String {
        let app = UIApplication.shared.delegate as! AppDelegate
            
        let mesg = (app.routine.name)
         
        return mesg
        }
    
   
}
