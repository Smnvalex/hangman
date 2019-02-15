//
//  ViewController.swift
//  SimpleGame
//
//  Created by 90303041 on 10/26/18.
//  Copyright © 2018 90303041. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Hangman: UIImageView!
    
    @IBOutlet weak var letterA: UIButton!
    
    @IBOutlet weak var letterB: UIButton!
    
    @IBOutlet weak var letterC: UIButton!
    
    @IBOutlet weak var letterD: UIButton!
    
    @IBOutlet weak var letterE: UIButton!
    
    @IBOutlet weak var letterF: UIButton!
    
    @IBOutlet weak var letterG: UIButton!
    
    @IBOutlet weak var letterH: UIButton!
    
    @IBOutlet weak var letterI: UIButton!
    
    @IBOutlet weak var letterJ: UIButton!
    
    @IBOutlet weak var letterK: UIButton!
    
    @IBOutlet weak var letterL: UIButton!
    
    @IBOutlet weak var letterM: UIButton!
    
    @IBOutlet weak var letterN: UIButton!
    
    @IBOutlet weak var letterO: UIButton!
    
    @IBOutlet weak var letterP: UIButton!
    
    @IBOutlet weak var letterQ: UIButton!
    
    @IBOutlet weak var letterR: UIButton!
    
    @IBOutlet weak var letterS: UIButton!
    
    @IBOutlet weak var letterT: UIButton!
    
    @IBOutlet weak var letterU: UIButton!
    
    @IBOutlet weak var letterV: UIButton!
    
    @IBOutlet weak var letterW: UIButton!
    
    @IBOutlet weak var letterX: UIButton!
    
    @IBOutlet weak var letterY: UIButton!
    
    @IBOutlet weak var letterZ: UIButton!
    

    @IBOutlet weak var letter1: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    
    //Words list
    var word = ["RANDOM","LETTER","ROYALE","TENDENCY","CREATE","GARBAGE","SMALL","DISCIPLINE"]
    //Word list
    
    //Ambigious vars
    
    var Wrong = 1
    
    var guessingWord = ""
    
    var lettersGuessed = ""
    
    var placeholderArray = [Character]()
    
    var displayedLetters = ""
    
    
    
    
    
    
    
    override func viewDidLoad() {
        Hangman.image = UIImage(named: "Hangman1")
        chooseGuessingWord()
        
       
        super.viewDidLoad()
        
       
        
        button.isUserInteractionEnabled = false
        
    
    }
    //functions
    
    func chooseGuessingWord(){
        
        let randomNumber = Int.random(in: 0 ... word.count)
        
        guessingWord = word[randomNumber]
        
        for _ in guessingWord{
        
            placeholderArray.append("_")
            
            
                displayedLetters.append("_")
       
            
        }
        letter1.text = displayedLetters
    }
    
    func loserHAHA(){
        
        
        
        
    }
    
    func checkLetter(letter: Character){
        var X = 0
        for char in guessingWord {
            
                if letter == Array(guessingWord)[X]{
                    placeholderArray[X] = char
                        for char in placeholderArray{
                            lettersGuessed = ""
                         lettersGuessed.append(char)
                        }
                    letter1.text = lettersGuessed
                }
            
            X = X + 1
        }
        
        Hangman.image = UIImage(named:      "Hangman\(Wrong)")
        if (Wrong == 6){
            loserHAHA()
        }
    }

    

    //functions
    
    
    
//Buttons for keyboard
    @IBAction func LetterA(_ sender: Any) {
        checkLetter(letter: "A")
    }
    
    @IBAction func LetterB(_ sender: Any) {
        checkLetter(letter: "B")
    }
    
    @IBAction func LetterC(_ sender: Any) {
        checkLetter(letter: "C")
    }
    
    @IBAction func LetterD(_ sender: Any) {
        checkLetter(letter: "D")
    }
    
    @IBAction func LetterE(_ sender: Any) {
        checkLetter(letter: "E")
    }
    
    @IBAction func LetterF(_ sender: Any) {
        checkLetter(letter: "F")
    }
    
    @IBAction func LetterG(_ sender: Any) {
        checkLetter(letter: "G")
    }
    
    @IBAction func LetterH(_ sender: Any) {
        checkLetter(letter: "H")
    }
    
    @IBAction func LetterI(_ sender: Any) {
        checkLetter(letter: "I")
    }
    
    @IBAction func LetterJ(_ sender: Any) {
        checkLetter(letter: "J")
    }
    
    @IBAction func LetterK(_ sender: Any) {
         checkLetter(letter: "K")
    }
    
    @IBAction func LetterL(_ sender: Any) {
         checkLetter(letter: "L")
    }
    
    @IBAction func LetterM(_ sender: Any) {
         checkLetter(letter: "M")
    }
    
    @IBAction func LetterN(_ sender: Any) {
         checkLetter(letter: "N")
    }
    
    @IBAction func LetterO(_ sender: Any) {
         checkLetter(letter: "O")
    }
    
    @IBAction func LetterP(_ sender: Any) {
         checkLetter(letter: "P")
    }
    
    @IBAction func LetterQ(_ sender: Any) {
         checkLetter(letter: "Q")
    }
    
    @IBAction func LetterR(_ sender: Any) {
         checkLetter(letter: "R")
    }
    
    @IBAction func LetterS(_ sender: Any) {
         checkLetter(letter: "S")
    }
    
    @IBAction func LetterT(_ sender: Any) {
         checkLetter(letter: "T")
    }
    
    @IBAction func LetterU(_ sender: Any) {
         checkLetter(letter: "U")
    }
    @IBAction func LetterV(_ sender: Any) {
         checkLetter(letter: "V")
    }
    
    @IBAction func LetterW(_ sender: Any) {
         checkLetter(letter: "W")
    }
    
    @IBAction func LetterX(_ sender: Any) {
         checkLetter(letter: "X")
    }
    
    @IBAction func LetterY(_ sender: Any) {
         checkLetter(letter: "Y")
    }
    
    @IBAction func LetterZ(_ sender: Any) {
         checkLetter(letter: "Z")
    }
    //Buttons for keyboard
    
    
    
    
    
    
  
}

