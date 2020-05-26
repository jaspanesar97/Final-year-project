//  powerlifting
//
// 167682

import UIKit

// like HistoryController except that it supports selecting and the accessory indicator is different
class LoadedHistory: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet private var tableView: UITableView!
    @IBOutlet private var breadcrumbLabel: UILabel!

    private var movement: Movement!
    private var breadcrumb = ""
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.reloadData()
        
            view.backgroundColor = tableView.backgroundColor
    }
    
    func initialize(_ movement: Movement, _ breadcrumb: String) {
        self.movement = movement
        self.breadcrumb = "\(breadcrumb) • \(movement.name)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        tableView.reloadData()
    }
    
 
   
    @IBAction func unwindToLoadedHistory(_ segue: UIStoryboardSegue) {
        tableView.reloadData()
    }
    
    @IBAction func donePressed(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToHistoryID", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movement.method.getHist().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LoadedHistoryCellID")!
        cell.backgroundColor = tableView.backgroundColor
        
        let results = movement.method.getHist()
        let index = results.count - path.item - 1
        cell.textLabel!.text = results[index].workingSetText
        
        let date = DateFormatter.localizedString(from: results[index].date, dateStyle: .medium, timeStyle: .short)
        cell.detailTextLabel!.text = (date)
        
        if let result = results[index] as? LoadResult {
            cell.textLabel?.textColor = result.missed ? UIColor.red : UIColor.black
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt path: IndexPath) {
        if editingStyle == .delete {
            let results = movement.method.getHist()
            let index = results.count - path.item - 1
            movement.method.deleteHist(index)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
        let results = movement.method.getHist()
        _ = results.count - path.item - 1
    }


}


