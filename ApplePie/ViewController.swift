//
//  ViewController.swift
//  ApplePie
//
//  Created by ronny abraham on 11/15/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords: [String]!
    
    let incorrectMovesAllowed = 7
    
    var totalWins:Int = 0
    var totalLoses:Int = 0
    
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        listOfWords = ["horse", "cow", "aardvark", "safari", "girls", "sluts", "women"]
        
        newRound()
    }

    func newRound() {
        let newWord = listOfWords.removeFirst()
        
        currentGame = Game(word: newWord,
            incorrectMovesRemaining: incorrectMovesAllowed,
            guessedLetters: [])

        updateUI()
    }
    
    func updateUI() {

        /* 
            get the formatted word convert it to 
            an array and then reconcatenate the array
            into a string with spaces for a separater
        */
        
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }

        let wordWithSpacing = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing

        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLoses)"

        treeImageView.image = UIImage(
            named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false

        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())

        currentGame.playerGuessed(letter: letter)

        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

