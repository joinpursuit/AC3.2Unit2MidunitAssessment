//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Jermaine Kelly on 9/23/16.
//  Copyright © 2016 Jermaine Kelly. All rights reserved.
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
    
    
    var lineCounter = 0
    var script: Script!
    var characterCounter = 0
    var monologueCounter = 1
    
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.script = Script(author: "Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
        
        
        
        
        
        
    }
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        
        if lineCounter == poloniusMonologue.count{
            lineCounter = 0
        }
        
        lineLabel.text = poloniusMonologue[lineCounter]
        lineCounter += 1
        
    }
    
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        
        if characterCounter == script.monologues.count{
            characterCounter = 0
        }
        
        characterNameLabel.text = script.monologues[characterCounter].character
        
        if monologueCounter != script.monologues[characterCounter].lines.count{
            
            characterLineLabel.text = script.monologues[characterCounter].lines[monologueCounter - 1]
            monologueCounter += 1
            
        }
        else{
            
            characterLineLabel.text = script.monologues[characterCounter].lines[monologueCounter - 1]
            characterCounter += 1
            monologueCounter = 1
            
        }
        
        
        
        
        
        
    }
    
    
    
}

