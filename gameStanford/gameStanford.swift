//
//  gameStanford.swift
//  gameStanford
//
//  Created by Samantha Cortopassi on 11/6/18.
//  Copyright © 2018 Samantha Cortopassi. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
}
