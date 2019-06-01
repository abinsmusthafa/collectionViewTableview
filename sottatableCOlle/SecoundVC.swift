//
//  SecoundVC.swift
//  sottatableCOlle
//
//  Created by Abins Musthafa on 01/06/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit

class SecoundVC: UIViewController {
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var placeLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    var stuData : StudDetails!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       nameLbl.text = stuData.name
        placeLbl.text = stuData.place
        phoneLbl.text = stuData.phone
        
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
