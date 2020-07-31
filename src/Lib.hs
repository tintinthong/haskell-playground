
module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- newtype State s a = State { runState :: s -> (a,s)}
-- State :: (s -> (a,s))-> State s a
-- runState :: State s a -> s -> (a,s)

-- instance Monad (State s) where
--   return x = State $ \s ->(x,s)
--   -- return :: a -> State s a
--   -- (State h) :: State s a
--   -- h :: (s -> (a,s))
--   -- f :: a -> State s b
--   -- (State g) :: State s b
--   -- g :: (s -> (b,s))
--   -- g newState :: (b,s)
--   -- (>>=) :: State s a -> ( a -> State s b) -> State s b
--   (State h) >>= f =
--     State $ \s ->
--               let (a, newState) = h s -- :: (a,s)
--                   (State g) = f a -- :: State s b
--               in g newState

