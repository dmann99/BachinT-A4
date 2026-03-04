# BachinT-A4 Repository
A place to keep configs related to the Bachin T-A4 and similar A4 flatbed plotters. 

These plotters feature: 
* A4 plotting area - 210mm x 297mm
* Open frame design with metal Platen
* Stepper Z Axis with 10mm of travel

The plotter considers top left as origin by default. This causes an issue as addressing Y values must be done as negative. 

Many gcode generators use bottom left as origin and supply +x and +y values for positioning. 

I am using the following header code to home the machine and then move 297mm down to bottom left to set 0,0,0 workspace origin. 

```
G1 F3000      ; plot speed
G1 Z0         ; pen up (safety)

$H            ; Go to Machine Home (plotter origin)
G21           ; mm mode
G1 F5000      ; travel speed
G0 Y-297      ; move to bottom-left (workspace origin)
G92 X0 Y0 Z0  ; set drawing origin (0,0)
```

Then consider the pen Up/Down position - it has a total travel of 10mm:
```
G1 Z0         ; pen up - position 0

G1 Z10        ; pen down - fully extended at position 10
```