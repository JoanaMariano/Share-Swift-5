//
//  ViewController.swift
//  Share
//
//  Created by Joana on 11/09/2018.
//  Copyright © 2018 Joana. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var mytitle:NSString!
    var url:NSString!
    var message:NSString!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytitle = "Inquirer Mobile \nhttps://www.google.com"
        url = "https://www.google.com"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func send(_ sender: UIButton) {
        var image: UIImage!
        image = UIImage(named: "image.png")
        var urlfinal:NSURL!
        urlfinal =  URL.init(string:url as String)! as NSURL
        let items = [mytitle , image , urlfinal] as [Any]
        let controller = UIActivityViewController(activityItems: items, applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    public func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any
    {
        return ""
    }
    
    public func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivityType) -> Any?
    {
        if activityType == UIActivityType.message {
            return message
        } else if activityType == UIActivityType.mail {
            return message
        } else if activityType == UIActivityType.postToTwitter {
            return message
        } else if activityType == UIActivityType.postToFacebook {
            return URL.init(string:url as String)!
        }
        return message
    }
    
    public func activityViewController(_ activityViewController: UIActivityViewController, subjectForActivityType activityType: UIActivityType?) -> String
    {
        if activityType == UIActivityType.message {
            return mytitle as String
        } else if activityType == UIActivityType.mail {
            return mytitle as String
        } else if activityType == UIActivityType.postToTwitter {
            return mytitle as String
        } else if activityType == UIActivityType.postToFacebook {
            return mytitle as String
        }
        return mytitle as String
        
    }
    
    public func activityViewController(_ activityViewController: UIActivityViewController, thumbnailImageForActivityType activityType: UIActivityType?, suggestedSize size: CGSize) -> UIImage?
    {
        if activityType == UIActivityType.message {
            return UIImage(named: "image.png")
        } else if activityType == UIActivityType.mail {
            return UIImage(named: "image.png")
        } else if activityType == UIActivityType.postToTwitter {
            return UIImage(named: "image.png")
        } else if activityType == UIActivityType.postToFacebook {
            return UIImage(named: "image.png")
        }
        return UIImage(named: "image.png")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

