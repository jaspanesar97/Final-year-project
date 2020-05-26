//  powerlifting
//
// 167682

// functions
import Foundation
import UIKit



func availablePlates() -> [Double] {
    return [1.25, 2.5, 5, 10, 15, 20, 25]
}



func defaultBumpers() -> [Double] {
        return [5.0, 10, 20, 25]
        
}

func microPlates() -> [Double] {
        return [0.25, 0.5, 0.75, 1.0]
}



//used for rest time
func secsToStr(_ secs: Int) -> String {
    if secs <= 60 {
        return "\(secs)s"
    } else {
        return String(format: "%0.1fm", arguments: [Double(secs)/60.0])
    }
}


func strToSecs(_ inText: String) -> Int? {
    var multiplier = 1.0
    
    var text = inText.trimmingCharacters(in: CharacterSet.whitespaces)
    if text.hasSuffix("s") {
        text.remove(at: text.index(before: text.endIndex))
    } else if text.hasSuffix("m") {
        multiplier = 60.0
        text.remove(at: text.index(before: text.endIndex))
    } else if text.hasSuffix("h") {
        multiplier = 60.0*60.0
        text.remove(at: text.index(before: text.endIndex))
    }
    
    if let value = Double(text) {
        return Int(multiplier*value)
    }
    return nil
}

func grayColor(_ gray: Int, _ alpha: Float) -> UIColor {
    return UIColor(red: CGFloat(gray)/230.0, green: CGFloat(gray)/230.0, blue: CGFloat(gray)/230.0, alpha: CGFloat(alpha))
}

func newColor(_ red: Int, _ green: Int, _ blue: Int) -> UIColor {
    return UIColor(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: CGFloat(1.0))
}

