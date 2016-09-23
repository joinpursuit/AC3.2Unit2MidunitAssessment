//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Eric Chang on 9/23/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var script: Script!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateLineLabel()
    
    script = Script(author: "Eric", work: "Unit 2 Test", scriptDictionary: macbethScriptData)
    }
  
  /**
   *
   * STAGE ONE! Action!
   *
   */
  
  // MARK: Properties
  // MARK: Properties
  @IBOutlet weak var lineLabel: UILabel!
  var linePlace = 0
  
  
  let poloniusMonologue = ["My liege, and madam, to expostulate",
                           "What majesty should be, what duty is,",
                           "What day is day, night night, and time is time,",
                           "Were nothing but to waste night, day, and time;",
                           
                           "Therefore, since brevity is the soul of wit,",
                           "And tediousness the limbs and outward flourishes,",
                           "I will be brief. Your noble son is mad."]
  func updateLineLabel() {
    lineLabel.text = poloniusMonologue[linePlace]
  }
  
  @IBAction func promptButtonTapped(_ sender: UIButton) {
    guard linePlace < poloniusMonologue.count - 1 else {
      linePlace = 0
      updateLineLabel()
      return
    }
    linePlace += 1
    updateLineLabel()
  }
  

  
  
  /**
   * Stage One Endeth
   *
   * Stage Two Begineth
   * Lights! Camera! Acksheon!!~
   */
  
  //MARK: Properties
  //MARK: Properties
  
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
  var name = 0
  var line = 0
  @IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
    characterNameLabel.text = script.monologues[name].character
    characterLineLabel.text! = script.monologues[name].lines[line]
    line += 1
    lineCheck()
    restartCheck()
  }
  
  func lineCheck() {
    if script.monologues[name].lines.count == 1 {
      name += 1
      line = 0
    }
    else if line == script.monologues[name].lines.count{
      name += 1
      line = 0
    }
  }
  
  func restartCheck() {
    if name == script.monologues.count {
      name = 0
    }
  }
  
}

