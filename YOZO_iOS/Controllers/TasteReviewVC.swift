//
//  TasteReviewVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/06/13.
 
import UIKit
import SnapKit

class TasteReviewVC: UIViewController {
    
    lazy var rateView: RateView = {
        let view = RateView()
        
        return view
    }()
    
    
    
    private let writeReviewLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "맛에 대한 리뷰를 남겨주세요"
        Label.textColor = UIColor(r: 0, g: 0, b: 0)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 20)
        Label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        return Label
        
    }()
    
    private let menuTotalLabel: UILabel = {
        
        let Label = UILabel()
        
        Label.text = "메뉴 총평을 남겨주세요"
        Label.textColor = UIColor(r: 146, g: 143, b: 143)
        Label.font = UIFont(name: "AppleSDGothicNeoB00-Regular", size: 15)
        Label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        return Label
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    
    func setup(){
        
        view.backgroundColor = UIColor(r: 255, g: 255, b: 255)
        
        self.view.addSubview(writeReviewLabel)
        self.view.addSubview(menuTotalLabel)
        
        self.view.addSubview(rateView)
        
        
        writeReviewLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 63, left: 95, bottom: 721, right: 80))
        }
        menuTotalLabel.snp.makeConstraints { make in
            make.edges.equalTo(UIEdgeInsets(top: 139, left: 130, bottom: 683, right: 80))
        }
        rateView.snp.makeConstraints { make in
            make.top.equalTo(menuTotalLabel.snp.bottom).offset(13)
            make.left.equalTo(writeReviewLabel)
            make.width.equalTo(274)
            make.height.equalTo(50)
        }
        
        //        searchPwButton.snp.makeConstraints{ make in
        //            make.top.equalTo(loginButton.snp.bottom).offset(13)
        //            make.left.equalTo(searchIdBotton.snp.right).offset(3)
        //            make.width.equalTo(80)
        //            make.height.equalTo(14)
        //        }
        
        
    }
    
    
}

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {}
    func bind() {}
}


class RateView : BaseView{
    
    var starNumber: Int = 5 {
        didSet { bind() }
    }
    var currentStar: Int = 0
    
    private var buttons: [UIButton] = []
    
    lazy var stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.spacing = 12
        view.backgroundColor = .white
        
        return view
    }()
    
    lazy var starFillImage: UIImage? = {
        return UIImage(systemName: "fillstarx1")
    }()
    
    lazy var starEmptyImage: UIImage? = {
        return UIImage(systemName: "star")
    }()
    
    override func configure() {
        super.configure()
        
        starNumber = 5
        
        setupLayout()
    }
    
    
    private func setupLayout() {
        
        addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
        }
    }
    
    override func bind() {
        super.bind()
        
        for i in 0..<5 {
            let button = UIButton()
            button.setImage(starEmptyImage, for: .normal)
            button.tag = i
            buttons += [button]
            stackView.addArrangedSubview(button)
            button.addTarget(self, action: #selector(didTapButton(sender:)), for: .touchUpInside)
        }
    }
    
    @objc
    private func didTapButton(sender: UIButton) {
        let end = sender.tag
        
        for i in 0...end {
            buttons[i].setImage(starFillImage, for: .normal)
        }
        for i in end + 1..<starNumber {
            buttons[i].setImage(starEmptyImage, for: .normal)
        }
        
        currentStar = end + 1
    }
}

