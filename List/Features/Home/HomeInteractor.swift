//
//  HomeInteractor.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import RxSwift
import RxRelay

final class HomeInteractor: HomeViewModelProvider {

    //-----------------------------------------------------------------------------
    // MARK: - Public properties
    //-----------------------------------------------------------------------------
    
    let requestUsersInfo = PublishSubject<Void>()
    
    //-----------------------------------------------------------------------------
    // MARK: - HomeViewModelProvider
    //-----------------------------------------------------------------------------

    let viewModel: HomeViewModel

    //-----------------------------------------------------------------------------
    // MARK: - Private properties
    //-----------------------------------------------------------------------------

    private let disposeBag = DisposeBag()

    //-----------------------------------------------------------------------------
    // MARK: - Injected properties
    //-----------------------------------------------------------------------------

    let presenter: HomePresenter
    let router: HomeRouter
    let userWebService: HomeUsersWebServiceType
    let scheduler: SchedulerType
    
    //-----------------------------------------------------------------------------
    // MARK: - Initialization
    //-----------------------------------------------------------------------------

    init(presenter: HomePresenter,
         router: HomeRouter,
         userWebService: HomeUsersWebServiceType,
         scheduler: SchedulerType) {

        self.presenter = presenter
        self.router = router
        self.userWebService = userWebService
        self.scheduler = scheduler
        
        self.viewModel = presenter.viewModel

        bind()
    }
}

//-----------------------------------------------------------------------------
// MARK: - Binders
//-----------------------------------------------------------------------------

extension HomeInteractor {

    private func bind() {
        requestUsersInfo
            .withUnretained(self)
            .subscribe(onNext: { target, _ in
                target.userWebService
                    .request()
                    .observe(on: target.scheduler)
                    .subscribe { event in
                        switch event {
                        case .success:
                            break
                        case .failure:
                            break
                        }
                    }
                    .disposed(by: target.disposeBag)
            })
            .disposed(by: disposeBag)
    }
}
