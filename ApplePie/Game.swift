//
//  Game.swift
//  ApplePie
//
//  Created by ronny abraham on 11/15/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import Foundation

struct Game {
    var word:String
    var incorrectMovesRemaining:Int
    var guessedLetters: [Character]

    mutating func PlayerGuessed(letter: Character) {
        guessedLetters.append(letter)

        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
