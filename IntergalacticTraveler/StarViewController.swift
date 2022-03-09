//
//  StarViewController.swift
//  IntergalacticTraveler
//
//  Created by isa fontana on 3/7/22.
//

import UIKit

class StarViewController: UIViewController {
    
    @IBOutlet weak var starImageView: UIImageView!
    var starName = String()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(starName)
       
        let randomNumber = Int.random(in: 1...3)
        starImageView.image = UIImage(named: "\(starName)\(randomNumber)")
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
