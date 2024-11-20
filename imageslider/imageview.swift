//
//  imageview.swift
//  imageslider
//
//  Created by user@59 on 02/09/24.
//

import Foundation
struct Signs
{
    var signs:[String] = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces"  ]
    
    func getSign(for index:Int) -> String // argument and parameters
    {
       return signs[index-1]
    }
}
