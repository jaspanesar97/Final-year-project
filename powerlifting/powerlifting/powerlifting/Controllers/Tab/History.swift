//  powerlifting
//
// 167682

import UIKit

class HistoryController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var breadcrumbLabel: UILabel!

    private var movement: Movement!
    private var breadcrumb = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.reloadData()
    }
    
    func initialize(_ movement: Movement, _ breadcrumb: String) {
        self.movement = movement
        self.breadcrumb = "\(breadcrumb) • \(movement.name)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
   
        tableView.reloadData()
    }
    

    
    @IBAction func donePressed(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToHistoryID", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movement.method.getHist().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCellID")!
        cell.backgroundColor = tableView.backgroundColor
        
        let items = movement.method.getHist()
        let index = items.count - path.item - 1
        cell.textLabel!.text = items[index].workingSetText

        let date = DateFormatter.localizedString(from: items[index].date, dateStyle: .medium, timeStyle: .short)
        cell.detailTextLabel!.text = "\(index): \(date)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt path: IndexPath) {
        if editingStyle == .delete {
            let items = movement.method.getHist()
            let index = items.count - path.item - 1
            movement.method.deleteHist(index)
            tableView.reloadData()
        }
    }
        

}

