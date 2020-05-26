//  powerlifting
//
// 167682


import UIKit

class RoutinesTab: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
       @IBOutlet private var stageButton: UIButton!
       @IBOutlet private var daysButton: UIButton!
       @IBOutlet private var squatButton: UIButton!
       @IBOutlet private var benchButton: UIButton!
       @IBOutlet private var deadliftButton: UIButton!
       @IBOutlet private var tableView: UITableView!
       
       private var tags: Set<Routine.Tags> = []
       private var routines: [Routine] = []
    
    
    private func createAlert(_ noTag: String, _ tags: [Routine.Tags]) -> UIAlertController {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        var action = UIAlertAction(title: noTag, style: .default) {_ in
            for t in tags {
                self.tags.remove(t)
            }
            self.updateUI()
        }
        alert.addAction(action)
        
        for tag in tags {
            action = UIAlertAction(title: tagToString(tag), style: .default) {_ in
                for t in tags {
                    self.tags.remove(t)
                }
                self.tags.insert(tag)
                self.updateUI()
            }
            alert.addAction(action)
            if self.tags.contains(tag) {
                alert.preferredAction = action
            }
        }
        
        return alert
    }
    
    private func updateUI() {
        var experienceText = "Select Experience Level"
        var daysText = "Select Number of Days"
        var squatText = "Select Squat Sticking Point"
        var benchText = "Select Bench Sticking Point"
        var deadliftText = "Select Deadlift Sticking Point"
        
      
        
        for tag in tags {
            switch tag {
            case .novice:
                experienceText = tagToString(tag)
            case .intermediate:
                experienceText = tagToString(tag)
          
                
            //number of trainng days
            case .threeDays:
                daysText = tagToString(tag)
            case .fourDays:
                daysText = tagToString(tag)
            case .fiveDays:
                daysText = tagToString(tag)
            
                
            //Squat sticking point
            case .squatStickBottom:
                squatText = tagToString(tag)
            case .squatStickMiddle:
                squatText = tagToString(tag)
            case .squatStickTop:
                squatText = tagToString(tag)
          
            //bench sticking point
            case .benchStickBottom:
                benchText = tagToString(tag)
            case .benchStickMiddle:
                benchText = tagToString(tag)
            case .benchStickTop:
                benchText = tagToString(tag)
            
            //deadlift sticking point
            case .deadStickBottom:
                deadliftText = tagToString(tag)
            case .deadStickMiddle:
                deadliftText = tagToString(tag)
            case  .deadStickTop:
                deadliftText = tagToString(tag)  
          
            
            }
        }
        
        stageButton.setTitle(experienceText , for: .normal)
        daysButton.setTitle(daysText , for: .normal)
        squatButton.setTitle(squatText, for: .normal)
        benchButton.setTitle(benchText, for: .normal)
        deadliftButton.setTitle(deadliftText , for: .normal)
        
        let app = UIApplication.shared.delegate as! AppDelegate
        routines = app.routines.filter {$0.tags.isSuperset(of: tags)}
        tableView.reloadData()
    }
    
    private func tagToString(_ tag: Routine.Tags) -> String {
        switch tag {
        //experience level
        case .novice:
            return "Novice (Less than a year)"
        case .intermediate:
            return "Intermediate (Over a year)"
        
        //training days per week
        case .threeDays:
            return "3 Days per week"
        case .fourDays:
            return "4 Days per week"
        case .fiveDays:
            return "5 Days per week"
       
        
        //Squat sticking point
        case .squatStickBottom:
            return "Squat Sticking Point: Bottom"
        case .squatStickMiddle:
            return "Squat Sticking Point: Middle"
        case .squatStickTop:
            return "Squat Sticking Point: Top"
            
        //bench sticking point
        case .benchStickBottom:
            return "Bench Sticking Point: Bottom"
        case .benchStickMiddle:
            return "Bench Sticking Point: Middle"
        case .benchStickTop:
            return "Bench Sticking Point: Top"
            
            
        //deadlift sticking point
        case .deadStickBottom:
            return "Deadlift Sticking Point: Bottom"
        case .deadStickMiddle:
            return "Deadlift Sticking Point: Middle"
        case .deadStickTop:
            return "Deadlift Sticking Point: Top"
       
        }
    }
    
    private func stringToTag(_ str: String) -> Routine.Tags {
        switch str {
        //experience level
        case "novice":
            return .novice
        case "Intermediate":
            return .intermediate
        
        //training days per week
        case "3 Days/Week":
            return .threeDays
        case "4 Days/Week":
            return .fourDays
        case "5 Days/Week":
            return .fiveDays
       
        
        //squat sticking point
        case "Squat Sticking Point: Bottom":
            return .squatStickBottom
        case "Squat Sticking Point: Middle":
            return .squatStickMiddle
        case "Squat Sticking Point: Top":
            return .squatStickTop

        //bench sticking point
        case "Bench Sticking Point: Bottom":
            return .benchStickBottom
        case "Bench Sticking Point: Middle":
            return .benchStickMiddle
        case "Bench Sticking Point: Top":
            return .benchStickTop
        
            
        //dead sticking point
        case "Deadlift Sticking Point: Bottom":
            return .deadStickBottom
        case "Deadlift Sticking Point: Middle":
            return .deadStickMiddle
        case "Deadlift Sticking Point: Top":
            return .deadStickTop
      
        default: frontend.assert(false, "\(str) is an unknown tag"); abort()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        let a = Array(tags.map {tagToString($0)})
        coder.encode(a, forKey: "tags.tags")

        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)

        let a = coder.decodeObject(forKey: "tags.tags") as! [String]
        tags = Set(Array(a.map {stringToTag($0)}))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    
    @IBAction func unwindToTags(_ segue:UIStoryboardSegue) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routines.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt path: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TagsCellID")!
        cell.backgroundColor = tableView.backgroundColor
        
        let index = path.item
        cell.textLabel!.text = routines[index].name
       
        let app = UIApplication.shared.delegate as! AppDelegate
        //colour of current Routine
        let color = routines[index].name == app.routine.name ? UIColor.blue : UIColor.black
        cell.textLabel!.setColor(color)
        
        let tags = routines[index].tags.map {tagToString($0)}
        cell.detailTextLabel!.text = tags.joined(separator: ", ")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt path: IndexPath) {
        let index = path.item
        let app = UIApplication.shared.delegate as! AppDelegate
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let routine = routines[index]
        
        var action = UIAlertAction(title: "Back", style: .destructive) {_ in
           
        }
        alert.addAction(action)
        
        if routines[index].name != app.routine.name {
            action = UIAlertAction(title: "Start Routine", style: .default) {_ in
                self.beginRoutine(routine)
                self.tableView.reloadData()
            }
            alert.addAction(action)
        }
        
     

        self.present(alert, animated: true, completion: nil)
    }

    
    private func beginRoutine(_ routine: Routine) {
        let app = UIApplication.shared.delegate as! AppDelegate
        app.changeRoutine(routine)
        tableView.reloadData()
    }
    
    @IBAction func experiencePressed(_ sender: Any) {
        
        let alert = createAlert("Select Experience Level", [.novice, .intermediate])
        self.present(alert, animated: true, completion: nil)
    }
    
    //numbers of days
    @IBAction func daysPressed(_ sender: Any) {
        let alert = createAlert("Select Number of Days", [.threeDays, .fourDays, .fiveDays])
        self.present(alert, animated: true, completion: nil)
    }
    
    //squat sticking point
    @IBAction func squatStickingPressed(_ sender: Any) {
        let alert = createAlert("Select Squat Sticking Point", [.squatStickBottom, .squatStickMiddle, .squatStickTop])
        self.present(alert, animated: true, completion: nil)
    }
    
    //bench sticking point
    @IBAction func benchStickingPressed(_ sender: Any) {
        let alert = createAlert("Select Bench Sticking Point", [ .benchStickBottom, .benchStickMiddle, .benchStickTop])
        self.present(alert, animated: true, completion: nil)
    }
    
    //dead sticking point
    @IBAction func deadStickingPressed(_ sender: Any) {
        let alert = createAlert("Select Deadlift Sticking Point", [ .deadStickBottom, .deadStickMiddle, .deadStickTop])
        self.present(alert, animated: true, completion: nil)
    }
    

}

