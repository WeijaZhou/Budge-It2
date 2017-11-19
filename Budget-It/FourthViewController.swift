//
//  SecondViewController.swift
//  Budget-It
//
//  Created by Weija Zhou on 2017-11-18.
//  Copyright © 2017 Weija Zhou. All rights reserved.
//
import UIKit
import CoreData
class FourthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var list:[String] = []
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (list.count)
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
    }
    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        list.removeAll()
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Entry")
        
        request.returnsObjectsAsFaults = false
        do{
            let results = try context.fetch(request)
            
            if results.count>0{
                for result in results as! [NSManagedObject]{
                    let itemName = result.value(forKey: "itemName") as? String
                    var price = result.value(forKey: "price") as? String
                    let category = result.value(forKey: "category") as? String
                    if (price != nil){
                        
                    }
                    else{
                        price = "0"
                    }
                    print(itemName)
                    print(category)
                    print(price)
                    //                    let finalString1 = itemName! + "     "
                    //                    let finalString2 = price! + "      "
                    //                    let finalString3 = finalString1 + finalString2 + category!
                    //                    list.append(finalString3)
                    
                }
            }
        }
        catch{
            
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        list.removeAll()

        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Entry")
        var newPrice = "0"
        request.returnsObjectsAsFaults = false
        do{
            let results = try context.fetch(request)
            
            if results.count>0{
                for result in results as! [NSManagedObject]{
                    let itemName = result.value(forKey: "itemName") as? String
                    if let price = result.value(forKey: "price") as? String{
                        var newPrice = price
                    }
                    let category = result.value(forKey: "category") as? String
                   
                    print(itemName)
                    print(category)
                    print(newPrice)
                    print ("FINAL STRING -----")
                    //let finalString1 = itemName! + "     "
                    let finalString2 = newPrice + "      "
                    //let finalString3 = finalString1 + finalString2 + category!
                    let finalString3 =  finalString2 + category!
                    list.append(finalString3)
                    
                }
            }
        }
        catch{
            
        }
        
        

    
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //    override func viewDidDisappear(_ animated: Bool) {
    //
    //    }
    //
    //    
    
    
    
}