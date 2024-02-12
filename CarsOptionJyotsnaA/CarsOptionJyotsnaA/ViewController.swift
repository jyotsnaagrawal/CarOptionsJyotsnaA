import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BuildYourCar: UIButton!
    @IBOutlet weak var ExteriorButton: UIButton!
    @IBOutlet weak var CarInfoButton: UIButton!
    @IBOutlet weak var CarImageButton: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func carInfoButtonTapped(_ sender: UIButton) {
        // Instantiate DetailViewController from the storyboard
        if let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            
            // Set  mileage and price values 
            detailVC.mileage = "250 miles"
            detailVC.price = "$30,000"
            
            // Push the DetailViewController onto the navigation stack
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
}
