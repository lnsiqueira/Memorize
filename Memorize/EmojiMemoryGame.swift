//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Luciano Nunes de Siqueira on 17/05/21.
//

import SwiftUI

//func createCardContent(pairIndex: Int) -> String{
 //   return "😀"
//}
//VIEWMODEL

class EmojiMemoryGame : ObservableObject {
   @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻","🎃", "🕷"]
        return MemoryGame<String>(numberOfPairsOfCards :emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //var objectWillChange: ObservableObjectPublisher
    
      //MemoryGame<String>(numberOfPairsOfCards: 2) { _ in  "😀" }
      //MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in  "😀" }
    
    //MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    
    //MARK - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        objectWillChange.send()
        model.choose(card: card)
        
        //BD....
    }
    
    func resetGame(){
        model = EmojiMemoryGame.createMemoryGame()
    }
    
}
