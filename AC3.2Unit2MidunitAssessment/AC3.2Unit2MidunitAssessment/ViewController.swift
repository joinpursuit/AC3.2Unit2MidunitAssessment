//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Ana Ma on 9/23/16.
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
    
    var count = 0

    @IBAction func promptButtonTapped(_ sender: UIButton) {
        lineLabel.text = sender.currentTitle
            if count == 0 {
                lineLabel.text = poloniusMonologue[0]
                count += 1
            }else if count == 1 {
                lineLabel.text = poloniusMonologue[1]
                count += 1
            }else if count == 2{
                lineLabel.text = poloniusMonologue[2]
                count += 1
            }else if count == 3{
                lineLabel.text = poloniusMonologue[3]
                count += 1
            }else if count == 4{
                lineLabel.text = poloniusMonologue[4]
                count += 1
            }else if count == 5{
                lineLabel.text = poloniusMonologue[5]
                count += 1
            }else if count == (poloniusMonologue.count - 1) {
                lineLabel.text = poloniusMonologue[poloniusMonologue.count - 1]
                count = 0
            }
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
    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterLineLabel: UILabel!
    
    var script: Script!
    var count1 = 0
    var count2 = 0
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        characterNameLabel.text = sender.currentTitle
        characterLineLabel.text = sender.currentTitle
        //Ever press just loops through all the characters and line at once
        for m in macbethScriptData {
            if let character = m["character"] as? String, let lines = m["lines"] as? [String]{
                if count2 < lines.count - 1 && count2 != lines.count - 1{
                    characterNameLabel.text = character
                    characterLineLabel.text = lines[count2]
                    count2 += 1
                } else if count2 == lines.count - 1 {
                    characterNameLabel.text = character
                    characterLineLabel.text = lines[count2]
                    count2 = 0
                } else {
                    break
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var script1 = Script(author: "", work: "", scriptDictionary: macbethScriptData)
//        script.author = macbethScriptData[1]["character"]
//        script.description = macbethScriptData["lines"]
//        script.monologues = macbethScriptData
        
//        script(author: macbethScriptData["character"], work: macbethScriptData["lines"], scriptDictionary: macbethScriptData )
//        Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

