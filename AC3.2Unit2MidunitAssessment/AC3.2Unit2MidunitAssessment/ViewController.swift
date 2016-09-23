//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Tong Lin on 9/23/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
    var script: Script!
    var monologueCounter: Int = 0
    var characterCounter: Int = 0
    var lineCounter: Int = 0
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
        
        self.lineLabel.text = "Polonius Monologue"
        self.characterNameLabel.text = "Character"
        self.characterLineLabel.text = "Lines"
        script = Script(author: "Someone", work: "Witches", scriptDictionary: macbethScriptData)
    }
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        if monologueCounter < poloniusMonologue.count-1{
            lineLabel.text = poloniusMonologue[monologueCounter]
            monologueCounter += 1
        }else{
            lineLabel.text = poloniusMonologue.last
            monologueCounter = 0
        }
        
    }
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        if characterCounter == script.monologues.count-1 && lineCounter == script.monologues[characterCounter].lines.count-1{
            characterNameLabel.text = script.monologues.last?.character
            characterLineLabel.text = script.monologues.last?.lines.last
            characterCounter = 0
            lineCounter = 0
        }else if lineCounter < script.monologues[characterCounter].lines.count-1{
            characterNameLabel.text = script.monologues[characterCounter].character
            characterLineLabel.text = script.monologues[characterCounter].lines[lineCounter]
            lineCounter += 1
        }else{
            characterNameLabel.text = script.monologues[characterCounter].character
            characterLineLabel.text = script.monologues[characterCounter].lines.last
            characterCounter += 1
            lineCounter = 0
        }
    }
}
