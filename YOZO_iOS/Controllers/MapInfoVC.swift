//
//  MapInfoVC.swift
//  YOZO_iOS
//
//  Created by 홍서린 on 2023/04/25.
//

import NMapsMap
import UIKit
import SnapKit
import CoreLocation

class MapInfoVC: UIViewController,CLLocationManagerDelegate {
    
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
            let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 37.58715002006896, lng: locationManager.location?.coordinate.longitude ??  126.97548757998842 ))
            cameraUpdate.animation = .easeIn
            mapView.moveCamera(cameraUpdate)
            
            let marker = NMFMarker()
            marker.position = NMGLatLng(lat: locationManager.location?.coordinate.latitude ?? 37.58715002006896, lng: locationManager.location?.coordinate.longitude ?? 126.97548757998842)
            marker.mapView = mapView
            
        } else {
            print("위치 서비스 Off 상태")
        }
        
    }
    
    weak var delegate: mapInfoDelegate?
    
    @objc func didTapButton(_ sender: Any) {
        delegate?.dismissMapInfoVC()
        dismiss(animated: true, completion: nil)
    }
    
    
}
