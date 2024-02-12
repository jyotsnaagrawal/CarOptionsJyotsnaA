import UIKit

class DetailViewController: UIViewController {
    var mileage: String?
    var price: String?

    @IBOutlet weak var colorWellButton: UIColorWell!
    @IBOutlet weak var colorsButton: UIButton!
    @IBOutlet weak var mileageLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the mileage and price labels when the view loads
        mileageLabel.text = mileage
        priceLabel.text = price
    }

    @IBAction func colorsButtonTapped(_ sender: UIButton) {
        showColorPicker()
    }

    private func showColorPicker() {
      // UIAlertController with color options

        let colorPicker = UIAlertController(title: "Choose Color", message: nil, preferredStyle: .actionSheet)

        colorPicker.addAction(UIAlertAction(title: "Red", style: .default, handler: { _ in
            self.colorWellButton.selectedColor = UIColor.red
            self.showSelectedColorMessage(color: "Red")
        }))

        colorPicker.addAction(UIAlertAction(title: "Green", style: .default, handler: { _ in
            self.colorWellButton.selectedColor = UIColor.green
            self.showSelectedColorMessage(color: "Green")
        }))

        colorPicker.addAction(UIAlertAction(title: "Blue", style: .default, handler: { _ in
            self.colorWellButton.selectedColor = UIColor.blue
            self.showSelectedColorMessage(color: "Blue")
        }))

        colorPicker.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        // Present the color picker
        present(colorPicker, animated: true, completion: nil)
    }

    private func showSelectedColorMessage(color: String) {
        let message = "Your selected color for the car is \(color)."
        let alertController = UIAlertController(title: "Selected Color", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}
