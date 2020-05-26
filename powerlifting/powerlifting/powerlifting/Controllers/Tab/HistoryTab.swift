//  powerlifting
//
// 167682

import UIKit

class HistoryTabController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private func showBase(_ movement: Movement, _ history: [BaseResult]) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "HistoryTabID") as! HistoryController
        view.initialize(movement, "History")
        present(view, animated: true, completion: nil)
    }
    
    private func showLoaded(_ movement: Movement, _ history: [LoadResult]) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "LoadedHistoryID") as! LoadedHistory
        view.initialize(movement, "History")
        present(view, animated: true, completion: nil)
    }
    
    @IBOutlet private var tableView: UITableView!

    private var movementNames: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        reset()
        

    }

    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        reset()
    }
    
    @IBAction func unwindToHistory(_ segue:UIStoryboardSegue) {
        reset()
    }
    

    
    private func reset() {
        let app = UIApplication.shared.delegate as! AppDelegate
        movementNames = app.routine.movements.map {$0.name}
        movementNames = movementNames.filter {!$0.contains("-Rep Max")}
        movementNames.sort()
        
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movementNames.isEmpty ? 1 : movementNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCellID")!
        
        cell.backgroundColor = tableView.backgroundColor
        if movementNames.isEmpty {
            cell.textLabel!.text = "No Results"
            cell.textLabel?.textColor = UIColor.gray
        } else {
            let name = movementNames[(path as NSIndexPath).item]
            cell.textLabel!.text = name
            
            let app = UIApplication.shared.delegate as! AppDelegate
            if let movement = app.routine.movements.first(where: {$0.name == name}) {
                cell.textLabel?.textColor = movement.method.getHist().isEmpty ? UIColor.gray : UIColor.black
            } else {
                cell.textLabel?.textColor = UIColor.gray
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
        if !movementNames.isEmpty {
            let name = movementNames[(path as NSIndexPath).item]
            
            let app = UIApplication.shared.delegate as! AppDelegate
            if let movement = app.routine.movements.first(where: {$0.name == name}) {
               
                let history = movement.method.getHist()
                if let loaded = history as? [LoadResult] {
                    showLoaded(movement, loaded)
                } else {
                    showBase(movement, history)
                }
            }
        }
    }
    


}

