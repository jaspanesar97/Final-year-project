//  powerlifting
//
// 167682

import UIKit
import os.log

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, FrontEnd {
    
    
    var window: UIWindow?
   
    var routine: Routine!
    
    override init() {
        super.init()
        frontend = self
        
        let path = getPath(fileName: "routine_name")
        if let name = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? String {
            routine = loadRoutine(name)
        }
        
        if routine == nil {
            os_log("failed to load routine from %@", type: .info, path)
            routine = ThreeDayNovice1()
        }
        
        
        for i in routines {
            let problems = i.errors()
            for j in problems {
                os_log("%@", type: .error, j)
            }
            self.assert(problems.isEmpty, "\(i.name) has errors")
        }
    }
    
    private func runLoaded(_ method: Method, noTrainingSession: Int = 10, defaultLoad: Int = 4) {
        let trainingSession = TrainingSession("default trainingSession", ["default movement"], scheduled: true)
        let equipment = Equipment.olympicBar(bar: 20, collar: 0, plates: availablePlates(), bumperPlates: [], microPlates: [])
        let setting = VariableLoadSetting(equipment, restSecs: 60)
        let movement = Movement("default movement", "default", method, .variableLoad(setting))
        setting.changeLoad(100, byUser: false)
        runNonDefaultMethod(method, trainingSession, movement, noTrainingSession: noTrainingSession, defaultLoad: defaultLoad)
       
    }
    
    private func shouldRestoreCurrentTrainingSession() -> Bool {
        let now = Date.init()
        
        for trainingSession in routine.trainingSessions {
            if let candidate = dateTrainingSessionWasCompleted(trainingSession) {
                let hours = now.hoursSinceDate(candidate.0)
                if hours < 4 {
                    return true
                }
            }
        }
        
        return false
    }
    
    private func loadRoutine(_ name: String) -> Routine? {

        let path = getPath(fileName: routinePrefix + name)
        if let data = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? Data {
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .secondsSince1970
                let store = try decoder.decode(Store.self, from: data)

                let savedRoutine = Routine(from: store)
                if let builtin = routines.first(where: {$0.name == savedRoutine.name}) {
                    os_log("syncing %@", type: .info, builtin.name)
                    builtin.sync(savedRoutine)
                    return builtin
                } else {
                    return savedRoutine
                }
            } catch {
                os_log("failed to decode routine from %@: %@", type: .error, path, error.localizedDescription)
            }
        } else {
            os_log("failed to unarchive routine from %@", type: .error, path)
        }
        return nil
    }
    
    private func saveRoutine(_ routine: Routine) {
        var path = getPath(fileName: "routine_name")
        saveObject(routine.name as AnyObject, path)

        path = getPath(fileName: routinePrefix + routine.name)
        let store = Store()
        routine.save(store)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        
        do {
            let data = try encoder.encode(store)
            saveObject(data as AnyObject, path)
        } catch {
            os_log("Error encoding routine %@: %@", type: .error, routine.name, error.localizedDescription)
        }
    }
    
    private func saveObject(_ object: AnyObject, _ path: String)
    {
        if NSKeyedArchiver.archiveRootObject(object, toFile: path) {
            
        } else {
            os_log("failed to save to %@", type: .error, path)
        }
    }
    
    private func getPath(fileName: String) -> String {
        let dirs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let dir = dirs.first!
        let name = fileName
        let url = dir.appendingPathComponent("\(name).archive")
        return url.path
    }
    


    let routines = [
    ThreeDayNovice1(),ThreeDayNovice2(),ThreeDayNovice3(),ThreeDayNovice4(),ThreeDayNovice5(),ThreeDayNovice6(),ThreeDayNovice7(),ThreeDayNovice8(),ThreeDayNovice9(),ThreeDayNovice10(),ThreeDayNovice12(),ThreeDayNovice13(),ThreeDayNovice14(),ThreeDayNovice15(),ThreeDayNovice16(),ThreeDayNovice17(),ThreeDayNovice18(),ThreeDayNovice19(),ThreeDayNovice20(),ThreeDayNovice21(),ThreeDayNovice22(),ThreeDayNovice23(),ThreeDayNovice24(),ThreeDayNovice25(),ThreeDayNovice26(),ThreeDayNovice27(),ThreeDayNovice28(),ThreeDayNovice30(),
        FourDayNovice1(), FourDayNovice2(), FourDayNovice3(), FourDayNovice4(), FourDayNovice5(), FourDayNovice6(), FourDayNovice7(), FourDayNovice8(), FourDayNovice9(),
        FourDayNovice10(), FourDayNovice12(), FourDayNovice13(), FourDayNovice14(), FourDayNovice15(), FourDayNovice16(), FourDayNovice17(), FourDayNovice18(),FourDayNovice19(), FourDayNovice20(), FourDayNovice21(), FourDayNovice22(), FourDayNovice23(), FourDayNovice24(), FourDayNovice25(), FourDayNovice26(), FourDayNovice27(), FourDayNovice28(),  FourDayNovice30(),
        FiveDayNovice1(),FiveDayNovice2(), FiveDayNovice3(),FiveDayNovice4(),FiveDayNovice5(),FiveDayNovice6(),FiveDayNovice7(),FiveDayNovice8(),FiveDayNovice9(),FiveDayNovice10(),FiveDayNovice12(),FiveDayNovice13(),FiveDayNovice14(),FiveDayNovice15(),FiveDayNovice16(),FiveDayNovice17(),FiveDayNovice18(),FiveDayNovice19(),FiveDayNovice20(),FiveDayNovice21(),FiveDayNovice22(),FiveDayNovice23(),FiveDayNovice24(),FiveDayNovice25(),FiveDayNovice26(),FiveDayNovice27(),FiveDayNovice28(),FiveDayNovice30(),
        ThreeDayIntermediate1(),ThreeDayIntermediate2(),ThreeDayIntermediate3(),ThreeDayIntermediate4(),ThreeDayIntermediate5(),ThreeDayIntermediate6(),ThreeDayIntermediate7(),ThreeDayIntermediate8(),ThreeDayIntermediate9(),ThreeDayIntermediate10(),ThreeDayIntermediate11(),ThreeDayIntermediate12(),ThreeDayIntermediate13(),ThreeDayIntermediate14(),ThreeDayIntermediate15(),ThreeDayIntermediate16(),ThreeDayIntermediate17(),ThreeDayIntermediate18(),ThreeDayIntermediate19(),ThreeDayIntermediate20(),ThreeDayIntermediate21(),ThreeDayIntermediate22(),ThreeDayIntermediate23(),ThreeDayIntermediate24(),ThreeDayIntermediate25(),ThreeDayIntermediate26(),ThreeDayIntermediate27(),ThreeDayIntermediate28(),
    FourDayIntermediate1(),FourDayIntermediate2(),FourDayIntermediate3(),FourDayIntermediate4(),FourDayIntermediate5(),FourDayIntermediate6(),FourDayIntermediate7(),FourDayIntermediate8(),FourDayIntermediate9(),FourDayIntermediate10(),FourDayIntermediate11(),FourDayIntermediate12(),FourDayIntermediate13(),FourDayIntermediate14(),FourDayIntermediate15(),FourDayIntermediate16(),FourDayIntermediate17(),FourDayIntermediate18(),FourDayIntermediate19(),FourDayIntermediate20(),FourDayIntermediate20(),FourDayIntermediate21(),FourDayIntermediate22(),FourDayIntermediate23(),FourDayIntermediate24(),FourDayIntermediate25(),FourDayIntermediate26(),FourDayIntermediate27(),FourDayIntermediate28(),
        FiveDayIntermediate1(),FiveDayIntermediate2(),FiveDayIntermediate4(),FiveDayIntermediate5(),FiveDayIntermediate6(),FiveDayIntermediate7(),FiveDayIntermediate8(),FiveDayIntermediate9(),FiveDayIntermediate10(),FiveDayIntermediate11(),FiveDayIntermediate12(),FiveDayIntermediate13(),FiveDayIntermediate14(),FiveDayIntermediate15(),FiveDayIntermediate16(),FiveDayIntermediate17(),FiveDayIntermediate18(),FiveDayIntermediate19(),FiveDayIntermediate20(),FiveDayIntermediate21(),FiveDayIntermediate22(),FiveDayIntermediate23(),FiveDayIntermediate24(),FiveDayIntermediate24(),FiveDayIntermediate24(),FiveDayIntermediate25(),FiveDayIntermediate26(),FiveDayIntermediate27(),FiveDayIntermediate28()]

    func changeRoutine(_ routine: Routine) {
        if let newRoutine = loadRoutine(routine.name) {
            self.routine = newRoutine
        } else {
            self.routine = routine
        }
    }
    
    func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool {
        // If there is more than one trainingSession then,
        if routine.trainingSessions.count > 1 {
            // only restore if we think the user is probably still on the same trainingSession.
            return shouldRestoreCurrentTrainingSession()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
         os_log("applicationWillResignActive")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
  
        saveRoutine(routine)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        os_log("applicationWillEnterForeground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        os_log("applicationDidBecomeActive")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
       os_log("applicationWillTerminate")
    }
    
    func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool {
        return true
    }
    
    func saveRoutine() {
        saveRoutine(routine)
    }
    
    func saveMovement(_ name: String) {
        saveRoutine(routine)
    }
    
    func findTrainingSession(_ name: String) -> TrainingSession? {
        return routine.findTrainingSession(name)
    }

    func findMovement(_ name: String) -> Movement? {
        return routine.findMovement(name)
    }

    func dateTrainingSessionWasCompleted(_ trainingSession: TrainingSession) -> (Date, Bool)? {
        func dateTrainingSessionWasLastCompleted() -> Date? {
            var date: Date? = nil
            
            for name in trainingSession.movements {
                if let movement = routine.findMovement(name), !trainingSession.noncompulsory.contains(name) {
                    if let completed = movement.completed[trainingSession.name] {
                        if date == nil || completed.compare(date!) == .orderedDescending {
                            date = completed
                        }
                    }
                }
            }
            return date
        }
        
        let date: Date? = dateTrainingSessionWasLastCompleted()
        
        var somewhat = false
        if let latest = date {
            let calendar = Calendar.current
            for name in trainingSession.movements {
                if let movement = routine.findMovement(name), !trainingSession.noncompulsory.contains(name) {
                    if let completed = movement.completed[trainingSession.name] {
                        if !calendar.isDate(completed, inSameDayAs: latest) {
                            somewhat = true
                        }
                    } else {
                        somewhat = true
                    }
                }
            }
        }
        
        return date !=  nil ? (date!, somewhat) : nil
    }
    
    func assert(_ predicate: Bool, _ message: String) {
        if !predicate {
            var controller = self.window?.rootViewController
            while let next = controller?.presentedViewController {
                controller = next
            }
            
            if controller != nil {
                let alert = UIAlertController(title: "Assertion failed", message: message, preferredStyle: .actionSheet)
                
                let action = UIAlertAction(title: "OK", style: .default, handler: {(_) in Swift.assert(false, message)})
                alert.addAction(action)
                
                controller!.present(alert, animated: true, completion:nil)
            } else {
                Swift.assert(false, message)
            }
        }
    }
     let routinePrefix = "routine"

}
