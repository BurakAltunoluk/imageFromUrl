//
//  ViewController.swift
//  imageFromUrl
//
//  Created by Burak Altunoluk on 15/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
     getImageFromUrl()
    }

    func getImageFromUrl() {
        let url = URL(string: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/photo-of-keanu-reeves-news-photo-1576621075.jpg?crop=0.840xw:0.603xh;0.103xw,0.0647xh&resize=980:*")
        
        do {
            
       let imageData = try Data(contentsOf: url!)
        
        imageView.image = UIImage(data: imageData)
           
        } catch {
            print("error")
        }
    
        
        
    }
    
    
}

