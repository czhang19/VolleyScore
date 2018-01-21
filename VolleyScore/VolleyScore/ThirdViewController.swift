//
//  ThirdViewController.swift
//  VolleyScore
//
//  Created by Cynthia Zhang on 1/21/18.
//  Copyright © 2018 Cynthia Zhang. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var kill_dest:[Double]?
    var hittingE_dest:[Double]?
    var hittingA_dest:[Double]?
    var hittingEfficiencies: [Double]?
    
    var ace_dest:[Double]?
    var servingE_dest:[Double]?
    var servingA_dest:[Double]?
    
    
    @IBOutlet weak var p1kill: UILabel!
    
    @IBOutlet weak var p1error: UILabel!
    
    @IBOutlet weak var p1attack: UILabel!
    
    @IBOutlet weak var p1perc: UILabel!
    
    @IBOutlet weak var p2kill: UILabel!
    
    @IBOutlet weak var p2errors: UILabel!
    
    @IBOutlet weak var p2attacks: UILabel!
    
    @IBOutlet weak var p2perc: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p1kill.text = String(format:"%.2f", kill_dest![0])
        p1error.text = String(format:"%.2f", hittingE_dest![0])
        p1attack.text = String(format:"%.2f", hittingA_dest![0])
        p1perc.text = String(format:"%.2f", hittingEfficiencies![0])
        p2kill.text = String(format:"%.2f", kill_dest![1])
        p2errors.text = String(format:"%.2f", hittingE_dest![1])
        p2attacks.text = String(format:"%.2f", hittingA_dest![1])
        p2perc.text = String(format:"%.2f", hittingEfficiencies![1])
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
