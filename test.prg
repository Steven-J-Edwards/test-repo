10 POKE 1024, 0  : REM Clear screen
20 POKE 1024+1, 0 : REM Clear screen
30 POKE 1024+2, 0 : REM Clear screen
40 PRINT CHR$(147); : REM Clear the screen

50 FOR Y = 1 TO 24
60   FOR X = 1 TO 40
70     IF (X = 10 AND (Y >= 5 AND Y <= 10)) OR (X = 15 AND (Y >= 10 AND Y <= 20)) OR (X = 20 AND (Y >= 15 AND Y <= 20)) THEN
80       PRINT CHR$(219); : REM Draw vertical line
90     ELSEIF (Y = 5 AND (X >= 10 AND X <= 20)) OR (Y = 10 AND (X >= 15 AND X <= 20)) OR (Y = 20 AND (X >= 15 AND X <= 20)) THEN
100      PRINT CHR$(219); : REM Draw horizontal line
110    ELSE
120      PRINT " "; : REM Space for empty area
130    END IF
140  NEXT X
150  PRINT
160 NEXT Y

170 PRINT "Press any key to exit..."
180 GET A$
190 END
