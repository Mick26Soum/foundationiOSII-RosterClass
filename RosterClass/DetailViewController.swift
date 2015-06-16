//
//  DetailViewController.swift
//  RosterClass
//
//  Created by Mick Soumphonphakdy on 6/15/15.
//  Copyright (c) 2015 Mick Soum. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedStudent : Person!

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.firstName.text = selectedStudent.firstName
        self.lastName.text = selectedStudent.lastName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
