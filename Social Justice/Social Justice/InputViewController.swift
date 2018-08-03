//
//  InputViewController.swift
//  Social Justice
//
//  Created by Girls Who Code on 8/1/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit
import CoreData


class InputViewController: UIViewController {

    
    @IBOutlet weak var textArea: UITextField!
    
    
    
    @IBAction func enter(_ sender: Any) {
        
        if(textArea.text != " "){
            
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context: context)
            newTask.taskName = textArea?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            
            
        }

    }
    
    
    
    
    /*override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false;
        
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
