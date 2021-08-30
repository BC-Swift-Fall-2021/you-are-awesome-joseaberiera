//
//  ViewController.swift
//  FirstApp
//
//  Created by Jose Riera on 8/30/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("😎 viewDidLoad has executed!")
    }


    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        print("🤩 sayIt was pressed")
        messageLabel.text = "You Are Awesome!"
    }
}

