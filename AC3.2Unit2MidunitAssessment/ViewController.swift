//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Ilmira Estil on 9/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var script: Script!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        script = Script.init(author: "Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
        
        //let script = Script.init(author: "Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
        /*
         var dicts = [Script]()
         for scriptDicts in macbethScriptData {
         dicts.append(Script(from: [scriptDicts]))
         }
         dump(dicts)
         */
        
    }
    
    //MARK: Properties
    
    
    
    
    
    var line = 0
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
    
    
  
    
    //MARK: Functions
    
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        if line < poloniusMonologue.count {
            lineLabel.text = poloniusMonologue[line]
            line += 1
        } else {
            line = 0
        }
    }
    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterLineLabel: UILabel!
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        
        //characterNameLabel.text = script.author
        characterNameLabel.text = script.monologues.0
        //BLAHHHHHH
    }
    
}

