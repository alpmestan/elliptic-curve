module Curve.Montgomery.Curve448
  ( Curve(..)
  , Fp
  , Group(..)
  , MPoint
  , MCurve(..)
  , P
  , Point(..)
  , _a
  , _b
  , _g
  , _h
  , _n
  , _p
  , _x
  , _y
  ) where

import Protolude

import PrimeField (PrimeField)

import Curve (Curve(..), Group(..))
import Curve.Montgomery (MCurve(..), MPoint, Point(..))

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | Curve448 curve.
data Curve448

-- | Field of Curve448 curve.
type Fp = PrimeField 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffff

-- | Curve448 curve is a Montgomery curve.
instance MCurve Curve448 Fp where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  g_ = _g
  {-# INLINE g_ #-}
  h_ = const _h
  {-# INLINE h_ #-}
  n_ = const _n
  {-# INLINE n_ #-}
  p_ = const _p
  {-# INLINE p_ #-}
  x_ = const _x
  {-# INLINE x_ #-}
  y_ = const _y
  {-# INLINE y_ #-}

-- | Point of Curve448 curve.
type P = MPoint Curve448 Fp

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of Curve448 curve.
_a :: Fp
_a = 0x262a6
{-# INLINE _a #-}

-- | Coefficient @B@ of Curve448 curve.
_b :: Fp
_b = 0x1
{-# INLINE _b #-}

-- | Generator of Curve448 curve.
_g :: P
_g = A _x _y
{-# INLINE _g #-}

-- | Cofactor of Curve448 curve.
_h :: Integer
_h = 0x4
{-# INLINE _h #-}

-- | Order of Curve448 curve.
_n :: Integer
_n = 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffff7cca23e9c44edb49aed63690216cc2728dc58f552378c292ab5844f3
{-# INLINE _n #-}

-- | Characteristic of Curve448 curve.
_p :: Integer
_p = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffff
{-# INLINE _p #-}

-- | Coordinate @X@ of Curve448 curve.
_x :: Fp
_x = 0x5
{-# INLINE _x #-}

-- | Coordinate @Y@ of Curve448 curve.
_y :: Fp
_y = 0x7d235d1295f5b1f66c98ab6e58326fcecbae5d34f55545d060f75dc28df3f6edb8027e2346430d211312c4b150677af76fd7223d457b5b1a
{-# INLINE _y #-}
