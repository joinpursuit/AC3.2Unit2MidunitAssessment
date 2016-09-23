//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Cris on 9/23/16.
//  Copyright © 2016 Cris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lineLabel: UILabel!
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        print(poloniusMonologue.count)
        lineLabel.text = poloniusMonologue[buttonPressed]
        
        if buttonPressed == (poloniusMonologue.count - 1) {
            buttonPressed = 0
        } else {
        buttonPressed += 1
        }
    }
    
    var buttonPressed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let script = Script(author: "character", work: "lines", scriptDictionary: macbethScriptData)
        dump(script)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]





// ------------------------ Second Part ------------------------------------------------------------


    @IBOutlet weak var characterNameLabel: UILabel!

    @IBOutlet weak var characterLineLabel: UILabel!


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



    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        
           }
}
