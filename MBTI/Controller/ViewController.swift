//
//  ViewController.swift
//  MBTI
//
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button2: UIButton!
    
    var questionList = QuestionList()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 0.5)
        button2.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 0.5)
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        questionList.nextQuestion(userChoice: sender.currentTitle!)
        updateUI()
    }
    func updateUI() {
        questionLabel.text = questionList.getTitle()
        button1.setTitle(questionList.getChoice1Button(), for: .normal)
        button2.setTitle(questionList.getChoice2Button(), for: .normal)
    }
}

