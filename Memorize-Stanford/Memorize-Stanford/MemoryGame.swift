//
//  MemoryGame.swift
//  Memorize-Stanford
//
//  Created by Liu Changhong on 19/8/20.
//  Copyright © 2020 Luke Liu. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let cardContent = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex * 2, isFaceUp: true, isMatched: false, content: cardContent))
            cards.append(Card(id: pairIndex * 2 + 1, isFaceUp: true, isMatched: false, content: cardContent))
        }
    }
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
    }
}
