//  powerlifting
//
// 167682

import UIKit

class TrainingSessionOptionsController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var breadcrumbLabel: UILabel!
    
    private var trainingSession: TrainingSession!
    private var newOptional: [String] = []
    private var breadcrumb = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.reloadData()
        
      
    }
    
    func initialize(_ trainingSession: TrainingSession, _ breadcrumb: String) {
        self.trainingSession = trainingSession
        self.newOptional = Array(trainingSession.noncompulsory)
        self.breadcrumb = "\(breadcrumb) • Options"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    

    
    @IBAction func donePressed(_ sender: Any) {
        trainingSession.noncompulsory = newOptional

        let app = UIApplication.shared.delegate as! AppDelegate
        app.saveRoutine()
        
        self.performSegue(withIdentifier: "unwindToTrainingSessionID", sender: self)
    }
    
    @IBAction func cancelPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "unwindToTrainingSessionID", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trainingSession.movements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrainingSessionOptionsCellID")!
        cell.backgroundColor = tableView.backgroundColor
        
        let index = path.item
        let name = trainingSession.movements[index]
        
        if newOptional.contains(name) {
            cell.textLabel!.text = "\(name) (Removed)"
            cell.textLabel!.setColor(UIColor.gray)
        } else {
            cell.textLabel!.text = name
            cell.textLabel!.setColor(UIColor.black)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
        let index = path.item
        let name = trainingSession.movements[index]
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        var action: UIAlertAction
        if newOptional.contains(name) {
            action = UIAlertAction(title: "Add", style: .default) {_ in
                if let i = self.newOptional.firstIndex(of: name) {
                    self.newOptional.remove(at: i)
                    tableView.reloadData()
                }
            }
            alert.addAction(action)
        } else {
            action = UIAlertAction(title: "Remove", style: .default) {_ in
                self.newOptional.append(name)
                tableView.reloadData()
            }
            alert.addAction(action)
        }
        
        action = UIAlertAction(title: "Cancel", style: .cancel) {_ in }
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }


}


