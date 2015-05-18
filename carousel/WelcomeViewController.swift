//
//  WelcomeViewController.swift
//  carousel
//
//  Created by Francisco Guzman on 5/16/15.
//  Copyright (c) 2015 Francisco Guzman. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if pageControl.currentPage == 3 {
            pageControl.hidden = true
        }
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
