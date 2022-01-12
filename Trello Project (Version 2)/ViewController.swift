//
//  ViewController.swift
//  Trello Project (Version 2)
//
//  Created by Andrew Nowak on 1/6/22.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
// MARK: - Outlets, Constants, and Variables
    @IBOutlet weak var trelloTableView: UITableView!
    @IBOutlet weak var itemTextField: UITextField!
    var items = [Item()]
    var itemAdded = true
    
// MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        trelloTableView.dataSource = self
        trelloTableView.delegate = self
        
        getData()
    }
// MARK: - Functions, Actions, etc.
//    override func viewWillAppear(_ animated: Bool) {
//        trelloTableView.reloadData()
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = trelloTableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        if itemAdded {
            let item = Item()
            item.name = itemTextField.text!
            items.append(item)
            trelloTableView.reloadData()
            updateData()
        }
    }
    
    public func getData() {
        items.removeAll()
        let database = Database.database().reference().child("Items")
        database.observeSingleEvent(of: .value) { snapshot in
            for data in snapshot.children.allObjects as! [DataSnapshot] {
                let itemClass = Item()
                let name = data.value as! String
                
                itemClass.name = name
                self.items.append(itemClass)
                
            }
        }
    }
    
    func updateData() {
        let database = Database.database().reference().child("Items")
        database.child(itemTextField.text!).setValue(itemTextField.text!)
    }
}

