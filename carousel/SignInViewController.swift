//
//  SignInViewController.swift
//  carousel
//
//  Created by Francisco Guzman on 5/16/15.
//  Copyright (c) 2015 Francisco Guzman. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var loginTextView: UIImageView!
    @IBOutlet weak var credentialFieldsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func pressBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    @IBAction func pressSignIn(sender: AnyObject) {
        view.endEditing(true)
        
        if emailTextField.text=="" && passwordTextField.text=="" {
            var alertView = UIAlertView(title: "Email requested", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
            alertView.show()
        } else if passwordTextField.text=="" {
            var alertView = UIAlertView(title: "Password requested", message: "Please enter a password", delegate: nil, cancelButtonTitle: "OK")
            alertView.show()
        } else if emailTextField.text=="" {
            var alertView = UIAlertView(title: "Email requested", message: "Please enter your email address", delegate: nil, cancelButtonTitle: "OK")
            alertView.show()
        } else if emailTextField.text=="f@me.com" && passwordTextField.text=="password" {
            var signingInAlert = UIAlertView(title: "Signing In...", message: nil, delegate: nil, cancelButtonTitle: nil)
            signingInAlert.show()
            
            delay(2, { () ->  () in
                signingInAlert.dismissWithClickedButtonIndex(0, animated: true)
                self.performSegueWithIdentifier("signInSuccess", sender: self)
            })
        } else {
            var signingInAlert = UIAlertView(title: "Signing In...", message: nil, delegate: nil, cancelButtonTitle: nil)
            signingInAlert.show()
            
            delay(2, { () ->  () in
                signingInAlert.dismissWithClickedButtonIndex(0, animated: true)
                var alertView = UIAlertView(title: "Sign In Failed", message: "Incorrect email or password", delegate: nil, cancelButtonTitle: "OK")
                alertView.show()
            })
        }
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            self.containerView.center.y -= kbSize.height
            self.loginTextView.center.y -= 70
            self.credentialFieldsView.center.y -= 70
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            self.containerView.center.y += kbSize.height
            self.loginTextView.center.y += 70
            self.credentialFieldsView.center.y += 70
            }, completion: nil)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
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
