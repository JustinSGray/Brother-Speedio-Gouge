(CALIBRATE TOOL LENGTH PROBE - KNOWN LENGTH TOOL)

(Assumes that 'known length' tool is T98)
(Setup tool length data for T98 in tool library, and load tool)
(Program will calibrate tool setter height based on known tool length)

G0 G40 G80 G90 G98 G17 G64 G94
M6 T98

G65 P8914 H98. D98. B0. R0.

M30
