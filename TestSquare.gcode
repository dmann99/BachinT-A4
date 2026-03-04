G1 F3000      ; plot speed
G1 Z0         ; pen up (safety)

$H            ; Go to Machine Home (plotter origin)
G21           ; mm mode
G1 F5000      ; travel speed
G0 Y-297      ; move to bottom-left (workspace origin)
G92 X0 Y0 Z0  ; set drawing origin (0,0)

; Print a square in the middle of the page
G0 X85 Y130   ; move to bottom-left corner of square
G1 Z10         ; pen down
G1 X125 Y130  ; bottom edge
G1 X125 Y170  ; right edge
G1 X85  Y170  ; top edge
G1 X85  Y130  ; left edge (close square)
G1 Z0         ; pen up

G0 X0 Y0      ; return to origin
