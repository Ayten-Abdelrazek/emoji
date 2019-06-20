//
//  ViewController.swift
//  emoji
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
       let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[0] 
        let alertController = UIAlertController(title: "How are you feeling today?", message: "", preferredStyle: UIAlertController.Style.alert)
        
        let emojis = ["😄": "Don't let the silly little things steal your happiness.", "😢": "A million words would not bring you back, I know because I tried, neither would a million tears, I know because I cried", "😷": "Hope you get well soon", "😡": "Count with me: 1..2..3..4..5..do you feel better now?", "🤩": "you are a superstar!", "😜": "a day without laughter is a day waisted"]
        
        
         alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

