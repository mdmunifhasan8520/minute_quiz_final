//
//  ViewController.swift
//  minute_quiz
//
//  Created by MacBook Pro on 7/29/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewControllerB = SettingsViewController()
    
  
    //create a QuestioBank object
    let allQuestions = QuestionBank()
    
    //let level = LevelViewController()
    
    //create a variable
    var pickedAnswer : String = ""
    var questionNumber : Int = 0
    
    //for track the score
    var homeBestScore: Int = 0
    var bestScore: Int = 0
    var score : Int = 0
    
    //for track the current and wrong answer
    var correctAnswerCount : Int = 0
    var wrongAnswerCount : Int = 0
    
    //correct answer collection
    var myCorrectAnswerCollecction = [Int]()
    var myWrongAnswerCollecction = [Int]()
    
    var storedCorrentAnswerArr = [Int]()
    var storedWrongAnswerArr = [Int]()
    
    
    //for the Timer
    var startInt = 6
    var startTimer = Timer()
 
    
    //ui elements from the storyboard
    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var correctAnswerCountLabel: UILabel!
    @IBOutlet weak var wrongAnswerCountLabel: UILabel!
    @IBOutlet weak var progressHud: UIImageView!
    @IBOutlet weak var Button1Label: UIButton!
    @IBOutlet weak var Button2Label: UIButton!
    @IBOutlet weak var Button3Label: UIButton!
    @IBOutlet weak var Button4Label: UIButton!
    @IBOutlet weak var LevelId: UILabel!
    
   
    
    
    //create instance of UserDefaults
    let userDefaults = UserDefaults.standard
    
    //for animation
    var senderValue = 0
    var isGoingToNext = false
    var heartImages: [UIImage] = []
    
    var selectedLevel: Int = 0
    var levelQuestions: [Question] = []
    

    var myPlayingTimer = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        print("this is gameplay")
        levelQuestions = allQuestions.list.filter { (q) -> Bool in
            q.levelId == self.selectedLevel
        };
        
        //game timer Setting
        myPlayingTimer = userDefaults.integer(forKey: "gameTimer")
        print("Game Play timer\(myPlayingTimer)")
        
        //permanent Data storage
        bestScore = userDefaults.integer(forKey: "hscore")
        homeBestScore = userDefaults.integer(forKey: "hscoreforGamePlay")
        storedCorrentAnswerArr = userDefaults.object(forKey: "scaarr") as? [Int] ?? [Int]()
        storedWrongAnswerArr = userDefaults.object(forKey: "swaarr") as? [Int] ?? [Int]()
        
        //display First Question
        gameStart()
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if(isGoingToNext) {return}
        
        //senderValue = 1
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = levelQuestions[questionNumber].firstOption
            //pickedAnswer = Button1Label.setTitle(levelQuestions[questionNumber].firstOption, for: .normal)
            //sender.pulsate()
           senderValue += 1
            Button1Label.isEnabled = false
            Button2Label.isEnabled = false
            Button3Label.isEnabled = false
            Button4Label.isEnabled = false
            print(pickedAnswer)
        } else if sender.tag == 2 {
            pickedAnswer = levelQuestions[questionNumber].secondOption
            //pickedAnswer = false
           // sender.shake()
            senderValue += 2
            Button1Label.isEnabled = false
            Button2Label.isEnabled = false
            Button3Label.isEnabled = false
            Button4Label.isEnabled = false
        }
        else if sender.tag == 3 {
            pickedAnswer = levelQuestions[questionNumber].thirdOption
            //pickedAnswer = false
            // sender.shake()
            senderValue += 3
            Button1Label.isEnabled = false
            Button2Label.isEnabled = false
            Button3Label.isEnabled = false
            Button4Label.isEnabled = false
        }
        else if sender.tag == 4 {
            pickedAnswer = levelQuestions[questionNumber].fourthOption
            //pickedAnswer = false
            // sender.shake()
            senderValue += 4
            Button1Label.isEnabled = false
            Button2Label.isEnabled = false
            Button3Label.isEnabled = false
            Button4Label.isEnabled = false
        }
        
        checkAnswer()
        
        //after checking the answer proceed to the next question
        isGoingToNext = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            self.questionNumber = self.questionNumber + 1
            self.nextQuestion()
            self.isGoingToNext = false
        })
}
    
    func gameStart() {
        myCorrectAnswerCollecction.removeAll()
        myWrongAnswerCollecction.removeAll()
//        allQuestions.list.sort { (a, b) -> Bool in (arc4random() % 6) > 3}
        levelQuestions.sort { (a, b) -> Bool in (arc4random() % 6) > 3}
        
        //for start the timer
        if myPlayingTimer == 1 {
            startInt = 1 * startInt
            timer.text = "\(startInt)"
        } else if myPlayingTimer == 2 {
            startInt = 2 * startInt
            timer.text = "\(startInt)"
        } else if myPlayingTimer == 3 {
            startInt = 3 * startInt
            timer.text = "\(startInt)"
        } else if myPlayingTimer == 4 {
            startInt = 4 * startInt
            timer.text = "\(startInt)"
        }
        
        startTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startGameTimer), userInfo: nil, repeats: true)
        
        nextQuestion()

    }
    
    func summeryUI() {
        //for correct and wrong anser counter
        correctAnswerCountLabel.text = "\(correctAnswerCount)"
        wrongAnswerCountLabel.text = "\(wrongAnswerCount)"
        scoreLabel.text = "Score: \(score)"
        
        //best score set permanently
        if score > bestScore {
            bestScore = score
            userDefaults.set("\(bestScore)", forKey: "hscore")
        }
        //for correct and wrong answer collection
        let newCorrectAnswers = myCorrectAnswerCollecction.filter { (id) -> Bool in
            return (storedCorrentAnswerArr.index(of: id) == nil) ? true : false
        }
        storedCorrentAnswerArr.append(contentsOf: newCorrectAnswers)
        userDefaults.set(storedCorrentAnswerArr.sorted(), forKey: "scaarr")
        
        //print("sorted:\(storedCorrentAnswerArr.sorted())")
        //print(myCorrectAnswerCollecction)
        //print(newCorrectAnswers)
        //print(storedCorrentAnswerArr)
   }
    
    func updateUI() {
        //for correct and wrong anser counter
        correctAnswerCountLabel.text = "\(correctAnswerCount)"
        wrongAnswerCountLabel.text = "\(wrongAnswerCount)"
        scoreLabel.text = "Score: \(score)"
   
    
        
        Button1Label.isEnabled = true
        Button2Label.isEnabled = true
        Button3Label.isEnabled = true
        Button4Label.isEnabled = true
    }
    
    func nextQuestion() {
   
        print(selectedLevel)
        print(questionNumber)
        print(levelQuestions)
        if questionNumber <= levelQuestions.count - 1 {
            questionImage.image = levelQuestions[questionNumber].questionImage
            //questionLabel.text = levelQuestions[questionNumber].questionText
         
            //btn.setTitle(title: "Title", for: .normal)
            Button1Label.setTitle(levelQuestions[questionNumber].firstOption, for: .normal)
            Button2Label.setTitle(levelQuestions[questionNumber].secondOption, for: .normal)
            Button3Label.setTitle(levelQuestions[questionNumber].thirdOption, for: .normal)
            Button4Label.setTitle(levelQuestions[questionNumber].fourthOption, for: .normal)
            
            Button1Label.backgroundColor = UIColor(red: 1.000, green: 0.400, blue: 0.000, alpha: 1.0)
            Button2Label.backgroundColor = UIColor(red: 1.000, green: 0.400, blue: 0.000, alpha: 1.0)
            Button3Label.backgroundColor = UIColor(red: 1.000, green: 0.400, blue: 0.000, alpha: 1.0)
            Button4Label.backgroundColor = UIColor(red: 1.000, green: 0.400, blue: 0.000, alpha: 1.0)
            Button1Label.isHidden = false
            Button2Label.isHidden = false
            Button3Label.isHidden = false
            Button4Label.isHidden = false
            Button1Label.setTitleColor(UIColor.black, for: .normal)
            Button2Label.setTitleColor(UIColor.black, for: .normal)
            Button3Label.setTitleColor(UIColor.black, for: .normal)
            Button4Label.setTitleColor(UIColor.black, for: .normal)
            
            //animation
            Button1Label.zoomIn()
            Button2Label.zoomIn()
            Button3Label.zoomIn()
            Button4Label.zoomIn()
          
            
            updateUI()
        } else {
            
            summeryUI()
            
            startTimer.invalidate()
            
            //create an AlertViewController object
            let alert = UIAlertController(title: "Awesome", message: "You have finished the quiz", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
                { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    func checkAnswer() {
        let currentQuestion = levelQuestions[questionNumber]
        //let currentQuestion = allQuestions.list[levelQuestions]
        if currentQuestion.answer == pickedAnswer {
            //print("you got it")
         
            if senderValue == 1 {
                Button1Label.backgroundColor = UIColor.green
                //Button1Label.pulsate()
                Button2Label.isHidden = true
                Button3Label.isHidden = true
                Button4Label.isHidden = true
            } else if senderValue == 2 {
                Button2Label.backgroundColor = UIColor.green
                //Button2Label.pulsate()
                Button1Label.isHidden = true
                Button3Label.isHidden = true
                Button4Label.isHidden = true
            } else if senderValue == 3 {
                Button3Label.backgroundColor = UIColor.green
                //Button3Label.pulsate()
                Button2Label.isHidden = true
                Button1Label.isHidden = true
                Button4Label.isHidden = true
            } else if senderValue == 4 {
                Button4Label.backgroundColor = UIColor.green
                //Button4Label.pulsate()
                Button2Label.isHidden = true
                Button3Label.isHidden = true
                Button1Label.isHidden = true
        
            }
            score = score + 1
            correctAnswerCount = correctAnswerCount + 1
            myCorrectAnswerCollecction.append(currentQuestion.id)
         } else {
            //print("shame")
            if senderValue == 1 {
                Button1Label.backgroundColor = UIColor.red
                //Button1Label.shake()
                Button1Label.setTitleColor(UIColor.white, for: .normal)
              
            } else if senderValue == 2 {
                Button2Label.backgroundColor = UIColor.red
                //Button2Label.shake()
                Button2Label.setTitleColor(UIColor.white, for: .normal)
            } else if senderValue == 3 {
                Button3Label.backgroundColor = UIColor.red
                //Button3Label.shake()
                Button3Label.setTitleColor(UIColor.white, for: .normal)
                print("hello 3")
            } else if senderValue == 4 {
                Button4Label.backgroundColor = UIColor.red
                //Button4Label.shake()
                Button4Label.setTitleColor(UIColor.white, for: .normal)
            }
            wrongAnswerCount = wrongAnswerCount + 1
            myWrongAnswerCollecction.append(currentQuestion.id)
        }
        senderValue = 0
    }
    
    func startOver() {
        wrongAnswerCount = 0
        correctAnswerCount = 0
        score = 0
        questionNumber = 0
        
        startInt = 6
       
        
        senderValue = 0
        
        gameStart()
    }
    
    @objc func startGameTimer() {
        startInt -= 1
        //for start the timer
        timer.text = "\(startInt)"
        
        if startInt == 0 {
            startTimer.invalidate()
            summeryUI()
            let alert = UIAlertController(title: "Times Up", message: "could not answer all question", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
   
}

