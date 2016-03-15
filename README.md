# Bluffer-Test


Tim, we are having trouble getting our card flip to work. This is the specific block of code


UIView.transitionWithView(readyViewController.view, duration: 1.0, options: .TransitionFlipFromRight, animations: { () -> Void in
            self.readyViewController.view.addSubview(self.currentCategoryViewController.view)
            }) { (finished) -> Void in
                self.readyViewController.presentViewController(self.currentCategoryViewController, animated: false, completion: nil)
        }
       
       
       
       
       
