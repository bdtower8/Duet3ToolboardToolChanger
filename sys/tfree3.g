; tfree3.g
; called when tool 3 is freed
;

;Drop Bed
G91
G1 Z0.4 F1500
G90

; allow movements outside of limits?
;M564 S0

; align x, approach y safe limit
G53 G1 X290.1 Y180 F24000
G53 G1 Y240 F10000

;Open Coupler
M98 P"/macros/changer/unlock"

; final destination
G53 G1 Y246.3 F2000

; pause
G4 P100

; move clear
G91
G53 G1 Y-40 Z-0.4 F24000
G90

; make sure we are empty
M98 P"/macros/tool-detect/ensureToolHeadEmpty"
M400

; restrict movements inside of limits?
;M564 S1