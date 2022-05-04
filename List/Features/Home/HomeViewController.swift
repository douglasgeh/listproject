//
//  HomeViewController.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import RxSwift
import UIKit

final class HomeViewController: BaseViewController {

    //-----------------------------------------------------------------------------
    // MARK: - Outlets
    //-----------------------------------------------------------------------------

    @IBOutlet var tableView: UITableView!

    //-----------------------------------------------------------------------------
    // MARK: - Private properties
    //-----------------------------------------------------------------------------

    private let disposeBag = DisposeBag()

    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------

    let viewModelProvider: HomeViewModelProvider
    let viewModel: HomeViewModel

    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------

    init(viewModelProvider: HomeViewModelProvider) {
        self.viewModelProvider = viewModelProvider
        self.viewModel = viewModelProvider.viewModel

        super.init(
            backgroundColor: viewModel.backgroundColor,
            nibName: String(describing: HomeViewController.self),
            bundle: Bundle(for: HomeViewController.self)
        )
    }

    required init?(coder aDecoder: NSCoder) {
        nil
    }
}

//-----------------------------------------------------------------------------
// MARK: - View lifecycle
//-----------------------------------------------------------------------------

extension HomeViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
        bind()
    }
}

//-----------------------------------------------------------------------------
// MARK: - Binders
//-----------------------------------------------------------------------------

extension HomeViewController {

    private func bind() {

    }
}

//-----------------------------------------------------------------------------
// MARK: - Private methods
//-----------------------------------------------------------------------------

extension HomeViewController {

    private func configure() {
       
    }
}
