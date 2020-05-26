//  powerlifting
//
// 167682

import Foundation

fileprivate let warmup = Warmup(noPlates: 2, firstPercent: 0.6, lastPercent: 0.9, reps: [5, 5, 3])
fileprivate let warmup1 = Warmup(noPlates: 0, firstPercent: 0.75, lastPercent: 0.85, reps: [5, 3])
fileprivate let noWarmup = Warmup(noPlates: 0, firstPercent: 0.6, lastPercent: 0.9, reps: [])

fileprivate let movements = [

        olympicBar("Squat",              "Low bar Squat",  5, by: 5, warmups: warmup, restMins: 2.0),
        //squat sticking point Bottom
        olympicBar("Pause Squat",        "Pause Squat",    3, by: 5, percent: 0.65, of: "Squat", warmups:warmup, restMins:2.0),
        //squat sticking point Middle and Top
        olympicBar("Front Squat",        "Front Squat",    3, by: 5, percent: 0.65, of: "Squat", warmups:warmup, restMins:2.0),
        olympicBar("Bench Press",        "Bench Press",    5, by: 5, warmups: warmup, restMins: 2.0),
        olympicBar("Bent Over Row",      "Pendlay Row",    5, by: 5, warmups: warmup1, restMins: 2.0),
        olympicBar("Barbell Shrugs",     "Barbell Shrug",  3, by: 8, warmups: noWarmup, restMins: 2.0),
        olympicBar("Floor Press",        "Floor Press",    3, by: 5, percent: 0.65, of: "Bench Press",warmups: noWarmup, restMins: 1.0),
        
        //deadlift sticking point Middle
        olympicBar("Block Pull",         "Block Pull",     3, by: 5, percent: 0.75, of: "Deadlift", warmups: warmup, useBumpers: true, restMins: 2.0),
        olympicBar("Tricep Extensions", "Skull Crushers", 3, by: 8, warmups: noWarmup, restMins: 2.0),
        
        olympicBar("Back Extensions",   "Back Extension", 2, by: 10, warmups: noWarmup, restMins: 2.0),
        

        olympicBar("Deadlift",         "Deadlift",               1, by: 5, warmups: warmup, useBumpers: true, restMins: 2.0),
        olympicBar("OHP",              "Overhead Press",         5, by: 5, warmups: warmup, restMins: 2.0),
        olympicBar("Light Row",        "Pendlay Row",            5, by: 5, percent: 0.9, of: "Bent Over Row", warmups: warmup1, restMins: 2.0),
        //bench sticking point: Top
        olympicBar("Close-Grip Bench", "Close-Grip Bench Press", 3, by: 8, warmups: warmup, restMins: 2.0),
       
        olympicBar("Barbell Curls",    "Barbell Curl",           3, by: 8, warmups: noWarmup, restMins: 2.0),
        
        //bench sticking point at Middle
        olympicBar("Pin Press",  "Pin Press",                    3, by: 6, percent: 0.75, of: "Bench Press",warmups: warmup, restMins: 2.0),
        //bench stick Bottom
        olympicBar("Pause Bench" ,  "Pause Bench" ,                    3, by: 6, percent: 0.75, of: "Bench Press",warmups: warmup, restMins: 2.0),
        //deadlift sticking point at Top
        olympicBar("Hip Thrust",         "Hip Thrust",      3, by: 6, warmups: warmup, useBumpers: true, restMins: 2.0),
        
       //deadlift sticking point Bottom
        olympicBar("Deficit Deadlift", "Deficit Deadlift", 3, by: 5, percent: 0.65, of: "Deadlift",useBumpers: true, restMins: 2.0 )
    
]


// No sticking points for each lift
func FourDayNovice1() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: ", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Deadlift" , "Deficit Deadlift" , "OHP", "Light Row", "Bench Press", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays]

    return Routine("Novice 4 Day: Basic", trainingSessions, movements, tags)
}





//Sticking points: Squat: Bottom, bench: Bottom, Deadlift: Bottom
func  FourDayNovice2() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Thurday", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickBottom, .deadStickBottom]

    return Routine("Novice 4 Day: Bottom Bottom Bottom", trainingSessions, movements, tags)
}




//Sticking points: Squat: Bottom, bench: Middle, Deadlift: Middle
func  FourDayNovice3() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift","Block Pull", "Pause Squat", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickMiddle, .deadStickMiddle]

    return Routine("Novice 4 Day: Bottom Middle Middle", trainingSessions, movements, tags)
}







//Sticking points: Squat: Bottom, bench: Top, Deadlift: Top
func  FourDayNovice4() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", [ "Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        ]
    

    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickTop, .deadStickTop]

    return Routine("Novice 4 Day: Bottom Top Top", trainingSessions, movements, tags)
}




//Sticking points: Squat: Middle, bench: Bottom, Deadlift: Bottom
func  FourDayNovice5() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickBottom, .deadStickBottom]

    return Routine("Novice 4 Day: Middle Bottom Bottom", trainingSessions, movements, tags)
}







//Sticking points: Squat: Middle, bench: Middle, Deadlift: Middle
func  FourDayNovice6() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Deficit Deadlift", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickMiddle, .deadStickMiddle]

    return Routine("Novice 4 Day: Middle Middle Middle", trainingSessions, movements, tags)
}






//Sticking points: Squat: Middle, bench: Top, Deadlift: Top
func  FourDayNovice7() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        
        
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickTop, .deadStickTop]

    return Routine("Novice 4 Day: Middle Top Top", trainingSessions, movements, tags)
}





//Sticking points: Squat: Top, bench: Bottom, Deadlift: Bottom
func  FourDayNovice8() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickBottom, .deadStickBottom]

    return Routine("Novice 4 Day: Top Bottom Bottom", trainingSessions, movements, tags)
}






//Sticking points: Squat: Top, bench: Top, Deadlift: Top
func  FourDayNovice9() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickTop, .deadStickTop]

    return Routine("Novice 4 Day: Top Top Top", trainingSessions, movements, tags)
}







//Sticking points: Squat: Top, bench: Middle Deadlift: Middle
func  FourDayNovice10() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift" , "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickMiddle, .deadStickMiddle]

    return Routine("Novice 4 Day: Top Middle Middle", trainingSessions, movements, tags)
}



//Sticking points: Squat: Bottom, bench: Bottom, Deadlift: Middle
func  FourDayNovice12() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickBottom, .deadStickMiddle]

    return Routine("Novice 4 Day: Bottom Bottom Middle", trainingSessions, movements, tags)
}


//Sticking points: Squat: Bottom, bench: Middle, Deadlift: Bottom
func  FourDayNovice13() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Deficit Deadlift",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickMiddle, .deadStickBottom]

    return Routine("Novice 4 Day: Bottom Middle Bottom", trainingSessions, movements, tags)
}

//Sticking points: Squat: Bottom, bench: Middle, Deadlift: Top
func  FourDayNovice14() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickMiddle, .deadStickTop]

    return Routine("Novice FourDay: Bottom Middle Top", trainingSessions, movements, tags)
}

//Sticking points: Squat: Bottom, bench: Top, Deadlift: Middle
func  FourDayNovice15() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift","Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickTop, .deadStickMiddle]

    return Routine("Novice 4 Day: Bottom Top Middle", trainingSessions, movements, tags)
}

//Sticking points: Squat: Bottom, bench: Top, Deadlift: Bottom
func  FourDayNovice16() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift","Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickTop, .deadStickBottom]

    return Routine("Novice 4 Day: Bottom Top Bottom", trainingSessions, movements, tags)
}


//Sticking points: Squat: Bottom, bench: Bottom, Deadlift: Top
func  FourDayNovice17() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust",  "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Pause Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickBottom, .benchStickBottom, .deadStickTop]

    return Routine("Novice 4 Day: Bottom Bottom Top", trainingSessions, movements, tags)
}

//Sticking points: Squat: Middle, bench: Bottom, Deadlift: Bottom
func  FourDayNovice18() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Deadlift", "Deficit Deadlift" , "OHP", "Light Row", "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", [ "Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickBottom, .deadStickBottom]
   
    return Routine("Novice 4 Day: Middle Bottom Bottom", trainingSessions, movements, tags)
}


//Sticking points: Squat: Middle, bench: Bottom, Deadlift: Middle
func  FourDayNovice19() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickBottom, .deadStickMiddle]

    return Routine("Novice 4 Day: Middle Bottom Middle", trainingSessions, movements, tags)
}


//Sticking points: Squat: Middle, bench: Middle, Deadlift: Bottom
func  FourDayNovice20() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickMiddle, .deadStickBottom]
    
    return Routine("Novice 4 Day : Middle Middle Bottom", trainingSessions, movements, tags)
}


//Sticking points: Squat: Middle, bench: Top, Deadlift: Middle
func  FourDayNovice21() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickTop, .deadStickMiddle]

    return Routine("Novice 4 Day: Middle Top Middle", trainingSessions, movements, tags)
}


//Sticking points: Squat: Middle, bench: Bottom, Deadlift: Top
func  FourDayNovice22() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
       
        TrainingSession("Week 1: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
         
        TrainingSession("Week 3: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 4: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
         TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
         TrainingSession("Week 5: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         
         TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
         
         TrainingSession("Week 6: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          
          
         TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
          
         TrainingSession("Week 7: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
           
           
         TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
           
         TrainingSession("Week 8: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickBottom, .deadStickTop]

    return Routine("Novice 4 Day: Middle Bottom Top", trainingSessions, movements, tags)
}

//Sticking points: Squat: Middle, bench: Top, Deadlift: Bottom
func  FourDayNovice23() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"  ], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickTop, .deadStickBottom]

    return Routine("Novice 4 Day: Middle Top Bottom", trainingSessions, movements, tags)
}

//Sticking points: Squat: Middle, bench: Middle, Deadlift: Top
func  FourDayNovice24() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
       
        TrainingSession("Week 1: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
         
        TrainingSession("Week 3: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 4: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
         TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
         TrainingSession("Week 5: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         
         
         TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
         
         TrainingSession("Week 6: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          
          
         TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
          
         TrainingSession("Week 7: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
           
         TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
           
         TrainingSession("Week 8: Day 3", ["Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickMiddle, .benchStickMiddle, .deadStickTop]

    return Routine("Novice 4 Day: Middle Middle Top", trainingSessions, movements, tags)
}


//Sticking points: Squat: Top, bench: Bottom, Deadlift: Middle
func  FourDayNovice25() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Block Pull" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickBottom, .deadStickMiddle]

    return Routine("Novice 4 Day: Top Bottom Middle", trainingSessions, movements, tags)
}

//Sticking points: Squat: Top, bench: Middle, Deadlift: Bottom
func  FourDayNovice26() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Deficit Deadlift" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickMiddle, .deadStickBottom]
   
    return Routine("Novice 4 Day: Top Middle Bottom", trainingSessions, movements, tags)
}

//Sticking points: Squat: Top, bench: Middle, Deadlift: Top
func  FourDayNovice27() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", [ "Pin Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickMiddle, .deadStickTop]
    
    return Routine("Novice 4 Day: Top Middle Top", trainingSessions, movements, tags)
}

//Sticking points: Squat: Top, bench: Top, Deadlift: Middle
func  FourDayNovice28() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
      
        TrainingSession("Week 1: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 3: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
            
            
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
            
        TrainingSession("Week 4: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
          TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 5: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        
          TrainingSession("Week 5: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 6: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 6: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
            
            
          TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
            
          TrainingSession("Week 7: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
              
              
          TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 8: Day 2", [ "Deadlift", "Block Pull", "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
              
          TrainingSession("Week 8: Day 3", ["Close-Grip Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
        
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickTop, .deadStickMiddle]
    
    return Routine("Novice 4 Day: Top Top Middle", trainingSessions, movements, tags)
}




//Sticking points: Squat: Top, bench: Bottom, Deadlift: Top
func  FourDayNovice30() -> Routine {
 
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", [ "Deadlift", "Hip Thrust" , "OHP", "Light Row",  "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", [ "Pause Bench", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"] ,scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Front Squat", "Bench Press", "Bent Over Row", "Barbell Shrugs", "Tricep Extensions", "Barbell Curls", "Back Extensions"], scheduled: true, noncompulsory: [])
    ]
        
    
    let tags: [Routine.Tags] = [.novice, .fourDays, .squatStickTop, .benchStickBottom, .deadStickTop]
   
    return Routine("Novice 4 Day: Top Bottom Top", trainingSessions, movements, tags)
}


