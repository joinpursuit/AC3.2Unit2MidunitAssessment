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
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
}
// Mark: Actions

    @IBAction func PromptButtonTapped(_ sender: UIButton) {
//I know I need a for-in loop to loop through the elements in an array. I am not sure how to do that with an array of Strings. I also do not understand the error I'm getting when I press the button in the simulator. I'm very lost.
        lineLabel.text = poloniusMonologue[0]
    }
    
}
