//
//  DateTool.swift
//  InterpolateSwiftToObjectiveC
//
//  Created by iMac on 2022/08/10.
//

import Foundation

final class DateTool: NSObject {
    @objc
    func diplayTodayDate() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy년 MM월 dd일"
        let today = dateFormatter.string(from: Date())
        print("금일 :\(today)")
    }
}
