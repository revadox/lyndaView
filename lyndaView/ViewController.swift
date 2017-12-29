//
//  ViewController.swift
//  lyndaView
//
//  Created by darshan on 29/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let data:[String] = ["data1","data2","data3","data4"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count//number of cell we want
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()  //its not optimize technique
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
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

