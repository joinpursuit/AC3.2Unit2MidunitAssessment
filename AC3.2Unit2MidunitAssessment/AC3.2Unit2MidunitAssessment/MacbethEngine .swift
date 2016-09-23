//
//  MacbethEngine .swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by John Gabriel Breshears on 9/23/16.
//  Copyright © 2016 John Gabriel Breshears. All rights reserved.
//

import Foundation


//struct PlayText {
//    
//    var line: String
//    
//    init(from data:[String]) {
//        
//        if let playLine: String = data[0] as? String {
//        
//        self.line = playLine
//    }
//    
//}
//
//}
//class PlayText {
//    
//    let poloniusMonologue = ["My liege, and madam, to expostulate",
//                             "What majesty should be, what duty is,",
//                             "What day is day, night night, and time is time,",
//                             "Were nothing but to waste night, day, and time;",
//                             
//                             "Therefore, since brevity is the soul of wit,",
//                             "And tediousness the limbs and outward flourishes,",
//                             "I will be brief. Your noble son is mad."]
//}
//
//let sometext = PlayText()





class Playtext {
    
    var text: String
    
    init(text: String) {
        self.text = text
    }


}



let library = [
    Playtext(text:"My liege, and madam, to expostulate"),
    Playtext(text:"What majesty should be, what duty is,"),
    Playtext(text:"What day is day, night night, and time is time,"),
    Playtext(text:"Were nothing but to waste night, day, and time;"),

    Playtext(text:"Therefore, since brevity is the soul of wit,"),
    Playtext(text:"And tediousness the limbs and outward flourishes,"),
    Playtext(text:"I will be brief. Your noble son is mad."),
]


//    if let movie = item as? Movie {
//        print("Movie: \(movie.name), dir. \(movie.director)")
//    } else if let song = item as? Song {
//        print("Song: \(song.name), by \(song.artist)")
//    }
//}
