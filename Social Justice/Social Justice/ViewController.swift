//
//  ViewController.swift
//  Social Justice
//
//  Created by Girls Who Code on 8/1/18.
//  Copyright © 2018 Girls Who Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    /*override func viewWillAppear(_ animated: Bool) {
        print("I'm here!")
    }*/
    
    /*override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true;
        print("I'm here!")
        
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
