//
//  StreamType.swift
//  LinPhone
//
//  Created by Alsey Coleman Miller on 6/30/17.
//
//

import CLinPhone

public enum StreamType {
    
    case audio
    case video
}

extension StreamType: LinPhoneEnumeration {
    
    public typealias LinPhoneType = LinphoneStreamType
    public typealias RawValue = LinPhoneType.RawValue
    
    @inline(__always)
    public init?(_ linPhoneType: LinPhoneType) {
        
        switch linPhoneType {
        case LinphoneStreamTypeAudio: self = .audio
        case LinphoneStreamTypeVideo: self = .video
        default: return nil
        }
    }
    
    public var linPhoneType: LinPhoneType {
        
        switch self {
        case .audio: return LinphoneStreamTypeAudio
        case .video: return LinphoneStreamTypeVideo
        }
    }
}
