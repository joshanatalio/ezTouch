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
    
    func loadItem(name: String){
        nameLabel.text = name
    }
    
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
 @IBOutlet var tableView: UITableView!
    var items: [String] = ["We", "Heart", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        
        tableView.registerNib(nib, forCellReuseIdentifier: "customCell")
        
        self.tableView.rowHeight = 300
        self.tableView.backgroundColor = UIColor(red:0.0, green:0.0,blue:0.0,alpha:0.1)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "Background"))
       // self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        var cell:CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as CustomTableViewCell
        // this is how you extract values from a tuple
        //var (title, image) = items[indexPath.row]
        var 🐻 = "Noah’s Mac Book Pro - 1"
        
        cell.loadItem(🐻)
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.backgroundColor = UIColor(red:0.0, green:0.0,blue:0.0,alpha:0.1)// transparent color
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell:CustomTableViewCell = tableView.cellForRowAtIndexPath(indexPath) as CustomTableViewCell
        cell.highlighted = false;
        cell.backgroundColor = UIColor(red:0.0, green:0.0,blue:0.0,alpha:0.1)// transparent color
        println("You selected cell #\(indexPath.row)!")
    }
}
