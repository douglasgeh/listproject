//
//  HomeCell.swift
//  List
//
//  Created by Douglas Gehring on 04/05/22.
//

import RxSwift
import UIKit

final class HomeCell: UITableViewCell {

    //-----------------------------------------------------------------------------
    // MARK: - Outlets
    //-----------------------------------------------------------------------------

    @IBOutlet private weak var titleLabel: DSLabel!
    @IBOutlet private weak var subtitleLabel: DSLabel!
    
    //-----------------------------------------------------------------------------
    // MARK: - Private properties
    //-----------------------------------------------------------------------------

    private var disposeBag = DisposeBag()
}

//-----------------------------------------------------------------------------
// MARK: Overrides
//-----------------------------------------------------------------------------

extension HomeCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
}

//-----------------------------------------------------------------------------
// MARK: ViewModelConfigurable
//-----------------------------------------------------------------------------

extension HomeCell: ViewModelConfigurable {

    func configure(with viewModel: HomeCellViewModel) {
        titleLabel.configure(with: viewModel.titleTextModel)
        subtitleLabel.configure(with: viewModel.subtitleTextModel)
    }
}

//-----------------------------------------------------------------------------
// MARK: Private methods - Setup
//-----------------------------------------------------------------------------

extension HomeCell {

    private func setup() {
        backgroundColor = ColorStyles.clear
    }
}
