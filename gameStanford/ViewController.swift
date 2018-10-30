//
//  ViewController.swift
//  gameStanford
//
//  Created by Samantha Cortopassi on 10/29/18.
//  Copyright © 2018 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount = 0
    flipCount += 1
    flipCard(withEmoji: "👻", on: sender)
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "👻", on: sender)
        
    }

    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCard(withEmoji:"🎃", on: sender)
    }
    
    }
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

