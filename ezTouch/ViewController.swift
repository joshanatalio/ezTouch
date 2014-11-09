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
    let touchView = UIView()
    let backView = UIView()
    let cancelButton = UIButton()
    let alternatePasswordButton = UIButton()
    let touchIDLabel = UILabel()
    let computerIDLabel = UILabel()
  
    
    func loadItem(name: String){
        nameLabel.text = name
    }
    
    @IBAction func clickTouchIDButton(sender: AnyObject) {
        println("Tried to add new view" + self.nameLabel.text!)
        let screenSize: CGRect = UIScreen.mainScreen().bounds;
        
        let touchIDImage : UIImage! = UIImage(named: "TouchID-Blue")
        
        self.touchView.frame = CGRect(x:(screenSize.width-238)/2 , y: 40, width: 238, height: 221)
        self.backView.frame = CGRect(x:(screenSize.width-238)/2 , y: 40, width: 238, height: 221)
        var imageV : UIImageView = UIImageView(image: touchIDImage)
        imageV.frame = CGRectMake((238-(touchIDImage.size.width/2))/2 , 30, touchIDImage.size.width/2, touchIDImage.size.height/2)
        
        self.computerIDLabel.text = self.nameLabel.text!
        self.computerIDLabel.frame = CGRect(x: (238-150)/2, y: 85, width: 150, height: 31)
        self.computerIDLabel.font = UIFont(name: self.touchIDLabel.font.fontName, size: 12)
         self.computerIDLabel.textAlignment = NSTextAlignment.Center
        //imageV.center = self.touchView.center
        //imageV.layer.borderWidth = 0;
        self.touchIDLabel.font = UIFont(name: self.touchIDLabel.font.fontName, size: 14)
        self.touchIDLabel.text = "Touch ID"
        self.touchIDLabel.frame = CGRect(x: (238-70)/2, y: 65, width: 70, height: 31)
        self.touchIDLabel.textAlignment = NSTextAlignment.Center
        
        self.touchView.layer.cornerRadius = 20
        self.backView.layer.cornerRadius = 20
        self.backView.backgroundColor  = UIColor.whiteColor()
        
        self.touchView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.05)
        self.touchView.clipsToBounds = true
        
        self.cancelButton.frame =  CGRect(x:-2 , y: 191, width: 248, height: 31)
        self.cancelButton.setTitle("Cancel", forState: UIControlState.Normal)
        self.cancelButton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
        self.cancelButton.layer.borderWidth = 0
        self.cancelButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal )
        
        
        
        self.alternatePasswordButton.frame =  CGRect(x:-2 , y: 160, width: 248, height: 31)
        self.alternatePasswordButton.setTitle("Enter Password", forState: UIControlState.Normal)
        self.alternatePasswordButton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
        self.alternatePasswordButton.layer.borderWidth = 1;
        self.alternatePasswordButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal )
      
        self.addSubview(backView)
        self.addSubview(touchView)
        self.touchView.addSubview(self.alternatePasswordButton)
        self.touchView.addSubview(self.cancelButton)
        self.touchView.addSubview(imageV)
        self.touchView.addSubview(self.touchIDLabel)
        self.touchView.addSubview(self.computerIDLabel)
        println("Tried to add new view")
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
    /*
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell:CustomTableViewCell = tableView.cellForRowAtIndexPath(indexPath) as CustomTableViewCell
        cell.highlighted = false;
        cell.backgroundColor = UIColor(red:0.0, green:0.0,blue:0.0,alpha:0.1)// transparent color
        println("You selected cell #\(indexPath.row)!")
    }*/
}
