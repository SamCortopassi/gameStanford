//
//  Concentration.swift
//  gameStanford
//
//  Created by Samantha Cortopassi on 11/8/18.
//  Copyright © 2018 Samantha Cortopassi. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                    indexOfOneAndOnlyFaceUpCard = nil
                
            } else {
                // either no cards or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
            
        }
      
    }
    
    init(numberOfPairsOfCards: Int){
       
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        
        
        }
        // todo: shuffle the cards
      
    }
}
