//
//  ViewController.swift
//  tapper-EX
//
//  Created by ronald hunter on 2/5/16.
//  Copyright © 2016 ronald hunter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++;
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    
    @IBAction func onPlayButtonPress(sender: UIButton){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
               shouldHideChecker(true)
        
                maxTaps = Int(howManyTapsTxt.text!)!
                currentTaps = 0
            
                updateTapsLbl()
        
        }
        
        
    }
    
    // Restart The Game function
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        shouldHideChecker(false)
        
    }
    
    
    
    
    //Checks if items should be hidden or not
    func shouldHideChecker(checker: Bool){
        if checker == true{
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
        }else{
            logoImg.hidden = false
            playBtn.hidden = false
            howManyTapsTxt.hidden = false
            
            tapBtn.hidden = true
            tapsLbl.hidden = true
        }
    }
    
    
    
    
    
    
    // Checks if the game is over or not
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        }else{
            return false
        }
    }
    
    
    
    // Updates the taps label 
    
    func updateTapsLbl(){
        
         tapsLbl.text = "\(currentTaps) Taps"
    }


}

