//
//  ImageTimelineViewController.swift
//  carousel
//
//  Created by Francisco Guzman on 5/17/15.
//  Copyright (c) 2015 Francisco Guzman. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {
    
    @IBOutlet weak var imageScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageScrollView.contentSize = CGSize(width: 320, height: 1600)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
