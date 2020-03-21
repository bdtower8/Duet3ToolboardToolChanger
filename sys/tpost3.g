;Move Out
G91
G53 G1 Y-5 F24000
G90

; make sure we have a tool
M98 P"/macros/tool-detect/ensureToolHeadConnected"

;prime
M98 P"/macros/priming/t3_prime"

;undo drop Bed
;G91
;G1 Z-1 F1500
;G90

;M98 P/macros/lighting/lights_dim

M98 P"/macros/calibration/gotoCenter"