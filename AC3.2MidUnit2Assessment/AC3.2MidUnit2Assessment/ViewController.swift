//
//  ViewController.swift
//  AC3.2MidUnit2Assessment
//
//  Created by Harichandan Singh on 9/23/16.
//  Copyright © 2016 Harichandan Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
    var promptButtonCounter = 0
    var characterNameButtonCounter = 0
    var characterLineButtonCounter = 0
    var script: Script!
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.script = Script(author: "William Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
    }
    
    func resetPromptButtonCounter() {
        promptButtonCounter = 0
    }
    
    func resetCharacterNameButtonCounter() {
        characterNameButtonCounter = 0
    }
    
    func resetCharacterLineButtonCounter() {
        characterLineButtonCounter = 0
    }
    
    func characterPrinter(characterNameButtonCounter: Int) {
        characterNameLabel.text = script.monologues[characterNameButtonCounter].character
    }
    
    func linePrinter(characterNameButtonCounter: Int) {
        characterLineLabel.text = script.monologues[characterNameButtonCounter].lines[characterLineButtonCounter]
        self.characterLineButtonCounter += 1
        if self.characterLineButtonCounter == script.monologues[characterNameButtonCounter].lines.count {
            resetCharacterLineButtonCounter()
            self.characterNameButtonCounter += 1
        }
        
    }
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        lineLabel.text = poloniusMonologue[promptButtonCounter]
        promptButtonCounter += 1
        if promptButtonCounter == poloniusMonologue.count {
            resetPromptButtonCounter()
        }
    }
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        characterPrinter(characterNameButtonCounter: self.characterNameButtonCounter)
        linePrinter(characterNameButtonCounter: self.characterNameButtonCounter)
        if self.characterNameButtonCounter == script.monologues.count {
            resetCharacterNameButtonCounter()
        }
    }
    
    
}

