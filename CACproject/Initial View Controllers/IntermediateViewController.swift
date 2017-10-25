//
//  IntermediateViewController.swift
//  CACproject
//
//  Created by Timothy Park on 10/23/17.
//  Copyright © 2017 Timothy Park. All rights reserved.
//

import UIKit

class intermediateViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setTableView()
        //self.setNavBar()
        //self.setFloatingButton()
        
        print("hi")
        
        //when view starts
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        //you can dispose of stuff here
    }
    
    func setTableView() {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
//    func setNavBar() {
//
//            navigationBarz.topItem?.title = "Categories"
//            navigationBarz.frame.size = CGSize(width: self.view.frame.width, height: 100)
//
//
//        //self.transitioningDelegate
//        //self.translatesAutoresizingMaskIntoConstraints = false
//
//    }
    
    @IBAction func moveToNext() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let moveToTabBar = storyboard.instantiateViewController(withIdentifier: "intermediateViewController")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = moveToTabBar
    }
    
}

class customCell1: UITableViewCell {
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        <#code#>
//    }
//
}

