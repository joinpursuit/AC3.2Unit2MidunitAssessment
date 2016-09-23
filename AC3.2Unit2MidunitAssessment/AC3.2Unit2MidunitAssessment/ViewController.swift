//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Tom Seymour on 23/09/2016.
//  Copyright © 2016 Tom Seymour. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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

    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
    @IBOutlet weak var p1ButtonLabel: UIButton!
    @IBOutlet weak var p2ButtonLabel: UIButton!
    
    
    var script: Script!
    
    var buttonTappedcounter = 0
    
    var nameCounter = 0
    var lineCounter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.script = Script(author: "Shakespere", work: "Macbeth", scriptDictionary: macbethScriptData)
    }

    @IBAction func promptButtonTapped(_ sender: AnyObject) {
        p1ButtonLabel.setTitle("Next Line", for: .normal)
        lineLabel.text = poloniusMonologue[buttonTappedcounter]
        buttonTappedcounter += 1
        if buttonTappedcounter == poloniusMonologue.count {
            buttonTappedcounter = 0
        }
    }
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        p2ButtonLabel.setTitle("Next Line", for: .normal)
        characterNameLabel.text = "\(script.monologues[nameCounter].character):"
        characterLineLabel.text = script.monologues[nameCounter].lines[lineCounter]
        lineCounter += 1
        if lineCounter == script.monologues[nameCounter].lines.count {
            nameCounter += 1
            lineCounter = 0
        }
        if nameCounter == script.monologues.count {
            nameCounter = 0
        }
    }
}

