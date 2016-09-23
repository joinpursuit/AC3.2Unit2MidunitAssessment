//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Erica Y Stevens on 9/23/16.
//  Copyright © 2016 Erica Stevens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var lineLabel: UILabel!
    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterLineLabel: UILabel!
    
    
    // MARK: Properties
    
    var script: Script! = nil
    
    var counter1 = 0
    
    var characterNameTracker = 0
    
    var characterLineTracker = [[String]]()
    
    var lineIndexer = 0
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]
    
    //macbethSciptData[3]["lines"][0]
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
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        script = Script(author: "William Shakespeare", work: "Macbeth", scriptDictionary: macbethScriptData)
    }
    
    // MARK: Actions
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
        
        if counter1 == poloniusMonologue.count {
            counter1 = 0
        }
            lineLabel.text = poloniusMonologue[counter1]
            counter1 += 1
    }

    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        
        //Changes character name & associated counter
        if characterNameTracker == macbethScriptData.count {
            characterNameTracker = 0
            lineIndexer = 0
        }
        characterNameLabel.text = macbethScriptData[characterNameTracker]["character"] as! String?
        //characterNameTracker += 1
        
       
        //prints and increments lines for each character
        if let linesKeyInDict = macbethScriptData[lineIndexer]["lines"] as? [String] {
            
            characterLineTracker.append(linesKeyInDict)
            characterLineLabel.text! = characterLineTracker[lineIndexer].joined(separator: " ")
            print(characterLineTracker)
            
            lineIndexer += 1

            if characterLineTracker.count == 1 {
                characterNameTracker += 1
            }
        }
    }
}

