//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Jorge Alejandre on 11/22/18.
//  Copyright © 2018 Jorge Alejandre. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    var post: [String: Any]?
    
    @IBOutlet weak var photoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let post = post {
            if let photos = post["photos"] as? [[String:Any]] {
                let photo = photos[0]
                let originalSize = photo["original_size"] as! [String: Any]
                let urlString = originalSize["url"] as! String
                let url = URL(string: urlString)
                
                photoView.af_setImage(withURL: url!)
            }
      
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
