import YatimaStdLib.MultilinearPolynomial
import YatimaStdLib.Zmod
import YatimaStdLib.Ord

namespace MLE

def multilinearLagrangePolynomialCache :
    Std.RBMap (Nat × Nat) (MultilinearPolynomial $ Zmod n) compare := .ofList [
  ((1, 1), .ofPairs [(1, 1)]),
  ((3, 1), .ofPairs [(1, 1)]),
  ((4, 4), .ofPairs [(4, 1), (5, -1), (6, -1), (7, 1), (12, -1), (13, 1), (14, 1), (15, -1)]),
  ((1, 3), .ofPairs [(1, 1), (3, -1), (5, -1), (7, 1)]),
  ((3, 4), .ofPairs [(3, 1), (7, -1), (11, -1), (15, 1)]),
  ((2, 3), .ofPairs [(2, 1), (3, -1), (6, -1), (7, 1)]),
  ((0, 4), .ofPairs [(0, 1), (1, -1), (2, -1), (3, 1), (4, -1), (5, 1), (6, 1), (7, -1), (8, -1), (9, 1), (10, 1), (11, -1), (12, 1), (13, -1), (14, -1), (15, 1)]),
  ((0, 0), .ofPairs [(0, 1)]),
  ((3, 2), .ofPairs [(3, 1)]),
  ((1, 0), .ofPairs [(0, 1)]),
  ((3, 3), .ofPairs [(3, 1), (7, -1)]),
  ((2, 2), .ofPairs [(2, 1), (3, -1)]),
  ((1, 2), .ofPairs [(1, 1), (3, -1)]),
  ((3, 0), .ofPairs [(0, 1)]),
  ((0, 3), .ofPairs [(0, 1), (1, -1), (2, -1), (3, 1), (4, -1), (5, 1), (6, 1), (7, -1)]),
  ((4, 0), .ofPairs [(0, 1)]),
  ((4, 2), .ofPairs [(0, 1), (1, -1), (2, -1), (3, 1)]),
  ((0, 1), .ofPairs [(0, 1), (1, -1)]),
  ((2, 4), .ofPairs [(2, 1), (3, -1), (6, -1), (7, 1), (10, -1), (11, 1), (14, 1), (15, -1)]),
  ((0, 2), .ofPairs [(0, 1), (1, -1), (2, -1), (3, 1)]),
  ((4, 1), .ofPairs [(0, 1), (1, -1)]),
  ((2, 0), .ofPairs [(0, 1)]),
  ((4, 3), .ofPairs [(4, 1), (5, -1), (6, -1), (7, 1)]),
  ((1, 4), .ofPairs [(1, 1), (3, -1), (5, -1), (7, 1), (9, -1), (11, 1), (13, 1), (15, -1)]),
  ((2, 1), .ofPairs [(0, 1), (1, -1)])
] _

end MLE
