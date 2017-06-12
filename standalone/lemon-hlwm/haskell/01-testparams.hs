-- This is a modularized config for herbstluftwm tags in lemonbar

import System.Environment
import System.Process
import Data.List

import MyHelper

-- initialize

panelHeight = 24

-- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
-- main

main = do
    -- initialize
    
    args <- getArgs
    let monitor = getMonitor args

    -- do `man herbsluftclient`, and type \pad to search what it means
    system $ "herbstclient pad " ++ show(monitor) ++ " "
        ++ show(panelHeight) ++ " 0 " ++ show(panelHeight) ++ " 0"
        
    geometry <- getGeometry monitor
    let lemonParameters = getLemonParameters panelHeight geometry
    
    print $ intercalate " " $ lemonParameters
