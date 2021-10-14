//
//  ViewController.swift
//  Washi-no-Jikanwari
//
//  Created by Shogo Taguchi on 2021/10/08.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate{

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var CollectionViewFlowLayout: UICollectionViewFlowLayout!
    
    
    //時間割セル設定
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate=self
        collectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 60, height: 100)
        layout.minimumLineSpacing = 3.0
        layout.minimumInteritemSpacing = 3.0
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        collectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30 // 表示するセルの数
    }
    
    //時間割セルの表示
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) // 表示するセルを登録
        cell.backgroundColor = .white// セルの色
        //cell.layer.borderWidth = 1.0//セルの枠組み(有無どっちでもいい)
        return cell
    }
    
    
    
    }
    
    




