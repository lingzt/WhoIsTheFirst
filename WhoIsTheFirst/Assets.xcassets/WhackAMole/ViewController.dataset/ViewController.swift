//
//  ViewController.swift
//  WhackAMole
//
//  Created by Melissa on 10/1/15.
//  Copyright © 2015 Melissa Webster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var image11: UIImageView!
    @IBOutlet weak var image12: UIImageView!
    @IBOutlet weak var image13: UIImageView!
    @IBOutlet weak var image14: UIImageView!
    @IBOutlet weak var image21: UIImageView!
    @IBOutlet weak var image22: UIImageView!
    @IBOutlet weak var image23: UIImageView!
    @IBOutlet weak var image24: UIImageView!
    @IBOutlet weak var image31: UIImageView!
    @IBOutlet weak var image32: UIImageView!
    @IBOutlet weak var image33: UIImageView!
    @IBOutlet weak var image34: UIImageView!
    @IBOutlet weak var image41: UIImageView!
    @IBOutlet weak var image42: UIImageView!
    @IBOutlet weak var image43: UIImageView!
    @IBOutlet weak var image44: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var booLabel: UILabel!
    
    
    var imageArray = [UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13")]
    
    

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func reset(){
        image11.image = UIImage(named: "1.jpg")
        
        //UIImage(named: "1.jpg")
        
        
        // yourImageView.image = UIImage(named: "image.png")
        
        
    
    }
    
    @IBAction func setEasyButton(sender: AnyObject) {
    }

    @IBAction func setSemiButton(sender: AnyObject) {
    }
    
    @IBAction func setHardButton(sender: AnyObject) {
    }

    
    
    


}

