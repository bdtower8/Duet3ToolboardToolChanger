;Move Out
G91
G53 G1 Y-5 F24000
G90

; make sure we have a tool
;M98 P"/macros/tool-detect/ensureToolHeadConnected"

;prime
;M98 P"/macros/priming/t2_prime"

; Prime
G92 E0.000
G1 E20 F800
G92 E0.000
G1 E20 F200
G92 E0.000
M400

; WIPE
G91
G1 Y-60 E-0.3 F24000;
G90

; extra restart distance
G92 E-0.850

;undo drop Bed
;G91
;G1 Z-1 F1500
;G90

;M98 P/macros/lighting/lights_dim

M98 P"/macros/calibration/gotoCenter"