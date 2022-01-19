//
//  ViewController.swift
//  agingPeople
//
//  Created by munira almallki on 28/02/1443 AH.
//

import UIKit

struct Person{
    let name : String
    let age : Int
}
class ViewController: UIViewController {
    
    let angingPeople : [Person] = [
        Person(name: "Munira" , age:Int.random(in: 5...95)),
        Person(name: "Daad", age: Int.random(in: 5...95)),
        Person(name: "Afaf", age: Int.random(in: 5...95)),
        Person(name: "Saad", age: Int.random(in: 5...95)),
        Person(name: "Sara", age: Int.random(in: 5...95)),
        Person(name: "Muna", age: Int.random(in: 5...95)),
        Person(name: "Nura", age: Int.random(in: 5...95)),
        Person(name: "Rakan", age: Int.random(in: 5...95)),
        Person(name: "Rawan", age: Int.random(in: 5...95)),
        Person(name: "Luna", age: Int.random(in: 5...95)),
        Person(name: "Ahamd", age: Int.random(in: 5...95)),
        Person(name: "Khaled", age: Int.random(in: 5...95))]
   
    @IBOutlet weak var tableView: UITableView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return angingPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "agingPeople", for: indexPath)
        cell.textLabel?.text = angingPeople[indexPath.row].name
        cell.detailTextLabel?.text = "\(angingPeople[indexPath.row].age)"
        return cell
    }
    
}
