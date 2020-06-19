//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        check1.isHidden = true
        check2.isHidden = true
        check3.isHidden = true
        check4.isHidden = true
        check5.isHidden = true
    }
    @IBOutlet weak var check1: UIImageView!
    @IBOutlet weak var check2: UIImageView!
    @IBOutlet weak var check3: UIImageView!
    @IBOutlet weak var check4: UIImageView!
    @IBOutlet weak var check5: UIImageView!
    
    // ctrl->drag and drop dice images here
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    
    var diceRolls = 0
    var isButton1Pressed = false
    var isButton2Pressed = false
    var isButton3Pressed = false
    var isButton4Pressed = false
    var isButton5Pressed = false
    

    // When dice are tapped, don't roll them again

    @IBAction func button1Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            isButton1Pressed = true
            
            check1.isHidden = false
        }
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            isButton2Pressed = true
            check2.isHidden = false
        }
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            isButton3Pressed = true
            check3.isHidden = false
        }
    }
    @IBAction func button4Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            isButton4Pressed = true
            check4.isHidden = false
        }
    }
    @IBAction func button5Pressed(_ sender: UIButton) {
        if diceRolls > 0 {
            isButton5Pressed = true
            check5.isHidden = false
        }
    }
    // When the 'Roll' button gets tapped
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceRolls+=1
        print("`Roll` Button got tapped.")
        print(diceRolls)
        // Array of possible dice rolls - image Literals
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //Select a random element from the diceArray array
        //diceImageView2.image =  diceArray[Int.random(in:0...5)]
        
        if (isButton1Pressed == false){
        diceImageView1.image = diceArray.randomElement()
        }
        if (isButton2Pressed == false){
        diceImageView2.image = diceArray.randomElement()
        }
        if (isButton3Pressed == false){
        diceImageView3.image = diceArray.randomElement()
        }
        if (isButton4Pressed == false){
        diceImageView4.image = diceArray.randomElement()
        }
        if (isButton5Pressed == false){
        diceImageView5.image = diceArray.randomElement()
        }
        if (diceRolls == 3){
            isButton1Pressed = true
            isButton2Pressed = true
            isButton3Pressed = true
            isButton4Pressed = true
            isButton5Pressed = true
        }
    }
        
    // When the Reset button is tapped, reset all dice and un-hold them
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        diceRolls = 0
        print("Dice rolls reset to ", diceRolls)
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView3.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView4.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView5.image = #imageLiteral(resourceName: "DiceOne")
        isButton1Pressed = false
        isButton2Pressed = false
        isButton3Pressed = false
        isButton4Pressed = false
        isButton5Pressed = false
        check1.isHidden = true
        check2.isHidden = true
        check3.isHidden = true
        check4.isHidden = true
        check5.isHidden = true
    }
    
    
}

