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
            
            // 마커를 클릭했을 때 HalfModalView를 나타내는 동작을 설정합니다.
            marker1.touchHandler = { [weak self] _ in
                guard let self = self else { return false }
                
                // HalfModalView를 보여줄 코드를 작성합니다.
                let halfModalVC = MapInfoVC()
                self.present(halfModalVC, animated: true, completion: nil)
                
                return true
            }
            
        } else {
            print("위치 서비스 Off 상태")
        }
        
    }
    
    
}

