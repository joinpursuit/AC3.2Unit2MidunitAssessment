//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Amber Spadafora on 9/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonPressed = 0
    var scriptButtonPressed = 0
    var arrayOfIndexes = [Int]()
    var arraySubscript = 0
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    var scriptInfo: Script!
    
    
    @IBAction func prompt(_ sender: UIButton) {
        
            lineLabel.text = poloniusMonologue[buttonPressed]
            lineLabel.numberOfLines = 0
            sender.setTitle("Polonius Monologue", for: .normal)
            print(lineLabel.text)
            buttonPressed += 1
        if buttonPressed > poloniusMonologue.count - 1 {
            buttonPressed = 0
        }

    }
    
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
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]

    override func viewDidLoad() {
        super.viewDidLoad()
        lineLabel.text = ""
        characterNameLabel.numberOfLines = 0
        
        scriptInfo = Script(author: "Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
        print(scriptInfo.monologues.count)
        
    }
    
    @IBAction func scriptButtonTapped(_ sender: UIButton) {
        
        let currentCharacter = scriptInfo.monologues[scriptButtonPressed].character
        characterNameLabel.text = currentCharacter
        for i in 0..<scriptInfo.monologues[scriptButtonPressed].lines.count {
            characterLineLabel.text = scriptInfo.monologues[scriptButtonPressed].lines[i]
        }
        scriptButtonPressed += 1
        if scriptButtonPressed > scriptInfo.monologues.count - 1 {
            scriptButtonPressed = 0
        }
    }

}
    

    




