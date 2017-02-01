//
//  ViewController.swift
//  Assignment_2.2
//
//  Created by Madrigal, Jesus on 2/1/17.
//  Copyright © 2017 Madrigal.Jesus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var QuestionLabel:UILabel!
    @IBOutlet var AnswerLabel:UILabel!
    
    let questions:[String] = ["What is 12 modulo 7?",
        						"What is the capital of Florida?",
    							"What is the name of the UNF mascot?"]
    
    let answers: [String] = ["5",
                            "Tallahassee",
    						"Ozzie the Osprey"]
    var currentQuestionIndex = -1
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question : String = questions[currentQuestionIndex]
        QuestionLabel.text = question
        AnswerLabel.text = "???"
    }
    
    @IBAction func showNextAnswer(sender: AnyObject) {
        if AnswerLabel.text == "???" {
            AnswerLabel.text = answers[currentQuestionIndex]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

