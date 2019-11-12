//
//  ViewController.swift
//  SwiftTopics November 12 2019
//
//  Created by Margiett Gil on 11/12/19.
//  Copyright © 2019 Margiett Gil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var swiftTableView: UITableView!
    let swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
                       "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
                       "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
                       "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
                       "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        swiftTableView.dataSource = self
    }
    
        
    }
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Swift Topics", for: indexPath)
    // get object using indexPath
        let swiftTopic = swiftTopics[indexPath.row]
        
        // configuring the cell
        cell.textLabel?.text = swiftTopic
        
    return cell
    }
    
    
    

}
// get a cell using dequeueReusableCell
// get object using indexPath
// configure the cell (cell.textable?.text = swiftTopic

