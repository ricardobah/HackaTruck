//
//  ViewController.swift
//  ExemploMapkit
//
//  Created by Francini Roberta de Carvalho on 12/6/16.
//  Copyright © 2016 Francini Carvalho. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


/*
 
 Site para obter coordenadas de um local:
 http://www.gps-coordinates.net
 
 */

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    var userLocation = CLLocation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // configurando o mapa para exibir o "ponto azul" da localização do usuário
        mapView.showsUserLocation = true
        
        setupLocationManager()
        addGesture()
    }
    
    func setupLocationManager () {
        // atribuindo o delegate do locationManager para esta classe
        locationManager.delegate = self
        
        // definindo o nível de precisão da localização
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        /*
         disparando a solicitação para que o usuário autorize o app a usar sua localização
         - além de chamar este método, é preciso também inserir no arquivo info.plist uma nova linha e incluir a chave "Privacy - Location When In Use Usage Description", para que o popup solicitando acesso ao GPS seja exibido para o usuário
         - essa mensagem só será disparada pelo app uma vez
         */
        locationManager.requestWhenInUseAuthorization()
        
        // começa a coletar a localização
        locationManager.startUpdatingLocation()
    }
    
    func zoomIn() {
        // definindo os valores do nível de zoom que será aplicado
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        // definindo a região do mapa no qual o zoom será aplicado, considerando a localização obtida
        let region: MKCoordinateRegion = MKCoordinateRegionMake(userLocation.coordinate, span)
        
        // aplicando o zoom no mapa
        mapView.setRegion(region, animated: true)
    }
    
    func addGesture() {
        // adicionando gesture para identificar o longPress e disparar o método associado a ele
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        
        // definindo o tempo que o gesto levará para disparar a ação
        longPress.minimumPressDuration = 1.0
        
        // adicinando o gesture ao mapa
        mapView.addGestureRecognizer(longPress)
    }
    
    
    func addAnnotationToMap(gestureRecognizer: UIGestureRecognizer) {
        
        // identificando o ponto do mapa que foi pressionado
        let touchPoint = gestureRecognizer.location(in: self.mapView)
        let newCoordinate: CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: self.mapView)
        
        // criando a nova annotation
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "Novo local"
        newAnnotation.subtitle = "Informações"
        
        mapView.addAnnotation(newAnnotation)
    }
    
    
    // MARK: CLLocationManagerDelegate
    
    /*
     este método faz parte do delegate do CLLocation e é disparado automaticamente; sua estrutura deve ser mantida.
     ele é responsável por atualizar a localização
     */
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        userLocation = locations.last!
        print("Localização atual = ", userLocation.coordinate)
        
        zoomIn()
    }
    
    /*
     este método faz parte do delegate do CLLocation e é disparado automaticamente; sua estrutura deve ser mantida
     ele dispara quando ocorre algum erro tentando obter a localização
     */
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Erro ao obter a localização do usuário: ", error)
    }
    
}

