//
//  ViewController.swift
//  Dice
//
//  Created by Chinedu Alake on 2019-02-06.
//  Copyright © 2019 Chinedu Alake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomballIndex1 : Int = 0
    var randomballIndex2 : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    
    @IBOutlet weak var ballimageView1: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {
    
        randomballIndex1 = Int(arc4random_uniform(5))
        
        
        print(randomballIndex1)
        
        ballimageView1.image = UIImage(named: ballArray[randomballIndex1])
    
        }
    
    
    func updateballImages(){
        
        // Generate 2 random numbers, 1 for each dice
        randomballIndex1 = Int(arc4random_uniform(6))
        randomballIndex2 = Int(arc4random_uniform(6))
        
        
        ballimageView1.image = UIImage(named: ballArray[randomballIndex1])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateballImages()
        
        
    }
}


