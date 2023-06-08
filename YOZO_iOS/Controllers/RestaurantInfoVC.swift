//
//  res.swift
//  YOZO_iOS
//
//  Created by 정아현 on 2023/06/08.
//

import UIKit
import SnapKit

class RestaurantInfoVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private let restaurantImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    private let detailsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private let menuCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(restaurantImageView)
        restaurantImageView.image = UIImage(named: "환이네갈비살")
        restaurantImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(2.0 / 5.0)
        }
        
        view.addSubview(nameLabel)
        nameLabel.text = "환이네 갈비살"
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(restaurantImageView.snp.bottom).offset(13)
        }
        
        view.addSubview(detailsLabel)
        detailsLabel.text = "주소 : 서울 광진구 아차산로29길 24\n영업시간 : 매일 11:00 - 22:00\n전화번호 : 02-446-9287"
        detailsLabel.numberOfLines = 0
        detailsLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-10)
        }
        
        menuCollectionView.backgroundColor = UIColor(red: 255/255, green: 234/255, blue: 124/255, alpha: 1.0)
        menuCollectionView.isScrollEnabled = true // 스크롤 기능 활성화
        // 컬렉션뷰의 코너를 둥글게 설정
        let cornerRadius: CGFloat = 10.0 // 코너의 곡률 정도를 조절
        menuCollectionView.layer.cornerRadius = cornerRadius
        menuCollectionView.layer.masksToBounds = true
        view.addSubview(menuCollectionView)
        
        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
        menuCollectionView.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: "MenuCell")
        menuCollectionView.snp.makeConstraints { make in
            make.top.equalTo(detailsLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview()
        }
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! MenuCollectionViewCell
        cell.imageView.image = UIImage(named: "김치찌개")
        cell.nameLabel.text = "김치찌개"
        return cell
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 30) / 2
        let height = width + 20
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 0, right: 10)
    }

}

