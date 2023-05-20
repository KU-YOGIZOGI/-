//
//  TasteReivewCell.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/05/20.
//

import UIKit

class TasteReviewCell: UICollectionViewCell {
    
    let nickNameLabel: UILabel = {
        let label = UILabel()

        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "홍설"
        label.numberOfLines = 1
       
        return label
    }()
    
    let tasteSpicyLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(r: 146, g: 143, b: 143)
        label.textAlignment = .left
        label.text = "맵"
        label.numberOfLines = 1
        
        return label
    }()
    
    let spicyIntensityLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "매우강함"
        label.numberOfLines = 1
        
        return label
    }()
    let tasteSweetLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(r: 146, g: 143, b: 143)
        label.textAlignment = .left
        label.text = "단"
        label.numberOfLines = 1
        
        return label
    }()
    
    let sweetIntensityLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "보통"
        label.numberOfLines = 1
        
        return label
    }()
    let tasteSaltyLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(r: 146, g: 143, b: 143)
        label.textAlignment = .left
        label.text = "짠"
        label.numberOfLines = 1
        
        return label
    }()
    
    let saltyIntensityLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .black
        label.textAlignment = .left
        label.text = "보통"
        label.numberOfLines = 1
        
        return label
    }()
    
    let foodImage: UIImageView = {
        let imageView = UIImageView()

        imageView.image = UIImage(named: "daepaex1")
        imageView.frame = CGRect(x:0, y:0, width: 56, height: 56)
       
        return imageView
    }()
    
    func setupView() {
        
        self.addSubview(nickNameLabel)
        self.addSubview(tasteSpicyLabel)
        self.addSubview(saltyIntensityLabel)
        self.addSubview(tasteSweetLabel)
        self.addSubview(spicyIntensityLabel)
        self.addSubview(tasteSaltyLabel)
        self.addSubview(sweetIntensityLabel)
        self.addSubview(foodImage)
        
    }
    
}
