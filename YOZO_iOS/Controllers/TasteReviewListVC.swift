//
//  TasteReviewListVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/05/09.
//

import Foundation
import UIKit
import SnapKit

class TasteReviewListVC: UIViewController {
    
    private let reviewLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "후기를 남겨주세요"
        Label.textColor = UIColor(r: 0, g: 0, b: 0)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 18)
        Label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        
        return Label
        
    }()
    
    

    
  
    
    
    //컬렉션 뷰
    private lazy var tasteListCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)
        
        collectionView.backgroundColor = .white
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 34
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(TasteReviewListVC.self, forCellWithReuseIdentifier: "cell")
        
        layout.sectionInset = UIEdgeInsets(top: 23, left: 0, bottom: 0, right: 0)
        
        
        return collectionView
        
    }()
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        
    }
    
    func setup(){
        
        self.view.addSubview(reviewLabel)

        reviewLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 160, left: 125, bottom: 656, right: 117))
        }
       
    }

    
}

extension TasteReviewListVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? TasteReviewCell
        cell?.backgroundColor = UIColor(r: 246, g: 246, b: 246)
        cell?.layer.cornerRadius = 30
        cell?.layer.shadowColor = UIColor.black.cgColor
        cell?.layer.shadowOffset = CGSize(width: 0, height: 4)
        cell?.layer.shadowRadius = 4
        cell?.layer.shadowOpacity = 0.25
        return cell ?? UICollectionViewCell()
    }
}

extension TasteReviewListVC: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 343
        let height: CGFloat = 366
        
        return CGSize(width: width, height: height)
    }
}
