//
//  CompleteToDoViewController.swift
//  ToDo
//
//  Created by Hana Stauss on 6/4/20.
//  Copyright © 2020 Hana Stauss. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo?.name

    }
    
    @IBAction func completeTapped(_ sender: Any) {
      guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
          return
      }

      let context = appDelegate.persistentContainer.viewContext

      if let theToDo = selectedToDo {
          context.delete(theToDo)
          navigationController?.popViewController(animated: true)
      }
    }
    

}
