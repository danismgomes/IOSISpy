//
//  ViewController.swift
//  ISpy
//
//  Created by Danielle Gomes on 2019-08-29.
//  Copyright © 2019 Danielle Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        
        return imageView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width
        let heightScale = size.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
        
    }
    
   


}

