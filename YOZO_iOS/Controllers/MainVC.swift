//
//  MainVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/12.
//

import NMapsMap
import UIKit
import SnapKit
import CoreLocation

class MainVC: UIViewController,CLLocationManagerDelegate, UISheetPresentationControllerDelegate {
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = NMFMapView(frame: view.frame)
        view.addSubview(mapView)
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            print("위치 서비스 On 상태")
            locationManager.startUpdatingLocation()
            print(locationManager.location?.coordinate)
            
            //현 위치로 카메라 이동
            let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: locationManager.location?.coordinate.latitude ??  37.541478762193435, lng: locationManager.location?.coordinate.longitude ?? 127.06927745555458 ))
            cameraUpdate.animation = .easeIn
            mapView.moveCamera(cameraUpdate)
            
            let marker1 = NMFMarker()
            marker1.position = NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 37.541478762193435, lng: locationManager.location?.coordinate.longitude ?? 127.06927745555458)
            marker1.mapView = mapView
            
            let marker2 = NMFMarker()
            marker2.position = NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 37.54229891126673, lng: locationManager.location?.coordinate.longitude ?? 127.06886803313095)
            marker2.mapView = mapView
            
        } else {
            print("위치 서비스 Off 상태")
        }
        
        let btn = UIButton(type: .system)
                view.addSubview(btn)
                btn.frame = .init(x: 100, y: 100, width: 100, height: 100)
                btn.setTitle(" ", for: .normal)
                btn.addTarget(self, action: #selector(presentModalBtnTap), for: .touchUpInside)
        
    }
    
  
    @objc private func presentModalBtnTap() {
        
        let vc = UIViewController()
        vc.view.backgroundColor = .systemYellow
        
        vc.modalPresentationStyle = .pageSheet
        
        if let sheet = vc.sheetPresentationController {
            
            //지원할 크기 지정
            sheet.detents = [.medium(), .large()]
            //크기 변하는거 감지
            sheet.delegate = self
           
            //시트 상단에 그래버 표시 (기본 값은 false)
            sheet.prefersGrabberVisible = true
            
            //처음 크기 지정 (기본 값은 가장 작은 크기)
            //sheet.selectedDetentIdentifier = .large
            
            //뒤 배경 흐리게 제거 (기본 값은 모든 크기에서 배경 흐리게 됨)
            //sheet.largestUndimmedDetentIdentifier = .medium
        }
        
        present(vc, animated: true, completion: nil)
    }
    
    
}

//extension MainVC: UISheetPresentationControllerDelegate {
//    func sheetPresentationControllerDidChangeSelectedDetentIdentifier(_ sheetPresentationController: UISheetPresentationController) {
//        //크기 변경 됐을 경우
//        print(sheetPresentationController.selectedDetentIdentifier == .large ? "large" : "medium")
//    }
//}
