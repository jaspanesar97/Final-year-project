//  powerlifting
//
// 167682

import Foundation



fileprivate let warmup = Warmup(noPlates: 1, firstPercent: 0.5, lastPercent: 0.9, reps: [8, 6, 3])

fileprivate let noWarmup = Warmup(noPlates: 0, firstPercent: 0.6, lastPercent: 0.9, reps: [])

fileprivate  let movements = [
        olympicBar("Deadlift",         "Deadlift",            1, topSet: 5, warmups: warmup, useBumpers: true, restMins: 2.0),
       
        plateLoadedMachine("Seated Cable Row", "Seated Cable Row",    3, by: 12, warmups: noWarmup, restMins: 2.0),
        olympicBar("Hammer Curls",    "Hammer Curls",        4, by:12, warmups: noWarmup, restMins: 2.0),
        olympicBar("Barbell Curls",  "Concentration Curls", 4, by: 12, warmups: noWarmup, restMins: 2.0),

        olympicBar("Bench Press",             "Bench Press",             5, topSet: 5, warmups: warmup, restMins: 2.0),
        olympicBar("Overhead Press",                     "Overhead Press",          5, topSet: 5, warmups: warmup, restMins: 2.0),
       
        
        olympicBar("Barbell Incline Press", "Barbell Incline Press",  3, by: 12, warmups: noWarmup, restMins: 2.0),
        plateLoadedMachine("Triceps Pushdown",        "Triceps Pushdown (rope)", 3, by: 12, warmups: noWarmup, restMins: 2.0),
        olympicBar("Side Lateral Raise",       "Side Lateral Raise",    3, by: 12, warmups: noWarmup, restMins: 2.0),
        olympicBar("Triceps Press",          "Seated Triceps Press",    3, by: 12, warmups: noWarmup, restMins: 2.0),
       

        olympicBar("Squat",             "Low bar Squat",        3, topSet: 5, warmups: warmup, restMins: 2.0),
        olympicBar("Romanian Deadlift", "Romanian Deadlift",    3, by: 12, warmups: noWarmup, restMins: 2.0),
        plateLoadedMachine("Leg Press",    "Leg Press",            3, by: 12, warmups: noWarmup, restMins: 2.0),
        plateLoadedMachine("Leg Curls",         "Seated Leg Curl",      3, by: 12, warmups: noWarmup, restMins: 2.0),
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

func FiveDayIntermediate1() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 3: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
        
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays]

    return Routine("Intermediate 5 Day: Basic", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Bottom, dead Bottom
func FiveDayIntermediate2() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
       TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
    
       
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
          TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
      
         
          TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
          
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
       TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
    
       
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
          TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
      
         
          TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench","Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
        
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom, .benchStickBottom, .deadStickBottom]

    return Routine("Intermediate 5 Day: Bottom Bottom Bottom", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Middle, dead Middle
func FiveDayIntermediate3() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            
            
            TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
             TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
             
             
             TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
             TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
             TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
             TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
              TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
              
              TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
              TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
              TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
              TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
               TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
               
               
               TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
               TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
               TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
               TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
                TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
            
        
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom,.benchStickMiddle,.deadStickMiddle]

    return Routine("Intermediate 5 Day: Bottom Middle Middle", trainingSessions, movements, tags)
}


//squat stick: Bottom, bench Bottom, dead Middle
func FiveDayIntermediate4() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
    
          
          TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           
           TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            
            
          TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           
           TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom,.benchStickBottom,.deadStickMiddle]
 
    return Routine("Intermediate 5 Day: Bottom Bottom Middle", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Middle, dead Bottom
func FiveDayIntermediate5() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
          
          TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           
           TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            
            
            
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
          
          TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           
           TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
            TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
         
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom,.benchStickMiddle,.deadStickBottom]
    
    return Routine("Intermediate 5 Day: Bottom Middle Bottom", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Top, dead Top
func FiveDayIntermediate6() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
          
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
          
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
          
          
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
          
          
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom, .benchStickTop, .deadStickTop]
    
    return Routine("Intermediate 5 Day: Bottom Top Top", trainingSessions, movements, tags)
}


//squat stick: Bottom, bench Middle, dead Top
func FiveDayIntermediate7() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom, .benchStickMiddle, .deadStickTop]
   
    return Routine("Intermediate 5 Day: Bottom Middle Top", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Top, dead Middle
func FiveDayIntermediate8() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         
         
         
         TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
         TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
          TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
            
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
           
           
           
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
          
        
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom, .benchStickTop, .deadStickMiddle]
    
    return Routine("Intermediate 5 Day: Bottom Top Middle", trainingSessions, movements, tags)
}


//squat stick: Bottom, bench Top, dead Bottom
func FiveDayIntermediate9() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
        
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom, .benchStickTop, .deadStickBottom]
   
    return Routine("Intermediate 5 Day: Bottom Top Bottom", trainingSessions, movements, tags)
}

//squat stick: Bottom, bench Bottom, dead Top
func FiveDayIntermediate10() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Pause Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickBottom,.benchStickBottom,.deadStickTop]
  
    return Routine("Intermediate 5 Day: Bottom Bottom Top", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Bottom, dead Bottom
func FiveDayIntermediate11() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickBottom,.deadStickBottom]
    
    return Routine("Intermediate 5 Day: Middle Bottom Bottom", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Bottom, dead Middle
func FiveDayIntermediate12() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickBottom,.deadStickMiddle]
   
    return Routine("Intermediate 5 Day: Middle Bottom Middle", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Middle, dead Bottom
func FiveDayIntermediate13() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickMiddle,.deadStickBottom]

    return Routine("Intermediate 5 Day: Middle Middle Bottom", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Middle, dead Middle
func FiveDayIntermediate14() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickMiddle,.deadStickMiddle]
 
    return Routine("Intermediate 5 Day: Middle Middle Middle", trainingSessions, movements, tags)
}


//squat stick: Middle, bench Top, dead Middle
func FiveDayIntermediate15() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickTop,.deadStickMiddle]
 
    return Routine("Intermediate 5 Day: Middle Top Middle", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Top, dead Top
func FiveDayIntermediate16() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickTop,.deadStickTop]
 
    return Routine("Intermediate 5 Day: Middle Top Top", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Bottom, dead Top
func FiveDayIntermediate17() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickBottom,.deadStickTop]
  
    return Routine("Intermediate 5 Day: Middle Bottom Top", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Top, dead Bottom
func FiveDayIntermediate18() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
         
         
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickTop,.deadStickBottom]
 
    return Routine("Intermediate 5 Day: Middle Top Bottom", trainingSessions, movements, tags)
}

//squat stick: Middle, bench Middle, dead Top
func FiveDayIntermediate19() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickMiddle,.benchStickMiddle,.deadStickTop]
    
    return Routine("Intermediate 5 Day: Middle Middle Top", trainingSessions, movements, tags)
}




//squat stick: Top, bench Bottom, dead Bottom
func FiveDayIntermediate20() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickBottom,.deadStickBottom]
    
    return Routine("Intermediate 5 Day: Top Bottom Bottom", trainingSessions, movements, tags)
}


//squat stick: Top, bench Bottom, dead Middle
func FiveDayIntermediate21() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickBottom,.deadStickMiddle]
    
    return Routine("Intermediate 5 Day: Top Bottom Middle", trainingSessions, movements, tags)
}


//squat stick: Top, bench Middle, dead Bottom
func FiveDayIntermediate22() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    ]
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickMiddle,.deadStickBottom]
    
    return Routine("Intermediate 5 Day: Top Middle Bottom", trainingSessions, movements, tags)
}

//squat stick: Top, bench Middle, dead Middle
func FiveDayIntermediate23() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickMiddle,.deadStickMiddle]
 
    return Routine("Intermediate 5 Day: Top Middle Middle", trainingSessions, movements, tags)
}


//squat stick: Top, bench Top, dead Middle
func FiveDayIntermediate24() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Block Pull",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
         
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickTop,.deadStickMiddle]
    
    return Routine("Intermediate 5 Day: Top Top Middle", trainingSessions, movements, tags)
}

//squat stick: Top, bench Top, dead Top
func FiveDayIntermediate25() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
         
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickTop,.deadStickTop]
   
    return Routine("Intermediate 5 Day: Top Top Top", trainingSessions, movements, tags)
}

//squat stick: Top, bench Bottom, dead Top
func FiveDayIntermediate26() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pause Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickBottom,.deadStickTop]
   
    return Routine("Intermediate 5 Day: Top Bottom Top", trainingSessions, movements, tags)
}

//squat stick: Top, bench Top, dead Bottom
func FiveDayIntermediate27() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Deficit Deadlift", "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Close-Grip Bench", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickTop,.deadStickBottom]
   
    return Routine("Intermediate 5 Day: Top Top Bottom", trainingSessions, movements, tags)
}

//squat stick: Top, bench Middle, dead Top
func FiveDayIntermediate28() -> Routine {
    
    let trainingSessions = [
        TrainingSession("Week 1: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 1: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 2: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 2: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 3: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 3: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 4: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 4: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 5: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 5: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 6: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 6: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 7: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 7: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        
        
        TrainingSession("Week 8: Day 1", ["Deadlift","Hip Thrust",  "Seated Cable Row", "Hammer Curls", "Barbell Curls"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 2", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 3", ["Squat", "Front Squat","Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 4", ["Bench Press", "Pin Press", "Overhead Press", "Barbell Incline Press", "Triceps Pushdown", "Side Lateral Raise", "Triceps Press"], scheduled: true, noncompulsory: []),
        TrainingSession("Week 8: Day 5", ["Squat", "Romanian Deadlift", "Leg Press", "Leg Curls", "Calf Raises"], scheduled: true, noncompulsory: [])
    
    
    
    ]
    
    let tags: [Routine.Tags] = [.intermediate,  .fiveDays, .squatStickTop,.benchStickMiddle,.deadStickTop]

    return Routine("Intermediate 5 Day: Top Middle Top", trainingSessions, movements, tags)
}
