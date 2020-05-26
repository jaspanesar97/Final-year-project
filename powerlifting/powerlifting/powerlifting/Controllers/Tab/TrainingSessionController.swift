//  powerlifting
//
// 167682


import UIKit
import os.log

struct StringError: Error {
    let message: String
}


class TrainingSessionController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var breadcrumbLabel: UILabel!
    @IBOutlet private var optionsButton: UIBarButtonItem!
    
    private func presentMovement(_ movement: Movement) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "MovementID") as! MovementController
        view.initialize(trainingSession, movement, breadcrumbLabel.text!, "unwindToTrainingSessionID")
        self.present(view, animated: true, completion: nil)
    }

    private var trainingSession: TrainingSession!
    private var breadcrumb: String!
    
    func initialize(_ trainingSession: TrainingSession, _ breadcrumb: String) {
        print("initialize")
        self.trainingSession = trainingSession
        self.breadcrumb = "\(breadcrumb) • \(trainingSession.name)"
    }
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        view.backgroundColor = tableView.backgroundColor
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        coder.encode(trainingSession.name, forKey: "trainingSession.name")
        coder.encode(breadcrumb, forKey: "breadcrumb")
        
        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        print("decode state")
        
        let name = coder.decodeObject(forKey: "trainingSession.name") as! String
        let app = UIApplication.shared.delegate as! AppDelegate
        if let w = app.routine.findTrainingSession(name) {
            trainingSession = w
        } else {
            trainingSession = app.routine.trainingSessions[0]
        }
        
        super.decodeRestorableState(with: coder)
    }
    
    override func applicationFinishedRestoringState() {
    }
    
    @objc func enteringForeground() {
        
        print("enteringForeground")
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        super.viewDidAppear(animated)

        breadcrumbLabel.text = breadcrumb
        

    }
    
    
    @IBAction func unwindToTrainingSession(_ segue:UIStoryboardSegue)
    {
        tableView.reloadData()
    }
        
    @IBAction func skipPressed(_ sender: Any) {

    }



    @IBAction func optionsPressed(_ sender: Any) {


        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "TrainingSessionOptionsID") as! TrainingSessionOptionsController
        view.initialize(trainingSession, breadcrumbLabel.text!)
        present(view, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let filtered = trainingSession.movements.filter {!trainingSession.noncompulsory.contains($0)}
        return filtered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrainingSessionCellID")!
        cell.backgroundColor = tableView.backgroundColor
        
        let filtered = trainingSession.movements.filter {!trainingSession.noncompulsory.contains($0)}
        let index = (path as NSIndexPath).item
        let name = filtered[index]
        let app = UIApplication.shared.delegate as! AppDelegate
        if let movement = app.routine.findMovement(name) {
            if case .underway = movement.method.state, movement.method.on(trainingSession) {
                cell.textLabel!.text = movement.method.lbl()
                cell.detailTextLabel!.text = movement.method.subLbl()
                cell.textLabel?.setColor(.red)
                cell.detailTextLabel?.setColor(.red)

            } else {
                let cloned = movement.method.clone()
                if cloned.start(trainingSession, name) == nil {
                    if case let .error(err) = cloned.state {
                        cell.textLabel!.text = name
                        cell.detailTextLabel!.text = err
                        cell.textLabel?.setColor(.black)
                        cell.detailTextLabel?.setColor(.black)

                    } else {
                        cell.textLabel!.text = cloned.lbl()
                        cell.detailTextLabel!.text = cloned.subLbl()
                        let calendar = Calendar.current
                        if let completed = movement.completed[trainingSession.name], calendar.isDate(completed, inSameDayAs: Date()) {
                            cell.textLabel?.setColor(.lightGray)
                            cell.detailTextLabel?.setColor(.lightGray)
                        } else {
                            cell.textLabel?.setColor(.black)
                            cell.detailTextLabel?.setColor(.black)
                        }
                    }

                } else {
                    cell.textLabel!.text = cloned.lbl()
                    cell.detailTextLabel!.text = "Not completed"
                    cell.textLabel?.setColor(.black)
                    cell.detailTextLabel?.setColor(.black)
                }
            }
        } else {
            cell.textLabel!.text = name
            cell.detailTextLabel!.text = "Couldn't find movement '\(name)'"
            cell.textLabel?.setColor(.black)
            cell.detailTextLabel?.setColor(.black)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
        var err = ""
        
        let index = (path as NSIndexPath).item
        let filtered = trainingSession.movements.filter {!trainingSession.noncompulsory.contains($0)}
        let name = filtered[index]
        let app = UIApplication.shared.delegate as! AppDelegate
        if let movement = app.routine.findMovement(name) {
            if case .underway = movement.method.state, movement.method.on(trainingSession) {
                presentMovement(movement)

            } else {
                
                if let newMethod = movement.method.start(trainingSession, name) {
                    let newName = movement.name + "-" + newMethod.methodName
                    let newmovement = movement.withMethod(newName, newMethod)
                    app.routine.setMovement(newmovement)
                    
                    if let newerMethod = newMethod.start(trainingSession, newName) {
                        err = "Method \(movement.method.methodName) started method \(newMethod.methodName) which started \(newerMethod.methodName)"
                    } else {
                        switch newMethod.state {
                        case .error(let mesg):
                            err = mesg
                        default:
                            presentMovement(newmovement)
                        }
                    }

                } else {
                    switch movement.method.state {
                    case .error(let mesg):
                        err = mesg
                    default:
                        presentMovement(movement)
                    }
                }
            }
        }
        
        if !err.isEmpty {
            let alert = UIAlertController.init(title: "Can't start \(name).", message: err, preferredStyle: .alert)
            let action = UIAlertAction.init(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    


}

