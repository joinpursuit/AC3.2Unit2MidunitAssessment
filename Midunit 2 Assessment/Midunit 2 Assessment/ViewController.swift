//
//  ViewController.swift
//  Midunit 2 Assessment
//
//  Created by Marcel Chaucer on 9/23/16.
//  Copyright © 2016 Marcel Chaucer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

let script: Script! = nil

    
    override func viewDidLoad() {
      
//Couldn't figure out how to initialize 'script' in the viewDidLoad :(
        //script(
        //script.author = "William"
        //script.work = "Macbeth"
        //script.monologues = macbethScriptData
        
        }

    @IBOutlet weak var lineLabel: UILabel!
   
    
    var counter = 0
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        for _ in 0...poloniusMonologue.count-1 {
            print(counter)
            lineLabel.text! = poloniusMonologue[counter]
            break

        }
        counter += 1
        if counter == poloniusMonologue.count {
            counter = 0
        }
    }
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]


    
    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        print(characterLineLabel.text, characterNameLabel.text)
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

}
