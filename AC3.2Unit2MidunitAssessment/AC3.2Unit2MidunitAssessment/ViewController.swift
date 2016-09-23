//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Thinley Dorjee on 9/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lineLabel: UILabel!
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]
    


    var currentElement = 0
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        if currentElement < poloniusMonologue.count {
            lineLabel.text = poloniusMonologue[currentElement]
            currentElement += 1
        } else if  currentElement % poloniusMonologue.count == 0 {
            currentElement = 0
           lineLabel.text = poloniusMonologue[currentElement]
            currentElement += 1
        }
    }

    let structuredArr = Array<Script>()
    
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

    
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
     
    displayArrOfDic()
    
    }
    
    func displayArrOfDic(){
        for data in macbethScriptData{
            for (key, value) in data{
                characterName.text = key
                characterLineLabel.text = String(describing: value)
                
            }
        }
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

