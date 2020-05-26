//  powerlifting
//
// 167682
import Foundation

func secsToShortDurationName(_ interval: Double) -> String {
    let seconds = Int(round(interval))
    let minutes = interval/60.0
    let hours = interval/3600.0
    let days = round(hours/24.0)
    
    
    if seconds < 300 {
        return seconds == 1 ? "1 sec" : "\(seconds) seconds"
    } else if minutes < 60.0 {
        return String(format: "%0.1f mins", arguments: [minutes])
    } else if hours < 24.0 {
        return String(format: "%0.1f hours", arguments: [hours])
    } else {
        return String(format: "%0.1f days", arguments: [days])
    }
}

func minsToStr(_ mins: Int) -> String {
    let interval = 60*Double(mins)
    let hours = interval/3600.0
    let days = round(hours/24.0)
    
    if mins <= 60 {
        return String(format: "%d mins", arguments: [mins])
    } else if hours < 24.0 {
        return String(format: "%0.1f hours", arguments: [hours])
    } else {
        return String(format: "%0.1f days", arguments: [days])
    }
}

extension Date {
    func minsSinceDate(_ rhs: Date) -> Double {
        let secs = self.timeIntervalSince(rhs)
        let mins = secs/60.0
        return mins
    }
    
    func hoursSinceDate(_ rhs: Date) -> Double {
        let secs = self.timeIntervalSince(rhs)
        let mins = secs/60.0
        let hours = mins/60.0
        return hours
    }
    
    func daysSinceDate(_ rhs: Date) -> Double {
        let secs = self.startOfDay().timeIntervalSince(rhs.startOfDay())
        let mins = secs/60.0
        let hours = mins/60.0
        let days = hours/24.0
        return days
    }

        
    func weeksSinceDate(_ rhs: Date) -> Double {
        
        let secs = self.startOfDay().timeIntervalSince(rhs.startOfDay())
        let mins = secs/60.0
        let hours = mins/60.0
        let days = hours/24.0
        let weeks = days/7.0
        return weeks
    }
    
    func shortDurationName() -> String {
        let interval = Date().timeIntervalSince(self)
        return secsToShortDurationName(interval)
    }
    

    
    func startOfDay() -> Date {
        let calendar = Calendar.current
        let result = calendar.startOfDay(for: self)
        return result
    }
    
    func daysName() -> String {
        let calendar = Calendar.current
        
      
        if calendar.isDate(self, inSameDayAs: Date()) {
            return "today"
        }
        
        if let candidate = (calendar as NSCalendar).date(byAdding: .day, value: -1, to: Date(), options: .searchBackwards) , calendar.isDate(self, inSameDayAs: candidate) {
            return "yesterday"
        }
        
        for days in 2...31 {
            if let candidate = (calendar as NSCalendar).date(byAdding: .day, value: -days, to: Date(), options: .searchBackwards) , calendar.isDate(self, inSameDayAs: candidate) {
                return "\(days) days ago"
            }
        }
        
        return "More than a month ago"
    }
}

