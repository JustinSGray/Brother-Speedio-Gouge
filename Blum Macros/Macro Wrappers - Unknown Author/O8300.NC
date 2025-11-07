(CALIBRATE SPINDLE PROBE IN X/Y - SETTING RING)

(Jog probe to approx centre of setting ring)
(Ensure probe tip is below the top of the setting ring)
(Check params in #100 screen to check results of final probe check)

(Set param: Sxx to precise dimensions of the setting ring)
#19 = 24.00

(Do a measurement to find the centre)
(Probe will usually calibrate slightly better if run from precise centre position)
G65 P8700 S#19

(Calibrate)
G65 P8700 C1. S#19

(Quick sanity check)
G65 P8700 S#19

M30
