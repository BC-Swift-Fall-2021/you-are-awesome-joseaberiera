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
    
    var imageNumber = 0
    var messageNumber = 0
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
        messageLabel.text = messages[Int.random(in: 0...messages.count-1)]
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        //        messageLabel.text = messages[messageNumber]
        //        messageNumber += 1
        //        if messageNumber == messages.count{
        //            messageNumber = 0
        //        }
        //
        //        imageView.image = UIImage(named: "image\(imageNumber)")
        //        imageNumber += 1
        //        if imageNumber == 10{
        //            imageNumber = 0
        //        }
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let bombMessage = "You Are Da Bomb!"
        //
        //        if messageLabel.text == awesomeMessage{
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        }else if messageLabel.text == greatMessage{
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "image2")
        //        }else{
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
        
        
    }
}

