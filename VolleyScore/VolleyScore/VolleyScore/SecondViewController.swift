//
//  SecondViewController.swift
//  VolleyScore
//
//  Created by Cynthia Zhang on 1/21/18.
//  Copyright © 2018 Cynthia Zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var Player_1: UILabel!
    @IBOutlet weak var Player_2: UILabel!
    @IBOutlet weak var Mean_1: UILabel!
    @IBOutlet weak var Mean_2: UILabel!
    var mean:[String]?
    var play1name:String?
    var play2name:String?
    
    var kill_dest:[Double]?
    var hittingE_dest:[Double]?
    var hittingA_dest:[Double]?
    var hittingEfficiencies: [Double]?
    
    var ace_dest:[Double]?
    var servingE_dest:[Double]?
    var servingA_dest:[Double]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Player_1.text = play1name
        Player_2.text = play2name
        Mean_1.text = mean?[0]
        Mean_2.text = mean?[1]
        
        // print(hittingEff_dest as Any)
        //if let meanToDisplay = mean {
        //  displayMean.text = meanToDisplay
        //}
        
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

