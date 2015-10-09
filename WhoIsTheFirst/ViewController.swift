//
//  ViewController.swift
//  WhoIsTheFirst
//
//  Created by ling on 10/8/15.
//  Copyright © 2015 GroupFirst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var whoIsFunnier: UILabel!
    
    var studentImageArray = [UIImage(named: "0"),UIImage(named: "1"),UIImage(named: "2")
        ,UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"), UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "16")]
    
    var studentNameArray = [
        "Grumpy Cat",
        "Amelia",
        "Andrew",
        "Brian",
        "Charles",
        "Craig",
        "David",
        "Donovan",
        "Erika",
        "George",
        "Joel",
        "Kate",
        "Ling",
        "Melissa",
        "Robb",
        "Tim",
                "Tim"
    ]
    
    var studentCountArray = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var timer = NSTimer()
    var seconds = 30
    var imagePicked = UIImage(named: "0")
    var index = 0
    var index1 = 0
    var index2 = 0
    var maxCountIndex = 0
    var studentNameindex = 0
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupGame(){
        seconds = 10
        studentCountArray = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("subtractTime"), userInfo: nil, repeats: true)
        timerLabel.text = "Time: \(seconds)"
        changePictures()
    }
    
    
    func changePictures(){
        randomPhotoPick()
        imageView1.image =  imagePicked
        index1 = index
        print(index1)
        randomPhotoPick()
        index2 = index
        if index2 == index1 {
        randomPhotoPick()
        }
        else {
        }
        imageView2.image = imagePicked


        print(index2)
    }
    
    
    func subtractTime() {
        seconds--
        timerLabel.text = "Time: \(seconds)"
        
        if(seconds == 0) {
            timer.invalidate()
            findWinner()
            
                let alert = UIAlertController(title: "Times Up!",
                    message: "The funniest person is \(studentNameArray[maxCountIndex])",
                    preferredStyle: UIAlertControllerStyle.Alert)
                
                alert.addAction(UIAlertAction(title: "Play Again",
                    style :UIAlertActionStyle.Default,
                    handler: { action in self.setupGame()
                }))
                presentViewController(alert, animated: true, completion:nil)
        }
        
        
        
    }
    
    
    func findWinner() {
        for (index, value) in studentCountArray.enumerate() {
            if value == studentCountArray.maxElement(){
            maxCountIndex = index
            }
        
        }
    print("\(maxCountIndex) is the max")
    
    }

    
    
    
    func randomPhotoPick() {
        var randomNumber = Int()
        let unsignedArrayCount = UInt32(studentImageArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        randomNumber = Int(unsignedRandomNumber)
        imagePicked = studentImageArray[randomNumber]
        index = randomNumber
    }
    
        
        
        

    @IBAction func tap1Selected(sender: AnyObject) {
        studentCountArray[index1] = studentCountArray[index1]+1
        print(studentCountArray)
        changePictures()

    }
    
    @IBAction func tap2Selected(sender: AnyObject) {
        studentCountArray[index2] = studentCountArray[index2]+1
        print(studentCountArray)
        changePictures()
    }

    @IBAction func startGame(sender: AnyObject) {
        timer.invalidate()
        setupGame()
        
        
    }

}

