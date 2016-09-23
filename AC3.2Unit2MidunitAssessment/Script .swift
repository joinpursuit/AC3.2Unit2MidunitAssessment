//
//  Script .swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Emily Chu on 9/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation


class Script {
    struct Monologue {
        let character: String
        let lines: [String]
    }
    
    let author: String
    let work: String
    let monologues: [Monologue]
    
    init(author: String, work: String, scriptDictionary: [[String:Any]]) {
        self.author = author
        self.work = work
        
        var tempMonologues = [Monologue]()
        for m in scriptDictionary {
            if let character = m["character"] as? String, let lines = m["lines"] as? [String] {
                tempMonologues.append(Monologue(character: character, lines: lines))
            }
        }
        self.monologues = tempMonologues
    }
}

