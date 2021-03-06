//
//  reverberateWithCombFilter.swift
//  AudioKit
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2016 AudioKit. All rights reserved.
//

import Foundation

extension AKComputedParameter {

    /// This filter reiterates input with an echo density determined by
    /// loopDuration. The attenuation rate is independent and is determined by
    /// reverbDuration, the reverberation duration (defined as the time in seconds
    /// for a signal to decay to 1/1000, or 60dB down from its original amplitude).
    /// Output from a comb filter will appear only after loopDuration seconds.
    ///
    /// - Parameters:
    ///   - reverbDuration: The time in seconds for a signal to decay to 1/1000, or 60dB from its original amplitude. (aka RT-60). (Default: 1.0, Minimum: 0.0, Maximum: 10.0)
    ///   - loopDuration: The loop time of the filter, in seconds. This can also be thought of as the delay time. Determines frequency response curve, loopDuration * sr/2 peaks spaced evenly between 0 and sr/2. (Default: 0.1, Minimum: 0.0, Maximum: 1.0)
     ///
    public func reverberateWithCombFilter(
        reverbDuration: AKParameter = 1.0,
        loopDuration: AKParameter = 0.1
        ) -> AKOperation {
            return AKOperation(module: "comb", inputs: toMono(), reverbDuration, loopDuration)
    }
}
