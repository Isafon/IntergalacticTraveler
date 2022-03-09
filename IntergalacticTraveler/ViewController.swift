//
//  ViewController.swift
//  IntergalacticTraveler
//
//  Created by isa fontana on 3/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func whenBlueDwarfButtonTapped(_ sender: UIButton) {
       performSegue(withIdentifier: "mySegue", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! StarViewController
        
        if sender == nil{
            nvc.starName = "BlueDwarf"
        } else {
            nvc.starName = "RedDwarf"
        }
    }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        assignBackground()
    }
    
    func assignBackground() {
        
        let background = UIImage(named: "Space-bg")
        
        var imageView: UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }

}

