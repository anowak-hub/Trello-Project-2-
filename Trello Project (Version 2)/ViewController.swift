//
//  ViewController.swift
//  Trello Project (Version 2)
//
//  Created by Andrew Nowak on 1/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
// MARK: - Outlets, Constants, and Variables
    @IBOutlet weak var trelloTableView: UITableView!
    @IBOutlet weak var itemTextField: UITextField!
    var items = [Item]()
    
// MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        trelloTableView.dataSource = self
        trelloTableView.delegate = self
        
    }
// MARK: - Functions, Actions, etc.

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = trelloTableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        
    }
    
}

