//
//  ExploreTableViewController.swift
//  CACproject
//
//  Created by Timothy Park on 10/18/17.
//  Copyright © 2017 Timothy Park. All rights reserved.
//

import UIKit

import UIKit

class ExploreTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.separatorStyle = .none
        //tableView.allowsSelection = false
        tableView.register(customCell.self, forCellReuseIdentifier: "cell")
        self.tableView.contentInset = UIEdgeInsets(top: view.frame.height*0.075, left: 0, bottom: 0, right: 0)
        //tableView.register(UITableView.self, forCellReuseIdentifier: "cell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customCell
        cell.label.backgroundColor = UIColor.red
        cell.selectionStyle = .none
        cell.label.textAlignment = NSTextAlignment.center
        //cell.label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        cell.label.frame = CGRect(x: view.frame.width * 0.05, y: (cell.contentView.frame.height-view.frame.height / 9) / 2, width: view.frame.width * 0.9, height: view.frame.height / 9)
        cell.label.layer.cornerRadius = cell.label.frame.height / 8
        // Configure the cell...
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 9 + 15
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected\(indexPath)")
    }
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        tableView.deselectRow(at: IndexPath, animated: true)
//    }
    
    /*
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     let headerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height*0.4))
     headerView.backgroundColor = .cyan
     return headerView
     }
     
     override func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
     return view.frame.height*0.4
     }
     */
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

class customCell: UITableViewCell {
    
    //@IBOutlet weak var view: UIView!
    var followButton = UIButton()
    var label = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //makeTheButton()
        
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight(rawValue: 2))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        label.bounds = CGRect(x: self.bounds.origin.x + 20, y: self.bounds.origin.y, width: self.bounds.size.width, height: self.bounds.size.height)
        //label.frame = CGRect(x: 0, y: 0, width: self.contentView.frame.width, height: self.contentView.frame.height)
        label.text = "Hi bye hi bye hi bye"
        contentView.addSubview(label)
        
    }
    
    /*
    func labelConstraints() {
        label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20)
    }
 */
    override func layoutSubviews() {
        // Set the width of the cell
        super.layoutSubviews()
        contentView.bounds = CGRect(x: self.bounds.origin.x, y: self.bounds.origin.y, width: self.bounds.size.width, height: self.bounds.size.height)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
//
//    func makeTheButton() {
//
//        followButton.translatesAutoresizingMaskIntoConstraints = false
//        //you can do let constraint and then make it equal to that but use what apple provided in documentation
//        followButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
//        contentView.addSubview(followButton)
//
//    }
    
    
}

extension UIColor {
    public convenience init?(hexString: String) {
        let r, g, b, a: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255
                    
                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        return nil
    }
}

