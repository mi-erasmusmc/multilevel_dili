* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.


USE ALL.
COMPUTE filter_$=(SG = 3 &  ADR = 1).
VARIABLE LABELS filter_$ 'SG = 3 &  ADR = 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

FREQUENCIES VARIABLES=drug prob_SVM
  /ORDER=ANALYSIS.

