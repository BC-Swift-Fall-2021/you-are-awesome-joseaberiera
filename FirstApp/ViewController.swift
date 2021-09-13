//
//  ViewController.swift
//  FirstApp
//
//  Created by Jose Riera on 8/30/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    let totalNumberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do{
                try  audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("ERROR")
            }
           
        }else{
            print("ERROR")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int{
        var newNumber: Int
        repeat{
            newNumber = Int.random(in: 0...upperBounds)
        }while originalNumber == newNumber
        return newNumber
    }


    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "When the Genius Bar needs help, they call you!",
                        "You have got the design skills of Jony Ive",
                        "You Are Fantastic!",
                        "You Are Fabulous!"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds-1)
        if playSoundSwitch.isOn{
            playSound(name: "sound\(soundNumber)")
        }
        
    }
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil{
            audioPlayer.stop()
            }
    }
}
