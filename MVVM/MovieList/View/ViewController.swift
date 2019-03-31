import UIKit

class ViewController: UIViewController {

    private let viewModel: MovieListViewModel

    init(viewModel: MovieListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        bind()
        viewModel.fetchMovies()
    }
}

extension ViewController: ViewBinding {

    func bind() {
        viewModel.listBinding.bind { items in
            // TODO: update UI here
        }
    }
}

