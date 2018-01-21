//
//  ViewController.swift
//  VolleyScore
//
//  Created by Cynthia Zhang on 1/21/18.
//  Copyright © 2018 Cynthia Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //PASSING
    var pass0 = 0
    var pass1 = 0
    var pass2 = 0
    var pass3 = 0
    
    @IBAction func pass_0(_ sender: UIButton) {
        pass0 += 1
    }
    @IBAction func pass_1(_ sender: UIButton) {
        pass1 += 1
    }
    @IBAction func pass_2(_ sender: UIButton) {
        pass2 += 1
    }
    @IBAction func pass_3(_ sender: UIButton) {
        pass3 += 1
    }
    
    //HITTING
    var kill = 0
    var hittingE = 0
    var hittingA = 0
    
    
    @IBAction func add_kill(_ sender: UIButton) {
        kill += 1
    }
    
    @IBAction func hitting_E(_ sender: UIButton) {
        hittingE += 1
    }
    
    @IBAction func hitting_A(_ sender: UIButton) {
        hittingA += 1
    }
    
    //SERVING
    var ace = 0
    var servingE = 0
    var servingA = 0
    
    @IBAction func add_ace(_ sender: UIButton) {
        ace += 1
    }
    
    @IBAction func serving_E(_ sender: UIButton) {
        servingE += 1
    }
    
    @IBAction func serving_A(_ sender: UIButton) {
        servingA += 1
    }
    
    //VIEW FUNCTION
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //SEE DATA SEGUE
    @IBAction func see_data(_ sender: UIButton) {
        performSegue(withIdentifier: "secondVC", sender: self)
    }
    
    //SEGUE FOR MEAN VALUE
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            
            //passing stats
            let sum1 = Double(0 + (pass1) + (2*pass2) + (3*pass3))
            let sum2 = Double(pass0+pass1+pass2+pass3)
            var mean_pass_doub : Double
            
            if sum2 != 0
            {mean_pass_doub = (sum1/sum2)}
            else
            {mean_pass_doub = 0.00}
            
            let mean_pass_string:String = String(format:"%.2f", mean_pass_doub)
            destination.mean = mean_pass_string
            
            var hittingEff : Double
            if (kill + hittingE + hittingA != 0)
            {hittingEff = Double((kill - hittingE)/(kill + hittingE + hittingA))}
            else
            {hittingEff = 0.00}
            
            //prep segue for hitting stats
            destination.kill_dest = Double(kill)
            destination.hittingE_dest = Double(hittingE)
            destination.hittingA_dest = Double(hittingA)
            destination.hittingEff_dest = hittingEff
            destination.ace_dest = Double(ace)
            destination.servingE_dest = Double(servingE)
            destination.servingA_dest = Double(servingA)
            
            //prep segue for serving stats
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


