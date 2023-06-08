//
//  ViewController.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//
/*
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
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // 이미지뷰
        view.addSubview(restaurantImageView)
        restaurantImageView.image = UIImage(named: "환이네갈비살")
        restaurantImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(2.0 / 5.0)
        }
        
        // 음식점 이름
        view.addSubview(nameLabel)
        nameLabel.text = "환이네 갈비살"
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(restaurantImageView.snp.bottom).offset(13)
        }
        
        // 음식점 정보
        view.addSubview(detailsLabel)
        detailsLabel.text = "서울시 광진구\n영업시간: 9AM - 10PM\n전화번호: 000-0000"
        detailsLabel.numberOfLines = 0 // 여러 줄의 텍스트를 허용
        detailsLabel.lineBreakMode = .byWordWrapping // 단어 단위로 줄바꿈
        detailsLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.trailing.equalToSuperview().offset(-10)
        }

        detailsLabel.font = UIFont.systemFont(ofSize: 16) // 원하는 폰트 사이즈로 설정
        detailsLabel.setLineSpacing(lineSpacing: 8) // 원하는 줄 간격을 설정하는 커스텀 메서드 호출

        // 컬렉션뷰 생성 및 설정
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        // 컬렉션뷰 레이아웃 설정
        let itemSpacing: CGFloat = 10 // 아이템 사이의 가로 간격
        let lineSpacing: CGFloat = 10 // 아이템 사이의 세로 간격
        let numberOfItemsInLine: CGFloat = 2 // 한 줄에 표시할 아이템 개수
        let itemWidth = (collectionView.frame.width - itemSpacing * (numberOfItemsInLine - 1)) / numberOfItemsInLine
        let itemHeight = itemWidth * 1.0 // 이미지뷰의 크기를 1:1 비율로 설정

        layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
        layout.minimumInteritemSpacing = itemSpacing
        layout.minimumLineSpacing = lineSpacing
        collectionView.setCollectionViewLayout(layout, animated: false)

        collectionView.backgroundColor = UIColor(red: 255/255, green: 234/255, blue: 124/255, alpha: 1.0) // 배경색을 RGB 값으로 설정
        collectionView.isScrollEnabled = true // 스크롤 기능 활성화

    
        // 컬렉션뷰의 코너를 둥글게 설정
        let cornerRadius: CGFloat = 10.0 // 코너의 곡률 정도를 조절
        collectionView.layer.cornerRadius = cornerRadius
        collectionView.layer.masksToBounds = true
        
        // 컬렉션뷰를 부모 뷰에 추가하는 코드
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(detailsLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10) // 왼쪽으로부터 10만큼 떨어짐
            make.trailing.equalToSuperview().offset(-10) // 오른쪽으로부터 10만큼 떨어짐
            make.bottom.equalToSuperview()
        }

        menuCollectionView.dataSource = self
        menuCollectionView.delegate = self
        menuCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MenuCell")
    }
    
    // MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 메뉴 아이템 개수 반환
        return 5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as! MenuCollectionViewCell

            // 각 아이템의 이미지와 텍스트 설정
            cell.imageView.image = UIImage(named: "김치찌개.jpg")
            cell.nameLabel.text = "김치찌개"
            return cell
        }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = (collectionView.bounds.width - 30) / 2 // 화면 너비에 따라 조정 가능
            let height = width + 20 // 이미지 높이와 라벨 높이를 합한 값
            return CGSize(width: width, height: height)
        }
    
}






extension UILabel {
    func setLineSpacing(lineSpacing: CGFloat) {
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        
        let attributedString = NSMutableAttributedString(string: labelText)
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
        
        self.attributedText = attributedString
    }
}
*/
