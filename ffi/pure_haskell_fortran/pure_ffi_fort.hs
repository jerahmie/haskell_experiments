-- Call a Fortran function from Haskell.
-- 

{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign.C.Types 
import Foreign.Ptr ()


-- This function is declared pure in fortran source and hence not IO CDouble
foreign import ccall unsafe "doublenum" fc_doublenum :: CDouble -> CDouble

main :: IO ()
main = do
    putStrLn "Call from Haskell."
    let result = fc_doublenum 5.5 
    print $ "fortran fc_doublenum 5.5: " ++ (show  result)
    

