//
//  ViewController.swift
//  FirstApp
//
//  Created by Jose Riera on 8/30/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }


    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "When the Genius Bar needs help, they call you!",
                        "You have got the design skills of Jony Ive",
                        "You Are Fantastic!",
                        "You Are Fabulous!"]
        
        var newMessageNumber: Int
        
        repeat{
            newMessageNumber = Int.random(in: 0...messages.count-1)
        }while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int

        repeat{
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        }while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")

        
        
    }
}

