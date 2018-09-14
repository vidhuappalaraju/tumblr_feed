//
//  PhotoDetailsViewController.swift
//  tumblr_feed
//
//  Created by Vidhu Appalaraju on 9/13/18.
//  Copyright © 2018 Vidhu Appalaraju. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    @IBOutlet weak var feedImageView: UIImageView!
     var post: [String: Any]?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let post = post {
            if let photos = post["photos"] as? [[String: Any]] {
                let photo = photos[0]
                let originalSize = photo["original_size"] as! [String: Any]
                let urlString = originalSize["url"] as! String
                let url = URL(string: urlString)
                feedImageView.af_setImage(withURL: url!)
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
