//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Joshua Draper on 4/2/18.
//  Copyright © 2018 Joshua Draper. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        if let identifier = seque.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let imageVC = seque.destination.contents as? ImageViewController{
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        }
        
        return self
    }
}
