//
//  ViewController.swift
//  CollectionView_Demo
//
//  Created by Mac on 03/01/25.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var collectionView: UICollectionView!
	
	var image = ["A","B","C","D","E","F","A","B","C","D","E","F","A","B","C","D","E","F","A","B","C","D","E","F","A","B","C","D","E","F","A","B","C","D","E","F","A","B","C","D","E","F","A","B","C","D","E","F"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionViewCell
        cell.imgView.image = UIImage(named: image[indexPath.row])
        return cell
    }
}

extension ViewController:UICollectionViewDelegateFlowLayout{
	
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       let collectionwidth = collectionView.bounds.width
        
      return CGSize(width:collectionwidth/2, height:collectionwidth/2)
}
	
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return 0
}
	
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
	}
}





