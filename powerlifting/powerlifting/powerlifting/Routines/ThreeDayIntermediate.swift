//  powerlifting
//
// 167682

import Foundation




fileprivate let warmup = Warmup(noPlates: 1, firstPercent: 0.5, lastPercent: 0.9, reps: [8, 6, 3])

fileprivate let noWarmup = Warmup(noPlates: 0, firstPercent: 0.6, lastPercent: 0.9, reps: [])

fileprivate  let movements = [
       olympicBar("Deadlift",         "Deadlift",            1, topSet: 5, warmups: warmup, useBumpers: true, restMins: 2.0),
       olympicBar("Face Down Row", "Face Down Row",    3, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Hammer Curls",    "Hammer Curls",        4, by:12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Barbell Curls",  "Concentration Curls", 4, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Bench Press",             "Bench Press",             5, topSet: 5, warmups: warmup, restMins: 2.0),
       olympicBar("Overhead Press",                     "Overhead Press",          5, topSet: 5, warmups: warmup, restMins: 2.0),
       olympicBar("Barbell Incline Press", "Barbell Incline Press",  3, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Triceps Extension",        "Triceps Extension", 3, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Side Lateral Raise",       "Side Lateral Raise",    3, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Triceps Press",          "Seated Triceps Press",    3, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Squat",             "Low bar Squat",        3, topSet: 5, warmups: warmup, restMins: 2.0),
       olympicBar("Romanian Deadlift", "Romanian Deadlift",    3, by: 12, warmups: noWarmup, restMins: 2.0),
       plateLoadedMachine("Leg Press",    "Leg Press",            3, by: 12, warmups: noWarmup, restMins: 2.0),
       olympicBar("Leg Curls",         "Seated Leg Curl",      3, by: 12, warmups: noWarmup, restMins: 2.0),
       plateLoadedMachine("Calf Raises",  "Standing Calf Raises", 3, by: 12, warmups: noWarmup, restMins: 2.0),

      //bench sticking point at Middle
      olympicBar("Pin Press",  "Pin Press",                    3, by: 6, percent: 0.75, of: "Bench Press",warmups: warmup, restMins: 2.0),
      //bench stick Bottom
      olympicBar("Pause Bench" ,  "Pause Bench" ,                    3, by: 6, percent: 0.75, of: "Bench Press",warmups: warmup, restMins: 2.0),
      //deadlift sticking point at Top
      olympicBar("Hip Thrust",         "Hip Thrust",      3, by: 6, warmups: warmup, useBumpers: true, restMins: 2.0),
      
     //deadlift sticking point Bottom
      olympicBar("Deficit Deadlift", "Deficit Deadlift", 3, by: 5, percent: 0.65, of: "Deadlift",useBumpers: true, restMins: 2.0 ),
      //deadlift sticking point Middle
      olympicBar("Block Pull",         "Block Pull",     3, by: 5, percent: 0.75, of: "Deadlift", warmups: warmup, useBumpers: true, restMins: 2.0),
      
      //squat sticking point Bottom
      olympicBar("Pause Squat",        "Pause Squat",    3, by: 5, percent: 0.65, of: "Squat", warmups:warmup, restMins:2.0),
      //squat sticking point Middle and Top
      olympicBar("Front Squat",        "Front Squat",    3, by: 5, percent: 0.65, of: "Squat", warmups:warmup, restMins:2.0),
      //bench sticking point: Top
      olympicBar("Close-Grip Bench", "Close-Grip Bench Press", 3, by: 8, warmups: warmup, restMins: 2.0)
]

func ThreeDayIntermediate1() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays]
    
    return Routine("Intermediate 3 Day: Basic", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Bottom, dead Bottom
func ThreeDayIntermediate2() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
    
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
    
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
        
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom, .benchStickBottom, .deadStickBottom]

    return Routine("Intermediate 3 Day: Bottom Bottom Bottom", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Middle, dead Middle
func ThreeDayIntermediate3() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom,.benchStickMiddle,.deadStickMiddle]

    return Routine("Intermediate 3 Day: Bottom Middle Middle", trainingSessions, movements, tags)
}


//squat stick: Bottom, bench Bottom, dead Middle
func ThreeDayIntermediate4() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom,.benchStickBottom,.deadStickMiddle]

    return Routine("Intermediate 3 Day: Bottom Bottom Middle", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Middle, dead Bottom
func ThreeDayIntermediate5() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom,.benchStickMiddle,.deadStickBottom]

    return Routine("Intermediate 3 Day: Bottom Middle Bottom", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Top, dead Top
func ThreeDayIntermediate6() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom, .benchStickTop, .deadStickTop]

    return Routine("Intermediate 3 Day: Bottom Top Top", trainingSessions, movements, tags)
}


//squat stick: Bottom, bench Middle, dead Top
func ThreeDayIntermediate7() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom, .benchStickMiddle, .deadStickTop]

    return Routine("Intermediate 3 Day: Bottom Middle Top", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Top, dead Middle
func ThreeDayIntermediate8() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom, .benchStickTop, .deadStickMiddle]

    return Routine("Intermediate 3 Day: Bottom Top Middle", trainingSessions, movements, tags)
}


//squat stick: Bottom, bench Top, dead Bottom
func ThreeDayIntermediate9() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom, .benchStickTop, .deadStickBottom]

    return Routine("Intermediate 3 Day: Bottom Top Bottom", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Bottom, dead Top
func ThreeDayIntermediate10() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickBottom,.benchStickBottom,.deadStickTop]
 
    return Routine("Intermediate 3 Day: Bottom Bottom Top", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Bottom, dead Bottom
func ThreeDayIntermediate11() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickBottom,.deadStickBottom]

    return Routine("Intermediate 3 Day: Middle Bottom Bottom", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Bottom, dead Middle
func ThreeDayIntermediate12() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickBottom,.deadStickMiddle]

    return Routine("Intermediate 3 Day: Middle Bottom Middle", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Middle, dead Bottom
func ThreeDayIntermediate13() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickMiddle,.deadStickBottom]
  
    return Routine("Intermediate 3 Day: Middle Middle Bottom", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Middle, dead Middle
func ThreeDayIntermediate14() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickMiddle,.deadStickMiddle]

    return Routine("Intermediate 3 Day: Middle Middle Middle", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Top, dead Middle
func ThreeDayIntermediate15() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickTop,.deadStickMiddle]
   
    return Routine("Intermediate 3 Day: Middle Top Middle", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Top, dead Top
func ThreeDayIntermediate16() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickTop,.deadStickTop]
    
    return Routine("Intermediate 3 Day: Middle Top Top", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Bottom, dead Top
func ThreeDayIntermediate17() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickBottom,.deadStickTop]
  
    return Routine("Intermediate 3 Day: Middle Bottom Top", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Top, dead Bottom
func ThreeDayIntermediate18() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
        
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickTop,.deadStickBottom]
    
    return Routine("Intermediate 3 Day: Middle Top Bottom", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Middle, dead Top
func ThreeDayIntermediate19() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickMiddle,.benchStickMiddle,.deadStickTop]
    
    return Routine("Intermediate 3 Day: Middle Middle Top", trainingSessions, movements, tags)
}




//squat stick: Top, bench Bottom, dead Bottom
func ThreeDayIntermediate20() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickBottom,.deadStickBottom]
  
    return Routine("Intermediate 3 Day: Top Bottom Bottom", trainingSessions, movements, tags)
}


//squat stick: Top, bench Bottom, dead Middle
func ThreeDayIntermediate21() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickBottom,.deadStickMiddle]
    
    return Routine("Intermediate 3 Day: Top Bottom Middle", trainingSessions, movements, tags)
}


//squat stick: Top, bench Middle, dead Bottom
func ThreeDayIntermediate22() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickMiddle,.deadStickBottom]
   
    return Routine("Intermediate 3 Day: Top Middle Bottom", trainingSessions, movements, tags)
}

//squat stick: Top, bench Middle, dead Middle
func ThreeDayIntermediate23() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickMiddle,.deadStickMiddle]
   
    return Routine("Intermediate 3 Day: Top Middle Middle", trainingSessions, movements, tags)
}


//squat stick: Top, bench Top, dead Middle
func ThreeDayIntermediate24() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickTop,.deadStickMiddle]
  
    return Routine("Intermediate 3 Day: Top Top Middle", trainingSessions, movements, tags)
}

//squat stick: Top, bench Top, dead Top
func ThreeDayIntermediate25() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickTop,.deadStickTop]
  
    return Routine("Intermediate 3 Day: Top Top Top", trainingSessions, movements, tags)
}

//squat stick: Top, bench Bottom, dead Top
func ThreeDayIntermediate26() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickBottom,.deadStickTop]
    
    return Routine("Intermediate 3 Day: Top Bottom Top", trainingSessions, movements, tags)
}

//squat stick: Top, bench Top, dead Bottom
func ThreeDayIntermediate27() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickTop,.deadStickBottom]
   
    return Routine("Intermediate 3 Day: Top Top Bottom", trainingSessions, movements, tags)
}

//squat stick: Top, bench Middle, dead Top
func ThreeDayIntermediate28() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Face Down Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Extension", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .threeDays, .squatStickTop,.benchStickMiddle,.deadStickTop]
  
    return Routine("Intermediate 3 Day: Top Middle Top", trainingSessions, movements, tags)
}
