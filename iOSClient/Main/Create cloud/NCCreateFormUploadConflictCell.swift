//
//  NCCreateFormUploadConflictCell.swift
//  Nextcloud
//
//  Created by Marino Faggiana on 29/03/2020.
//  Copyright © 2020 Marino Faggiana. All rights reserved.
//
//  Author Marino Faggiana <marino.faggiana@nextcloud.com>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation

class NCCreateFormUploadConflictCell: UITableViewCell {
    
    @IBOutlet weak var imageFile: UIImageView!

    @IBOutlet weak var labelFileName: UILabel!
    @IBOutlet weak var labelDetail: UILabel!

    @IBOutlet weak var switchNewFile: UISwitch!
    @IBOutlet weak var switchAlreadyExistingFile: UISwitch!
    
    var delegate: NCCreateFormUploadConflictCellDelegate?
    var fileId: String = ""

    @IBAction func valueChangedSwitchNewFile(_ sender: Any) {
        delegate?.valueChangedSwitchNewFile(with: fileId, sender: sender)
    }
    
    @IBAction func valueChangedSwitchAlreadyExistingFile(_ sender: Any) {
        delegate?.valueChangedSwitchAlreadyExistingFile(with: fileId, sender: sender)
    }
}

protocol NCCreateFormUploadConflictCellDelegate {
    
    func valueChangedSwitchNewFile(with fileId: String, sender: Any)
    func valueChangedSwitchAlreadyExistingFile(with fileId: String, sender: Any)

}
