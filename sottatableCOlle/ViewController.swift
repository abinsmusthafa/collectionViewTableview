//
//  ViewController.swift
//  sottatableCOlle
//
//  Created by Abins Musthafa on 01/06/19.
//  Copyright © 2019 Abins Musthafa. All rights reserved.
//

import UIKit


// connect delegate and datasourse in Viewcontroller 



class ViewController: UIViewController{
    @IBOutlet weak var mytable: UITableView!
    var sTudetailArray : [StudDetails]?

    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.separatorStyle = .none
        
        
        // DUmmy data
        
        self.sTudetailArray = [StudDetails(name: "Abins", phone: "8590555882", place: "Ernakulam"),
            StudDetails(name: "Anju", phone: "9867542356", place: "Kottayam"),
            StudDetails(name: "Veena", phone: "984698765", place: "Pathanamthitta"),
            StudDetails(name: "Ajmal", phone: "98982748190", place: "Myloor"),
            StudDetails(name: "Arun", phone: "9841247689", place: "Kakkanad")
        
        
        
        ]
        
        
       
        
        // Do any additional setup after loading the view.
    }

}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! MyTableViewCell
        
        return cell
    }
}

extension ViewController : UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    
 
}


extension ViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sTudetailArray!.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secVC = storyboard.instantiateViewController(withIdentifier: "SecoundVC") as! SecoundVC
        
        secVC.stuData = sTudetailArray![indexPath.item]
        
        navigationController?.pushViewController(secVC, animated: true)
        
    }
    
    
}


extension ViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MycollectionCell
        cell.nameLabel.text = sTudetailArray![indexPath.item].name
        
        return cell
    }
}


extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    
}


