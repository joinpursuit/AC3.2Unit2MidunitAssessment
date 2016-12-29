//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Marty Avedon on 9/23/16.
//  Copyright © 2016 Marty Avedon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// MARK: 1st Part
    
    var promptButtonTappedNum = 0
    var scriptPromptButtonTapped = 0
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]

    @IBOutlet weak var lineLabel: UILabel!
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        promptButtonTappedNum += 1
        let mono = poloniusMonologue
        var lineNum: Int
        
        if promptButtonTappedNum <= mono.count {
            lineNum = promptButtonTappedNum - 1
        } else {
            if (promptButtonTappedNum % mono.count) == 0 {
                lineNum = 0
            } else {
                lineNum = (promptButtonTappedNum % mono.count) - 1
            }
        }
        lineLabel.text = mono[lineNum]
    }
    
    //// MARK: 2nd Part
    
    let macbethScriptData = [
        ["character": "First Witch",
         "lines":
            ["Thrice the brinded cat hath mew'd."]],
        
        ["character":"Second Witch",
         "lines":
            ["Thrice and once the hedge-pig whined."]],
        
        ["character":"Third Witch",
         "lines":
            ["Harpier cries 'Tis time, 'tis time."]],
        
        ["character":"First Witch",
         "lines":
            ["Round about the cauldron go;",
             "In the poison'd entrails throw.",
             "Toad, that under cold stone",
             "Days and nights has thirty-one",
             "Swelter'd venom sleeping got,",
             "Boil thou first i' the charmed pot."]],
        
        ["character":"ALL",
         "lines":
            ["Double, double toil and trouble;",
             "Fire burn, and cauldron bubble."]],
        
        ["character":"Second Witch",
         "lines":
            ["Fillet of a fenny snake,",
             "In the cauldron boil and bake;",
             "Eye of newt and toe of frog,",
             "Wool of bat and tongue of dog,",
             "Adder's fork and blind-worm's sting,",
             "Lizard's leg and owlet's wing,",
             "For a charm of powerful trouble,",
             "Like a hell-broth boil and bubble."]],
        
        ["character":"ALL",
         "lines":
            ["Double, double toil and trouble;",
             "Fire burn and cauldron bubble."]]
    ]

    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        var actorLineNum: Int
        var innerCount = 0
        var currentLine = ""
        scriptPromptButtonTapped += 1
        if scriptPromptButtonTapped <= macbethScriptData.count {
            actorLineNum = scriptPromptButtonTapped - 1
        } else {
            if (scriptPromptButtonTapped % macbethScriptData.count) == 0 {
                actorLineNum = 0
            } else {
                actorLineNum = (promptButtonTappedNum % macbethScriptData.count) - 1
            }
        }
        
        if let char =  macbethScriptData[scriptPromptButtonTapped]["character"] as? String,
            let lines = macbethScriptData[scriptPromptButtonTapped]["lines"] as? [String] {
            //print(char)
            characterNameLabel.text = char
            //local variable that counts taps and gives the correct index value for the lines
            
             for i in 0..<lines.count {
                currentLine = lines[i]
             }
 
            characterLineLabel.text = currentLine
        }
    }
    
    var script: Script!
    
    //macbethScriptData[scriptPromptButtonTapped]["lines"].count
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for i in 0..<macbethScriptData.count {
//            //for (key, val) in macbethScriptData[i]["lines"] {
//            //    print(key,val)
//            //}
//            if let char = macbethScriptData[i]["character"] as? String,
//            let lines = macbethScriptData[i]["lines"] as? [String] {
//                    print(char)
//            }
        }
    }


