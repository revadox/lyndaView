//
//  File.swift
//  lyndaView
//
//  Created by darshan on 29/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

import UIKit

class ViewController1 : UIViewController,UITableViewDataSource {
    
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
}
