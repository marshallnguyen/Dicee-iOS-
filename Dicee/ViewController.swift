//
//  ViewController.swift
//  Dicee
//
//  Created by Marshall Nguyen on 1/31/18.
//  Copyright © 2018 Marshall Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0 // creates integer variable equal to 0
    var randomDiceIndex2 : Int = 0 // creates integer variable equal to 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"] // constant array of strings
    
    @IBOutlet weak var diceImageView1: UIImageView! // connects image
    @IBOutlet weak var diceImageView2: UIImageView! // connects image
    
    // func called when view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        // casting from unsigned int to int; randomizes from 0 to 6-1, or 5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // updates image based on file name (String)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    // func called after device is shaken
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

