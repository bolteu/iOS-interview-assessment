import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tartu = CLLocationCoordinate2D(latitude: 58.370850, longitude: 26.714720)
        let annotation = MKPointAnnotation()
        annotation.coordinate = tartu
        map.addAnnotation(annotation)
        map.setRegion(MKCoordinateRegion(center: tartu, latitudinalMeters: 8_000, longitudinalMeters: 8_000), animated: true)
    }
}

