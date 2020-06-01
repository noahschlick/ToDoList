//
//  ViewController.swift
//  ToDoList
//
//  Created by Noah Schlickeisen on 6/1/20.
//  Copyright © 2020 Noah Schlickeisen. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Get Chorizo", "Get Tuna", "Get Brocolli"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    //MARK - Tableview datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
}

