//
//  DetailViewController.swift
//  ClassClock2
//
//  Created by Ericka Allen on 7/19/17.
//  Copyright © 2017 Ericka Allen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var reminderTitleField: UITextField!
    
    @IBOutlet weak var reminderNotesField: UITextField!
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        let date = datePicker.date
        
        let dateAndTimeFormatter = DateFormatter()
        dateAndTimeFormatter.dateFormat = "M/d/yy h:mma"
        
        let formattedDateAndTime = dateAndTimeFormatter.string(from: date)
        
        print(formattedDateAndTime)
        
        
        reminder.dateAndTime = formattedDateAndTime
        reminder.title = reminderTitleField.text
        reminder.notes = reminderNotesField.text
        
    }
    
    @IBAction func cancelButton(_ sender: Any) {
    }
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.title
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Reminder? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

