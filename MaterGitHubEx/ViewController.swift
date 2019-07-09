//
//  ViewController.swift
//  MaterGitHubEx
//
//  Created by Mac HD on 09/07/19.
//  Copyright © 2019 karvy. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var custom_tableView: UITableView!
    var detail_array = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        detail_array = ["a","b","c"]
        
        let view1 = UIView()
        view1.frame = CGRect(x: 10, y: 10, width: 100, height: 200)
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detail_array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"Cell") as! UITableViewCell
        cell.textLabel?.text = (detail_array.object(at:indexPath.row) as! String)
        return cell
    }
   

}

