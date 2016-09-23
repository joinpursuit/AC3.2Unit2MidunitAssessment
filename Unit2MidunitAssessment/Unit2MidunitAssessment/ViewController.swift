//
//  ViewController.swift
//  Unit2MidunitAssessment
//
//  Created by Jason Gresh on 9/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
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

    var lineIndex = 0
    var scriptIndex = 0
    var scriptLineIndex = 0
    
    var script: Script!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lineLabel.text = "Polonius' Monologue"
        characterLineLabel.text = "Character Line"
        characterNameLabel.text = "Character Name"
        
        script = Script(author: "Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
    }


    @IBAction func promptButtonTapped(_ sender: UIButton) {
        self.lineLabel.text = poloniusMonologue[lineIndex]
        
        if lineIndex < poloniusMonologue.count - 1 {
            lineIndex += 1
        }
        else {
            lineIndex = 0
        }
    }

    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        self.characterNameLabel.text = self.script.monologues[scriptIndex].character
        self.characterLineLabel.text = self.script.monologues[scriptIndex].lines[scriptLineIndex]
        
        // try to just move the line
        if scriptLineIndex < script.monologues[scriptIndex].lines.count - 1 {
            scriptLineIndex += 1
        }
        else {
            // advance the monologue
            if scriptIndex < script.monologues.count - 1 {
                scriptIndex += 1
            }
            else {
                scriptIndex = 0
            }
            
            // always reset to the first line
            scriptLineIndex = 0
        }
    }
}

