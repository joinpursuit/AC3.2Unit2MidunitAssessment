//
//  ViewController.swift
//  AC3.2Unit2MidunitAssesment
//
//  Created by Karen Manzanares Fuentes on 9/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var characterLineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBAction func scriptPromptButtonTappes(_ sender: UIButton) {
//        for i in macbethScriptData.value {
//        characterLineLabel = i
        
    
//        }
    }
    @IBOutlet weak var lineLabel: UILabel!

    @IBAction func promptButtonTapped(_ sender: UIButton) {
        for i in poloniusMonologue {
            lineLabel.text = i
            return
        
        }
        
    }
    
//    class  Script {
//        var character: String
//        var lines: [String]
//        
//        init(from data:[String:[String]]){
//            if let macbethCharacter: String = data["character"] as? String,
//            let macbethLines: [String] = data["lines"] as? [String]] {
//                self.character = macbethCharacter
//                self.lines = macbethLines
//            }
//        }
//        
//    }
    
// I am trying to create a class of script and intializing it but I keep on getting errors with my typeCasting//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        script()
    }

    
    
    
    
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
    
    }
    
    



