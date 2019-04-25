import UIKit

class MovieDetailViewController: UIViewController {

    let label = UILabel()
    let viewModel = MovieDetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        let titleBond = Bond<String>() { [weak self] title in
            self?.label.text = title
        }

        titleBond.bind(viewModel.movieTitle)

        /////////////////////////////////////////////////////////

        label.textBond?.bind(viewModel.movieTitle)
    }
}
