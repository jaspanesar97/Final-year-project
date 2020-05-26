//  powerlifting
//
// 167682


import UIKit
import os.log

class MovementController: UIViewController {
    
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var breadcrumbLabel: UILabel!
    @IBOutlet private var subtitleLabel: UILabel!
    @IBOutlet private var amountLabel: UILabel!
    @IBOutlet private var detailsLabel: UILabel!
    @IBOutlet private var secsLabel: UILabel!
    @IBOutlet private var previousLabel: UILabel!
    @IBOutlet private var historyLabel: UILabel!
    @IBOutlet private var nextButton: UIButton!
    @IBOutlet private var startTimerButton: UIButton!
    @IBOutlet private var resetButton: UIBarButtonItem!
   
   
    
    private var timer: Timer? = nil
    private var startTime = Date()
    private var originalColor: UIColor? = nil

    private var trainingSession: TrainingSession!
    private var movement: Movement!
    private var unwindTo: String!
    
    private var startedTimer = false
    private var breadcrumb = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func initialize(_ trainingSession: TrainingSession, _ movement: Movement, _ breadcrumb: String, _ unwindTo: String) {
        self.trainingSession = trainingSession
        self.movement = movement
        self.unwindTo = unwindTo
        self.breadcrumb = "\(breadcrumb) - \(movement.name)"

        self.startedTimer = false
    }
    
    override func encodeRestorableState(with coder: NSCoder) {
        coder.encode(breadcrumb, forKey: "breadcrumb")
        coder.encode(unwindTo, forKey: "unwindTo")
        coder.encode(trainingSession.name, forKey: "trainingSession.name")
        coder.encode(movement.name, forKey: "movement.name")
        
        coder.encode(startTime, forKey: "startTime")
        coder.encode(timer != nil, forKey: "timerRunning")
        coder.encode(startedTimer, forKey: "startedTimer")
        
        super.encodeRestorableState(with: coder)
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        print("decode state")
        let app = UIApplication.shared.delegate as! AppDelegate
        breadcrumb = coder.decodeObject(forKey: "breadcrumb") as! String
        //unwindTo = coder.decodeObject(forKey: "unwindTo") as! String
        
        var name = coder.decodeObject(forKey: "trainingSession.name") as! String
        if let w = app.routine.findTrainingSession(name) {
            trainingSession = w
        } else {
            os_log("couldn't load trainingSession '%@' for routine '%@'", type: .error, name, app.routine.name)
        }
        
        name = coder.decodeObject(forKey: "movement.name") as! String
        if let e = app.routine.findMovement(name) {
            movement = e
        } else {
            os_log("couldn't load movement '%@' for routine '%@'", type: .error, name, app.routine.name)
        }

        if let date = coder.decodeObject(forKey: "startTime") as? Date {
            startTime = date
            startedTimer = coder.decodeBool(forKey: "startedTimer")
            let timerRunning = coder.decodeBool(forKey: "timerRunning")
            
            if startedTimer && timerRunning && movement.method.restSecs().secs > 0 {
                startTimer(force: true)
            }
        }
        

        super.decodeRestorableState(with: coder)
    }
    
    override func applicationFinishedRestoringState() {
    }
    


    private func updateUI() {
        let current = movement.method.curr()
        titleLabel.text = current.workingSetText
        subtitleLabel.text = current.percentOfText
        amountLabel.text = current.weightRepsText
        detailsLabel.text = current.loadOnBarText
        
        
        if current.color != nil {
           
            view.backgroundColor = originalColor
        }
    

        if case .finished = movement.method.state {
            nextButton.setTitle("All Done", for: .normal)
            startTimerButton.isHidden = false
        } else {
            nextButton.setTitle(current.buttonName, for: .normal)
            startTimerButton.isHidden = !current.showStartButton
        }

        let (label, color) = movement.method.prvLbl()
        previousLabel.text = label
        previousLabel.textColor = color
        historyLabel.text = movement.method.histLbl()

        if case .underway = movement.method.state {
            resetButton.isEnabled = true
        } else {
            resetButton.isEnabled = false
        }
        startTimerButton.isEnabled = movement.method.restSecs().secs > 0

        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
  
        titleLabel.font = UIFont.systemFont(ofSize: 45)
        subtitleLabel.font = UIFont.systemFont(ofSize: 18)
        amountLabel.font = UIFont.systemFont(ofSize: 28)
        detailsLabel.font = UIFont.systemFont(ofSize: 28)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        breadcrumbLabel.text = breadcrumb
        originalColor = view.backgroundColor
        
        updateUI()
       
        secsLabel.isHidden = timer == nil

        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
     
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        


        
    }
    
    @IBAction func unwindToMovement(_ segue: UIStoryboardSegue) {
       
        movement.method.refresh()
        updateUI()
        
        let app = UIApplication.shared.delegate as! AppDelegate
        app.saveMovement(movement.name)
    }
    
    @IBAction func nextPressed(_ sender: Any) {

        if timer != nil {
            stopTimer(manual: (sender as? Method) == nil)
        }
        
        if case .finished = movement.method.state {
            self.performSegue(withIdentifier: unwindTo, sender: self)
        } else {
            switch movement.method.completions() {
            case .normal(let results):
                if results.count == 1 {
                    results[0].callback()
                    handleNext("default")
                } else {
                    let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
                    
                    for result in results {
                        let action = UIAlertAction(title: result.workingSetText, style: .default) {_ in result.callback(); self.handleNext(result.workingSetText)}
                        alert.addAction(action)
                        if result.isDefault {
                            alert.preferredAction = action
                        }
                    }
                    
                    self.present(alert, animated: true, completion: nil)
                }

            }
        }
    }
    
    private func handleNext(_ action: String) {
        if case .finished = movement.method.state {
            updateUI()
            maybeStartTimer()
        } else {
            fadeOut {self.updateUI(); self.maybeStartTimer()}
        }
    }
    
    private func maybeStartTimer() {
        let rest = movement.method.restSecs()
        if rest.autoStart && rest.secs > 0 {
            startTimer(force: false)
            startedTimer = true
        }
    }
    
    @IBAction func startTimerPressed(_ sender: Any) {
        if timer != nil {
            stopTimer(manual: true)
        } else {
            startTime = Date()
            startTimer(force: true)
        }
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        //dismissTooltip()
        
        stopTimer(manual: true)
        movement.method.restart()
        self.startedTimer = false
        updateUI()
    }
    


    

    
    private func startTimer(force: Bool) {
        let restSecs = movement.method.restSecs().secs
        if timer == nil && (restSecs > 0 || force) {
            let secs = Double(restSecs) - Date().timeIntervalSince(startTime)
            if !force || secs <= 0.0 || secs >= Double(restSecs) {
                startTime = Date()
            }
            
            secsLabel.text = ""
            secsLabel.isHidden = false
            timer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(MovementController.timerFired(_:)), userInfo: nil, repeats: true)
            
       
            
            nextButton.isHidden = true
            UIApplication.shared.isIdleTimerDisabled = true
        }
        
        startTimerButton.setTitle("End Rest Break", for: UIControl.State())
        startTimerButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    }
    
    private func stopTimer(manual: Bool) {
        if let t = timer {
            secsLabel.isHidden = true
            t.invalidate()
            timer = nil
            nextButton.isHidden = false
        
            UIApplication.shared.isIdleTimerDisabled = false
        }
        
        startTimerButton.setTitle("", for: UIControl.State())
        startTimerButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        if manual {
          
        }
    }
    
   
    @objc func timerFired(_ sender: AnyObject) {
        if UIApplication.shared.applicationState == .active {
            let secs = Double(movement.method.restSecs().secs) - Date().timeIntervalSince(startTime)
            
           
            if secs <= 0.0 {
                return
            } else if updateTimerLabel(secsLabel, secs) {
                
                stopTimer(manual: false)
            }
        }
    }
    
    func updateTimerLabel(_ label: UILabel, _ secs: Double) -> Bool {
        if secs >= 0.0 {
            label.text = secsToShortDurationName(secs)
            label.textColor = UIColor.red
            return false
        }
   
        return true
    }
    
    private var currentAnimator: NSObject? = nil
    
    func animationDuration() -> Double {
        let duration = 0.25
        return duration
    }
    
    private func fadeOut(_ callback: @escaping () -> Void) {
        if #available(iOS 12.0, *) {
            let timing = UICubicTimingParameters(animationCurve: .easeIn)
            let animator = UIViewPropertyAnimator(duration: animationDuration(), timingParameters: timing)
            animator.addAnimations {self.nextButton.alpha = 0.0; self.titleLabel.alpha = 0.0; self.subtitleLabel.alpha = 0.0; self.amountLabel.alpha = 0.0; self.detailsLabel.alpha = 0.0}
            animator.addCompletion {_ in callback(); self.fadeIn()}
            animator.startAnimation()
            
            currentAnimator = animator
        } else {
            callback()
        }
    }
    
    private func fadeIn() {
        if #available(iOS 12.0, *) {
            let timing = UICubicTimingParameters(animationCurve: .easeOut)
            let animator = UIViewPropertyAnimator(duration: animationDuration(), timingParameters: timing)
            animator.addAnimations {self.nextButton.alpha = 1.0; self.titleLabel.alpha = 1.0; self.subtitleLabel.alpha = 1.0; self.amountLabel.alpha = 1.0; self.detailsLabel.alpha = 1.0}
            animator.startAnimation()
            
            currentAnimator = animator  
        }
    }
    
  

}

