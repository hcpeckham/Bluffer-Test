//
//  ReadyViewController.swift
//  Bluffer
//
//  Created by Mariya on 2/25/16.
//  Copyright © 2016 Blake Hudelson. All rights reserved.
//

import UIKit

class ReadyViewController: UIViewController {

    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var gameViewController: GameViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
  
    
    @IBAction func onStart(sender: UIButton) {
        
        print("ReadyView - Team Describing: ", team.text)
        print("ReadyView - Current Round: ", round)
        
        
        //        gameViewController.showImage()
        // Reveal the image / call GameViewController method "showImage"
        gameViewController.showImage()
    }
    
    
//    @IBAction func onReady(sender: AnyObject) {
//        
//        print("ReadyView - Team Describing: ", team.text)
//        print("ReadyView - Current Round: ", round)
//        
//        
//        //        gameViewController.showImage()
//        // Reveal the image / call GameViewController method "showImage"
//        gameViewController.showImage()
//        
//    }

  
    override func viewDidAppear(animated: Bool) {
        
        startButton.transform = CGAffineTransformMakeScale(0.95, 0.95)
        startButton.alpha = 0.75
        
        
        UIView.animateWithDuration(0.8, delay: 0, options: [UIViewAnimationOptions.Repeat, UIViewAnimationOptions.Autoreverse], animations: { () -> Void in self.startButton.transform = CGAffineTransformMakeScale(1, 1); self.startButton.alpha = 1}, completion: nil)
     
        
        
        

        reloadData()
    }
    
    
    func reloadData() {
        if round > 0 && round % 2 == 0 {
            // Even Round = Team 2 describes
            team.text = "TEAM 2  GET  READY!"
        }
        else
        {
            // Odd Round = Team 1 describes
            team.text = "TEAM 1  GET  READY!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
