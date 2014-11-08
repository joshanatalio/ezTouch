//
//  ViewController.swift
//  ezTouch
//
//  Created by Josh Anatalio on 11/8/14.
//  Copyright (c) 2014 Josh Anatalio. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var mainCellView: UIView!
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var touchButton:UIButton!
    @IBOutlet var settingButton:UIButton!
    
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
 @IBOutlet var tableView: UITableView!
    var items: [String] = ["We", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 250
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Background"))
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        var mainCellView = UIView(frame: CGRectMake(100, 200, 250, 250))
        cell.backgroundColor = UIColor(red:0.0, green:0.0,blue:0.0,alpha:0.1)// transparent color
        cell.textLabel.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
    }
}
