//
//  ViewController.swift
//  lyndaView
//
//  Created by darshan on 29/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let data:[[String]] = [["data1","data2","data3","data4"],["dataA","dataB","dataC"]]
    let subtitle:[[String]] = [["sub1","sub2","sub3","sub4"],["sub1","sub2","sub3"]]
    let imagelist:[UIImage] = [UIImage(named : "user1")!,UIImage(named : "user3")!]
    let titles:[String] = ["Number","Letters"]
    let customtext:[[String]] = [["customtext1","customtext2","customtext3","customtext4"],["customtextA","customtextB","customtextC",]]
    let color:[UIColor] = [.red,.blue]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count//number of particular section
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]//for header titles
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()  //its not optimize technique
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label.text = customtext[indexPath.section][indexPath.row]//custom lable of custom cell check CustomCell file
        cell.textLabel?.text = data[indexPath.section][indexPath.row]//for cell name
        cell.detailTextLabel?.text = subtitle[indexPath.section][indexPath.row]//for subtitle
        cell.imageView?.image = imagelist[indexPath.section]//.withRenderingMode(UIImageRenderingMode.alwaysTemplate)//set imageview here insted of in main.stroyboard
       // cell.imageView?.tintColor = color[indexPath.section]//different color of imageview
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.section][indexPath.row])")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

