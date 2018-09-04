//
//  ViewController.swift
//  CollectionViewMock
//
//  Created by YOSHI on 2018/09/04.
//  Copyright © 2018年 yoshi. All rights reserved.
//

// UICollectionViewCellをカスタム化しよう！
// http://grandbig.github.io/blog/2017/08/06/custome-collectionview/

import UIKit
import Foundation

class ViewController: UIViewController, UICollectionViewDataSource {
    
    /// UICollectionView
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as? CustomCollectionViewCell
        // 画像を設定 (今回はサンプルのためNoImageIconというものがあることを想定しています)
        //cell?.imageView.image = UIImage(named: "NoImageIcon")
        
        return cell!
    }
}
