//
//  MainVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//

import NMapsMap
import UIKit
import SnapKit

class MainVC: UIViewController {
    
    var viewWillAppearEventCount = 0
    
    
    let button: UIButton = {
            let button = UIButton()
            button.setTitle("present", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .blue.withAlphaComponent(0.7)
            button.layer.cornerRadius = 14.0
        button.addTarget(MainVC.self, action: #selector(didTapButton(_:)), for: .touchUpInside)

            return button
        }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        mapView.addSubview(button)
    
    }
    
    
    @objc
    private func didTapButton(_ sender: Any) {
        let mapInfoVC = MapInfoVC()
        mapInfoVC.delegate = self
        mapInfoVC.modalPresentationStyle = .pageSheet
        
        present(mapInfoVC, animated: true, completion: nil)
    }
    
    
}




protocol mapInfoDelegate: AnyObject {
    func dismissMapInfoVC()
}

extension MainVC: mapInfoDelegate {
    func dismissMapInfoVC() {
        viewWillAppearEventCount += 1
      //  countLabel.text = "pageSheet인 두 번째 뷰의 dismiss 카운트 = (\(viewWillAppearEventCount))"
    }
    
    
}
