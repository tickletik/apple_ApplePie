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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        listOfWords = ["horse", "cow", "aardvark", "safari", "girls", "sluts", "women"]
        
        newRound()
    }

    func newRound() {
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

