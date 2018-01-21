//
//  ViewController.swift
//  VolleyScore
//
//  Created by Cynthia Zhang on 1/21/18.
//  Copyright © 2018 Cynthia Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var buttonsEnabled = false
    var players = [Player(name: "Player 1"), Player(name: "Player 2")]
    var currPlayer: Int = 0
    
    @IBAction func Player1(_ sender: UIButton) {
        /*
        if(!buttonsEnabled) {
            buttonsEnabled = true
            enableButtons()
        } */
        currPlayer = 0
    }
    
    @IBAction func Player2(_ sender: UIButton) {
        /*
        if(!buttonsEnabled) {
            buttonsEnabled = true
            enableButtons()
        } */
        currPlayer = 1
    }
    
    // PASSING
    @IBAction func pass_0(_ sender: UIButton) {
        players[currPlayer].pass0 += 1
    }
    @IBAction func pass_1(_ sender: UIButton) {
        players[currPlayer].pass1 += 1
    }
    @IBAction func pass_2(_ sender: UIButton) {
        players[currPlayer].pass2 += 1
    }
    @IBAction func pass_3(_ sender: UIButton) {
        players[currPlayer].pass3 += 1
    }
    
    /* doesn't work on the button (function) only on variables
    func enableButtons() {
        pass_0.isEnabled = true
        pass_1.isEnabled = true
        pass_2.isEnabled = true
        pass_3.isEnabled = true
    }
    
    func disableButtons() {
        pass_0.isEnabled = false
        pass_1.isEnabled = false
        pass_2.isEnabled = false
        pass_3.isEnabled = false
    }
 */
    
    // HITTING
    @IBAction func add_kill(_ sender: UIButton) {
        players[currPlayer].kill += 1
    }
    
    @IBAction func hitting_E(_ sender: UIButton) {
        players[currPlayer].hittingE += 1
    }
    
    @IBAction func hitting_A(_ sender: UIButton) {
        players[currPlayer].hittingA += 1
    }
    
    // SERVING
    @IBAction func add_ace(_ sender: UIButton) {
        players[currPlayer].ace += 1
    }
    
    @IBAction func serving_E(_ sender: UIButton) {
        players[currPlayer].servingE += 1
    }
    
    @IBAction func serving_A(_ sender: UIButton) {
        players[currPlayer].servingA += 1
    }
    
    //VIEW FUNCTION
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //SEE DATA SEGUE
    @IBAction func see_data(_ sender: UIButton) {
        performSegue(withIdentifier: "secondVC", sender: self)
    }
    
    //SEGUE FOR PASSING to 2ndview
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.play1name = players[0].name
            destination.play2name = players[1].name
            
            //prep segue
            var means = [String]()
            
            
            for x in 0...1 {
                let curr = players[x]
                
                // passing
                let sum1 = Double(0 + (curr.pass1) + (2 * curr.pass2) + (3 * curr.pass3))
                let sum2 = Double(curr.pass0 + curr.pass1 + curr.pass2 + curr.pass3)
                var mean_pass_doub : Double
                
                if sum2 != 0 {mean_pass_doub = (sum1/sum2)}
                else {mean_pass_doub = 0.00}
                means.append(String(format:"%.2f", mean_pass_doub))
            }
            
            destination.mean = means
            
            
        }
    
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        else if let destination2 = segue.destination as? ThirdViewController {
            var hittingEfficiencies = [Double]()
            var kill_dest = [Double]()
            var hittingE_dest = [Double]()
            var hittingA_dest = [Double]()
            var ace_dest = [Double]()
            var servingE_dest = [Double]()
            var servingA_dest = [Double]()
            
            for x in 0...1 {
                let curr = players[x]
                
                // hitting
                var hittingEff = 0.00
                if (curr.kill + curr.hittingE + curr.hittingA != 0)
                {hittingEff = Double((curr.kill - curr.hittingE)/(curr.kill + curr.hittingE + curr.hittingA))}
                
                hittingEfficiencies.append(hittingEff)
                kill_dest.append(curr.kill)
                hittingE_dest.append(curr.hittingE)
                hittingA_dest.append(curr.hittingA)
                
                // serving
                ace_dest.append(curr.ace)
                servingE_dest.append(curr.servingE)
                servingA_dest.append(curr.servingA)
            }
            
            destination2.hittingEfficiencies = hittingEfficiencies
            destination2.kill_dest = kill_dest
            destination2.hittingE_dest = hittingE_dest
            destination2.hittingA_dest = hittingA_dest
            
            destination2.ace_dest = ace_dest
            destination2.servingE_dest = servingE_dest
            destination2.servingA_dest = servingA_dest
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


