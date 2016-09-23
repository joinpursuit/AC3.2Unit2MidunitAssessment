//
//  ViewController.swift
//  AC3.2Unit2MidunitAssessment
//
//  Created by Victor Zhong on 9/23/16.
//  Copyright © 2016 Victor Zhong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var lineLabel: UILabel!
	@IBAction func promptButtonTapped(_ sender: UIButton) {
		letHimTalk()
	}
	@IBOutlet weak var characterNameLabel: UILabel!
	@IBOutlet weak var characterLineLabel: UILabel!
	@IBAction func scriptPromptButtonTapped(_ sender: UIButton) {
		witchesSpell()
	}
	
	let script: Script!
	let scriptData: [Script.Monologue]
	var poloniusCounter = 0
	var witchCounter = 0
	var lineCounter = 0
	
	required init?(coder aDecoder: NSCoder) {
		self.script = Script(author: "Shakespeare", work: "MacBeth", scriptDictionary: macbethScriptData)
		self.scriptData = script.monologues
		super.init(coder: aDecoder)
	}
	
	override func viewDidLoad() {
		
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	// MARK: - Stage 1
	private let poloniusMonologue = ["My liege, and madam, to expostulate",
	                         "What majesty should be, what duty is,",
	                         "What day is day, night night, and time is time,",
	                         "Were nothing but to waste night, day, and time;",
	                         
	                         "Therefore, since brevity is the soul of wit,",
	                         "And tediousness the limbs and outward flourishes,",
	                         "I will be brief. Your noble son is mad."]
	
	private func letHimTalk() {
		lineLabel.text = poloniusMonologue[poloniusCounter]
		poloniusCounter += 1
		if poloniusCounter == poloniusMonologue.count {
			poloniusCounter = 0
		}
	}
	
	// MARK: - Stage 2
	private let macbethScriptData = [
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
	
	private func witchesSpell() {
		let whichWitch = scriptData[witchCounter].character
		var witchyLines = scriptData[witchCounter].lines
		characterNameLabel.text = "\(whichWitch):"
		characterLineLabel.text = witchyLines[lineCounter]
		lineCounter += 1
		if lineCounter == witchyLines.count {
			witchCounter += 1
			lineCounter = 0
		}
		if witchCounter == scriptData.count {
			witchCounter = 0
		}
	}
}

