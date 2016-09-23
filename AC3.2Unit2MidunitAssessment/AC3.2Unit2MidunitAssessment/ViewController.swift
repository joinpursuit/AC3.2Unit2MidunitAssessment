//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by John Gabriel Breshears on 9/23/16.
//  Copyright © 2016 John Gabriel Breshears. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func promptButtonTapped(_ sender: UIButton) {
       
    //Why Do I keep getting the last item in my library? Is it b/c when I press the button the for loop goes through the library and changes lineLabel.text to the last item? How do I prevent that?
        
        for item in library {
            if let thisTextIWantToSee = item as? Playtext {
                lineLabel.text = (thisTextIWantToSee.text)
            }
           
       
        }
    
    }
    
    let poloniusMonologue = ["My liege, and madam, to expostulate",
                             "What majesty should be, what duty is,",
                             "What day is day, night night, and time is time,",
                             "Were nothing but to waste night, day, and time;",
                             
                             "Therefore, since brevity is the soul of wit,",
                             "And tediousness the limbs and outward flourishes,",
                             "I will be brief. Your noble son is mad."]    
   
}

