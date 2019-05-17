//
//  ViewController.swift
//  AutoLayOut
//
//  Created by Phạm Huy on 5/28/18.
//  Copyright © 2018 Phạm Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // view red
        let viewRed = UIView()
        view.addSubview(viewRed)
        viewRed.backgroundColor = UIColor.red
        let top = NSLayoutConstraint(item: viewRed, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0)
        let leading1 = NSLayoutConstraint(item: viewRed, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let width = NSLayoutConstraint(item: viewRed, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: viewRed, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        viewRed.autoresizesSubviews = false
        view.addConstraints([top, leading1, width, height])
        viewRed.translatesAutoresizingMaskIntoConstraints = false

        //view blue
        let viewBlue = UIView()
        view.addSubview(viewBlue)
        viewBlue.backgroundColor = UIColor.blue
        let bottom = NSLayoutConstraint(item: viewBlue, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        let leading2 = NSLayoutConstraint(item: viewBlue, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let widthBlue = NSLayoutConstraint(item: viewBlue, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/2, constant: 0)
        let heightBlue = NSLayoutConstraint(item: viewBlue, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1/2, constant: 0)
        viewBlue.autoresizesSubviews = false
        view.addConstraints([bottom, leading2, widthBlue, heightBlue])
        viewBlue.translatesAutoresizingMaskIntoConstraints = false

        //view orager
        let viewOrager = UIView()
        view.addSubview(viewOrager)
        viewOrager.backgroundColor = UIColor.orange
        let topOra = NSLayoutConstraint(item: viewOrager, attribute: .top, relatedBy: .equal, toItem: viewRed, attribute: .bottom, multiplier: 1, constant: 0)
        let trailingOra = NSLayoutConstraint(item: viewOrager, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let widthOra = NSLayoutConstraint(item: viewOrager, attribute: .width, relatedBy: .equal, toItem: viewBlue, attribute: .width, multiplier: 1, constant: 0)
        let heightOra = NSLayoutConstraint(item: viewOrager, attribute: .height, relatedBy: .equal, toItem: viewBlue, attribute: .height, multiplier: 1/2, constant: 0)
        viewOrager.autoresizesSubviews = false
        view.addConstraints([topOra, trailingOra, widthOra, heightOra])
        viewOrager.translatesAutoresizingMaskIntoConstraints = false
        // view green
        let viewGreen = UIView()
        view.addSubview(viewGreen)
        viewGreen.backgroundColor = UIColor.green
        let topGr = NSLayoutConstraint(item: viewGreen, attribute: .top, relatedBy: .equal, toItem: viewOrager, attribute: .bottom, multiplier: 1, constant: 0)
        let leadingGr = NSLayoutConstraint(item: viewGreen, attribute: .leading, relatedBy: .equal, toItem: viewBlue, attribute: .trailing, multiplier: 1, constant: 0)
        let widthGr = NSLayoutConstraint(item: viewGreen, attribute: .width, relatedBy: .equal, toItem: viewBlue, attribute: .width, multiplier: 1/2, constant: 0)
        let heightGr = NSLayoutConstraint(item: viewGreen, attribute: .height, relatedBy: .equal, toItem: viewOrager, attribute: .height, multiplier: 1, constant: 0)
        viewGreen.autoresizesSubviews = false
        view.addConstraints([topGr, leadingGr, widthGr, heightGr])
        viewGreen.translatesAutoresizingMaskIntoConstraints = false
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
