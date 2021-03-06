//
//  ListViewController.swift
//  RosterClass
//
//  Created by Mick Soumphonphakdy on 6/14/15.
//  Copyright (c) 2015 Mick Soum. All rights reserved.
//

import UIKit



class ListViewController: UITableViewController {
    
    var students = [Person]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self

        let mick = Person(firstName: "Mick", lastName: "Soum")
        let thatDude = Person(firstName: "Who", lastName: "Is He?")
        let studentOne = Person(firstName: "John", lastName: "Doe")
        
        self.students.append(thatDude)
        self.students.append(mick)
        self.students.append(studentOne)
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.students.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        
        let studentsToDisplay = self.students[indexPath.row]
        
        cell.textLabel?.text = studentsToDisplay.firstName + " " + studentsToDisplay.lastName
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        
        //check segue identifier
        if segue.identifier == "showDetail"{
            
            let detailViewController = segue.destinationViewController as! DetailViewController
            
            //get indexPath of selectedRow
            let indexPath = self.tableView.indexPathForSelectedRow();
            let selectedStudent = self.students[indexPath!.row]
            
            detailViewController.selectedStudent = selectedStudent
            
            
        }
        
        
    }
    

}
