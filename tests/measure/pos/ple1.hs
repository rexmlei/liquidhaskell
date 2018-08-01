-- this tests reflection + PLE + holes

{-@ LIQUID "--reflection" @-}
{-@ LIQUID "--ple"        @-}

module PLE where 

{-@ reflect adder @-}
adder :: Int -> Int -> Int 
adder x y = x + y 

{-@ prop :: { adder 5 6 == 11 } @-}
prop = ()