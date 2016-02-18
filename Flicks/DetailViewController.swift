//
//  DetailViewController.swift
//  Flicks
//
//  Created by Kolton on 2/8/16.
//  Copyright © 2016 Kolton. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width , height: infoView.frame.origin.y + infoView.frame.size.height)
        
        titleLabel.text = movie["title"] as? String
        overviewLabel.text = movie["overview"] as? String
        overviewLabel.sizeToFit()

        let baseURL = "http://image.tmdb.org/t/p/w500/"
        if let posterPath = movie["poster_path"] as? String{
            let imageURL = NSURL(string: baseURL + posterPath)
            posterImage.setImageWithURL(imageURL!)
        }
        
        
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
