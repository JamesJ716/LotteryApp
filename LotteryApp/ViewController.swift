//
//  ViewController.swift
//  LotteryApp
//
//  Created by James Jermann on 3/15/21.
//  Copyright © 2021 James Jermann. All rights reserved.
//

import UIKit
 var weekNumber = 0
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId")
        cell?.textLabel?.text = "It is week \(weekNumber)"
        cell?.detailTextLabel?.text = "Your numbers are \(array[indexPath.row])"
        
        return cell!
    }
    
    
    @IBOutlet weak var viewControl: UITableView!
    var array: [[Int]] = []
    var weekArray: [Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...52{
            weekNumber += 1
        }
        draw()


}
    func draw(){
        for _ in 1...52{
            
            for _ in 1...5 {
                let h = Int.random(in: 1...70)
                print(h)
                weekArray.append(h)
                
            }
            let u = Int.random(in: 1...25)
            weekArray.append(u)
            array.append(weekArray)
            weekArray = []
            
        }
        
        print(weekArray)
        print(array)
        print(array.count)
        print(weekNumber)
    }
}
