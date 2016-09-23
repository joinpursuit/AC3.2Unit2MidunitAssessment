//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Rukiye Karadeniz on 9/23/16.
//  Copyright © 2016 Rukiye Karadeniz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    internal let poloniusMonologue = ["My liege, and madam, to expostulate",
                                          "What majesty should be, what duty is,",
                                          "What day is day, night night, and time is time,",
                                          "Were nothing but to waste night, day, and time;",
                                          
                                          "Therefore, since brevity is the soul of wit,",
                                          "And tediousness the limbs and outward flourishes,",
                                          "I will be brief. Your noble son is mad."]
    
    internal let macbethScriptData = [
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
    internal var script: Script!
    

    @IBOutlet weak var lineLabel: UILabel!
    
    var notEndofLine = false

    
    @IBOutlet weak var characterNameLabel: UILabel!
    
    
    @IBOutlet weak var characterLineLabel: UILabel!
    
//    //if currentElement < primeString.count {
//    PrimeLabel.text = primeString[currentElement]
//    currentElement++
//} else {
//    print("No more elements to display.")
//}
//}

    //My function name mistakenly same as button name not changng just incase
    @IBAction func Prompt(_ sender: UIButton) {
        
        var promptButton = lineLabel.text!
        var currentElement = 0
        
        if currentElement < poloniusMonologue.count{
            lineLabel.text = poloniusMonologue[currentElement]
            currentElement += 1
            if poloniusMonologue[currentElement] == " "{
                lineLabel.text = poloniusMonologue[currentElement + 1]
            
            }
        }else{
            lineLabel.text = "" //first it will come here it's false
            
        }
      //  notEndofLine = true
        
    }
    
    @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //Initialize script in viewDidLoad with an author, title, and macbethScriptData
//        let author: String
//        let work: String
//        let script: [macbethScriptData]
//        init(author: String, work: String, script: [String]) {
//            self.author = author
//            self.work = work
//
//    
    }

}

    

