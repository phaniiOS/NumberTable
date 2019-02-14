//
//  ViewController.swift
//  NumberTable
//
//  Created by IMCS2 on 2/12/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let it: Int = 50
    var num: Int = 0
    @IBOutlet weak var SliderView: UILabel!
    @IBOutlet weak var TableViewOutlet: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return it
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let NumTabCell = tableView.dequeueReusableCell(withIdentifier: "NumTabCell", for: indexPath) as UITableViewCell
        while indexPath.row <= it{
            NumTabCell.textLabel?.text = "\(num) * \(indexPath.row + 1) = \(num * (indexPath.row + 1))"
            return NumTabCell
        }
        return NumTabCell
    }
    
    @IBAction func Slider(_ sender: UISlider) {
        num = Int(sender.value)
        SliderView.text = "The number table for \(num) is displayed below"
        TableViewOutlet.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

