import Foundation

extension Array where Element: Comparable {
    func getBoundGlucose(boundType: BoundTypes, bound: Element) -> Element {
        guard let extremum = (boundType == .top) ? max() : min() else {
            return bound
        }
        if (boundType == .top) ? extremum < bound : extremum > bound {
            return bound
        }
        return extremum
    }
}