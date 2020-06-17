//
//  ViewController.swift
//  MacDicee
//
//  Created by Jason Cox on 6/16/20.
//  Copyright © 2020 Jason Cox. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet var imageViewDice1: NSImageView!
    @IBOutlet var imageViewDice2: NSImageView!
    @IBOutlet var imageViewTitle: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // imageViewTitle.image = NSImage(named: "diceeLogo")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func buttonRoll(_ sender: Any) {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1, randomDiceIndex2)
        
        imageViewDice1.image = NSImage(named: diceArray[randomDiceIndex1])
        imageViewDice2.image = NSImage(named: diceArray[randomDiceIndex2])
    }
    
}

