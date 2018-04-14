//
//  ViewController.swift
//  wedding-book
//
//  Created by aircon on 09/03/2018.
//  Copyright © 2018 aircon. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var giftCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        giftCollectionView.dataSource = self
        giftCollectionView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if indexPath.row == 0 {
            let addCell = collectionView.dequeueReusableCell(withReuseIdentifier: "addCell", for: indexPath)
            return addCell
        }
        
    
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "giftCell", for: indexPath) as! GiftCollectionViewCell
        
        let rowData = data[indexPath.row-1]
        
        let gender = rowData["belong"] as! Int
        
        if gender > 0 {
            // belong man
//            cell.genderView.backgroundColor = UIColor(red:0.96, green:0.56, blue:0.69, alpha:1.0)
            cell.genderView.backgroundColor = UIColor(red:0.94, green:0.38, blue:0.57, alpha:1.0)
            cell.layer.borderColor = UIColor(red:0.94, green:0.38, blue:0.57, alpha:1.0).cgColor
        } else {
            // belong woman
//            cell.genderView.backgroundColor = UIColor(red:0.56, green:0.79, blue:0.98, alpha:1.0)
            cell.genderView.backgroundColor = UIColor(red:0.44, green:0.58, blue:1.00, alpha:1.0)
            cell.layer.borderColor = UIColor(red:0.44, green:0.58, blue:1.00, alpha:1.0).cgColor
            
        }
        
        cell.nameLabel.text = (rowData["name"] as! String)
        
        let format = NumberFormatter()
        format.numberStyle = .decimal
    
        cell.amountLabel.text = format.string(from: NSNumber(value: rowData["amount"] as! Int))
        cell.numberLabel.text = String(indexPath.row+1)
        
        
        
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 14
        cell.layer.shadowOffset = CGSize(width: 10, height: 10)
        cell.layer.shadowRadius = 14
        cell.layer.shadowOpacity = 0.5
        
        
        return cell
    }
    
}

