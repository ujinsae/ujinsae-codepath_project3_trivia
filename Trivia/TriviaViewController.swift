//
//  TriviaViewController.swift
//  Trivia
//
//  Created by ujin  on 3/13/24.
//

import Foundation
import UIKit

class TriviaViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    
    var currentQuestionIndex = 0
    
    let questions = [
        "What is the capital of France?",
        "Who wrote 'To Kill a Mockingbird'?",
        "What is the chemical symbol for gold?"
    ]
    
    let answers = [
        ["Paris", "London", "Berlin", "Rome"],
        ["Harper Lee", "F. Scott Fitzgerald", "Mark Twain", "Jane Austen"],
        ["Au", "Ag", "Cu", "Fe"]
    ]
    
    let correctAnswers = [0, 0, 0] // Index of correct answers for each question
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Display the first question
        displayQuestion()
    }
    
    func displayQuestion() {
        questionLabel.text = questions[currentQuestionIndex]
        answerButton1.setTitle(answers[currentQuestionIndex][0], for: .normal)
        answerButton2.setTitle(answers[currentQuestionIndex][1], for: .normal)
        answerButton3.setTitle(answers[currentQuestionIndex][2], for: .normal)
        answerButton4.setTitle(answers[currentQuestionIndex][3], for: .normal)
    }
}
