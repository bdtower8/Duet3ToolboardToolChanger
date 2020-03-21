; tpre2.g
; called before tool 2 has been selected
;

;M98 P/macros/lighting/lights_full

; turn on the extuder stepper
;M906 E0:0:0:1400

;Drop Bed
;G91
;G1 Z1 F1500
;G90

;Unlock Coupler
M98 P"/macros/changer/unlock"

;Move In
G1 X290.1 Y210 F24000

; account for nozzle while approaching in y
G91
G1 Z18 Y30 F24000
G90

; wait for warmup
;M116 P0

;Collect
G1 Y246.3 F4000
G4 P150

;Close Coupler
M98 P"/macros/changer/lock"