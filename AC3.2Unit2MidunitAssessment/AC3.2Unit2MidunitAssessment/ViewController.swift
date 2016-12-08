//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Margaret Ikeda on 9/23/16.
//  Copyright © 2016 Margaret Ikeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Mark: Properties
    
    @IBOutlet weak var lineLabel: UILabel!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLineLabel: UILabel!
    private var currentPoloniusLineNumber = 0
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
    
    private(set) var macbethScript: Script!
    private var currentMonologueIndex = 0
    private var currentMonologueLineNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText(lineNumber: currentPoloniusLineNumber)
        
        macbethScript = Script(author: "WS",
                        work: "MacBeth",
                        scriptDictionary: macbethScriptData)
        let firstMonologue = macbethScript.monologues[0]
        setScriptLabelsText(with: firstMonologue, lineNumber: currentMonologueLineNumber)
        
    }
    
    
    // MARK: Polonius section

    @IBAction func promptButtonTapped(_ sender: UIButton) {
        let maxLines = poloniusMonologue.count
        currentPoloniusLineNumber = (currentPoloniusLineNumber + 1) % maxLines
        setLabelText(lineNumber: currentPoloniusLineNumber)
    }

    private func setLabelText(lineNumber: Int) {
        lineLabel.text = poloniusMonologue[lineNumber]
    }
    
    // MARK: Script section
    
    @IBAction func scriptPromptTapped(_ sender: UIButton) {
        var currentMonologue = macbethScript.monologues[currentMonologueIndex]
        currentMonologueLineNumber += 1
        if !(currentMonologueLineNumber < currentMonologue.lines.count) {
            let newMonologueIndex = (currentMonologueIndex + 1) % macbethScript.monologues.count
            currentMonologueIndex = newMonologueIndex
            currentMonologueLineNumber = 0 // reset back to first line
            currentMonologue = macbethScript.monologues[newMonologueIndex]
        }
        setScriptLabelsText(with: currentMonologue, lineNumber: currentMonologueLineNumber)
    }
    
    private func setScriptLabelsText(with monologue: Script.Monologue, lineNumber: Int) {
        characterNameLabel.text = monologue.character
        characterLineLabel.text = monologue.lines[lineNumber]
    }
    
}
