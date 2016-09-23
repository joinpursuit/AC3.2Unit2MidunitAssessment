# AC3.2 Unit2 Mid-unit Assessment

# Setup

1. Fork [this](https://github.com/C4Q/AC3.2Unit2MidunitAssessment) repo which has only a README.md and .gitignore.
2. Clone it locally.
3. Create a project into that cloned directory. Name it AC3.2Unit2MidunitAssessment.
4. Work on the assignment.
5. Upon completion, commit locally.

	```
	git commit -a -m "First, and in this case, final commit"
	```
7. Push to your repo.

	```
	git push origin master
	```
8. Go to github and make a pull request.

# The Assessment

1. Create a single view application in XCode.
2. Toward the top of the screen add a label to the storyboard. Align it to the left margin and 
stretch it to the right margin. Don't worry about layout. Full credit will still be given if some of 
the text gets cut off.
3. Make an outlet to the label named lineLabel.
4. Create a button directly below it and label it Prompt.
5. Make an action on the button to handle the touchUpInside event and name the function ```promptButtonTapped```. 
6. Add this property to your view controller:
	```swift
	let poloniusMonologue = ["My liege, and madam, to expostulate",
	"What majesty should be, what duty is,",
	"What day is day, night night, and time is time,",
	"Were nothing but to waste night, day, and time;",

	"Therefore, since brevity is the soul of wit,",
	"And tediousness the limbs and outward flourishes,",
	"I will be brief. Your noble son is mad."]
	```
7. The first time the Prompt button is pressed set the lineLabel's text to the first 
line of the monologue, i.e. the first element of  ```poloniusMonologue```, a String.
Each time the prompt button is pressed display the next element 
in the ```poloniusMonologue``` array. After the last line is shown the next 
button press should begin again at the first element, and so on.
**HERE ENDETH STAGE ONE**
	> **NOTE:**
	>
	> For the following steps do not alter, dismantle or reuse any code or storyboard elements
	> that you've created thus far.
	> This is so the first part can remain intact. Simply move further down in the storyboard
	> and add more elements to it. In the code, add variables and methods as needed.

8. Add a Script class in a separate file with this code:

	```swift
	import Foundation

	class Script {
	    struct Monologue {
	        let character: String
	        let lines: [String]
	    }
	    
	    let author: String
	    let work: String
	    let monologues: [Monologue]
	    
	    init(author: String, work: String, scriptDictionary: [[String:Any]]) {
	        self.author = author
	        self.work = work
	        
	        var tempMonologues = [Monologue]()
	        for m in scriptDictionary {
	            if let character = m["character"] as? String, let lines = m["lines"] as? [String] {
	                tempMonologues.append(Monologue(character: character, lines: lines))
	            }
	        }
	        self.monologues = tempMonologues
	    }
	}

	```

	And add this property to your ViewController:

	```swift
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
	```
9. Around the middle of the screen, add a label to the view controller.
10. Make an outlet to the label and call it ```characterNameLabel```.
11. Add a label below it. 
12. Make an outlet to that label and call it ```characterLineLabel```.
13. Add a button below that and label it Script Prompt. Now in this new area of your
interface you have two new labels and a button, and the label and button from 
before are still up above.
14 Make an action on the button to handle the touchUpInside event and name the function ```scriptPromptButtonTapped```.
15. Create a ```Script!``` property in your view controller named ```script```.
16. Initialize ```script``` in ```viewDidLoad``` with an author, title, and ```macbethScriptData```. 
16. In ```scriptPromptButtonTapped``` do something similar to what we did in the first part: work through the
elements in the ```script```. It has an internal property of ```monologues``` that each have a ```character``` and
and array of ```lines```. Update the ```characterNameLabel``` for each new monologue and ```characterLineLabel```
for each line. ```characterLineLabel``` will need to be tracked/indexed separately and will change more often
than the ```characterNameLabel```. This is because each character may speak more than one line before the 
next character speaks. If this proves difficult you might find it easier to start by displaying only 
the first line of each monologue. This could be a stopping point or may lead you to completion.