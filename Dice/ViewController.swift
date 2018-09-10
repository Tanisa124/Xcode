//
//  ViewController.swift
//  Dice
//
//  Created by Yotsatornbenz on 6/9/2561 BE.
//  Copyright © 2561 BB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // it is array type
    let diceArrayNumber: [String] = ["cherprang","pun","noey","orn","music","kaimook"]
    
    // Link Roll button, textShow, diceImage, and anything you need
    @IBOutlet weak var congrat: UILabel!
    @IBOutlet weak var mem1: UIImageView!
    
    
    
    // Link Roll button function IBAction
    @IBAction func role(_ sender: Any) {
        let x : String = diceArrayNumber.getRandomElement()!
        mem1.image = UIImage(named: x)
        congrat.text = x
        
    }
    
    
    // do this afte you've done dice Random
    // create button to link SecondViewController
    // create new viewController from object library
    // add new Cocoa Touch File to be SecondViewController file
    // link viewcontroller design to viewController file in utilities area
    // create button link to second view (IBAction) by dragging to SecondViewController design
    // it will occur Segue >> do set the segue identifier of Segue
    // performSegue >> show the second view
    // let set segue identifier to be the name you set
    
  
    
    
    @IBAction func nextPage(_ sender: Any) {
        performSegue(withIdentifier: "link", sender: self)
    }
    
    
    
    
//    @IBAction func clickSwitch(_ sender: Any) {
//        if switchSwitch.isOn {
//            switchButton.isHidden = false;
//        }else{
//            switchButton.isHidden = true;
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // set up the logo image as the fist image of Dice
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // creating function to random dice
    // use getRandomElement()
    
    

    
    // do randomisation when motionEnded >> guide func montionEnded

    
}

extension Array {
    func getRandomElement() -> Element? {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

