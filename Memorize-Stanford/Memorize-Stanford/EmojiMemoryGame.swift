//
//  EmojiMemoryGame.swift
//  Memorize-Stanford
//
//  Created by Liu Changhong on 19/8/20.
//  Copyright © 2020 Luke Liu. All rights reserved.
//

import Foundation

class EmojiMemeoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🎃", "👻", "🔥"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pariIndex in emojis[pariIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intends
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
}
