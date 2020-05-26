//  powerlifting
//
// 167682


// A type representing an alternative of one of two types

public enum Either<A, B> {
    case left(A)
    //failure
    case right(B)
    //success
}

