//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Daniel Morales on 9/18/19.
//  Copyright © 2019 Daniel Morales. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    var url:String!
    var photo:[String:Any]?
    @IBOutlet weak var photoDetailView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpImageView()
        // Do any additional setup after loading the view.
    }
    
    private func setUpImageView(){
        guard let photo = photo else {return}
        if let photos = photo["photos"] as? [[String:Any]]{
            let photo = photos[0]
            guard let originalSize = photo["original_size"] as? [String:Any] else {return}
            guard let urlString = originalSize["url"] as? String else {return}
            guard let url = URL(string: urlString) else {return}
            photoDetailView.af_setImage(withURL: url)
            
        }
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
