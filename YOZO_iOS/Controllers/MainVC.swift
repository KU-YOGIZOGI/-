//
//  MainVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//

import NMapsMap
class MainVC: UIViewController {
  override func viewDidLoad() {
      super.viewDidLoad()

      let mapView = NMFMapView(frame: view.frame)
      view.addSubview(mapView)
  }
}
