//
//  IntroViewController.swift
//  carousel
//
//  Created by Francisco Guzman on 5/12/15.
//  Copyright (c) 2015 Francisco Guzman. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainScrollView.contentSize = CGSize(width: 320, height: 1136)
        
        // Do any additional setup after loading the view.
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
