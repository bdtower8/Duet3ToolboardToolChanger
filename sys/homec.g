; homec.g
; called to home the C axis (coupler)

;crashc
M915 C S3 F0 H100 R0
G92 C500
M913 C60
G1 C-500 F5000
M913 C100
G1 C1 F5000
G92 C0

M98 P"/macros/changer/unlock"