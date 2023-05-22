//
//  ViewController.swift
//  DiceAssessment
//
//  Created by DA Mac 141 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftImage: UIImageView!
    @IBOutlet weak var RightImage: UIImageView!
    
    var LeftDiceNumber = 5
    var RightDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        var array = [#imageLiteral(resourceName: "LeftImage"), #imageLiteral(resourceName: "RightImage"), #imageLiteral(resourceName: "Image3") , #imageLiteral(resourceName: "Image4") , #imageLiteral(resourceName: "Image5") , #imageLiteral(resourceName: "Image6")]
                LeftImage.image = array[Int.random(in: 0...5)]
                RightImage.image = array[Int.random(in: 0...5)]
    }
    
}

