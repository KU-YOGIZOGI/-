//
//  MapInfoVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/25.
//

import NMapsMap
import UIKit
import SnapKit

class MapInfoVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    weak var delegate: mapInfoDelegate?
    
    @objc func didTapButton(_ sender: Any) {
        delegate?.dismissMapInfoVC()
        dismiss(animated: true, completion: nil)
    }

    
}
