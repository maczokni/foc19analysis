gen c_unworried=c_foc
recode c_unworried 2=1 1=0
gen c_functional=c_foc
recode c_functional 2=0 1=1
gen c_dysfunctional=c_foc
recode c_dysfunctional 2=0 1=1
replace c_functional=0 if c_focqol>6
replace c_functional=0 if c_precqof>6
replace c_functional=0 if c_prec==2
replace c_functional=0 if c_precs<6
replace c_dysfunctional=0 if c_functional==1

gen b_unworried=b_foc
recode b_unworried 2=1 1=0
gen b_functional=b_foc
recode b_functional 2=0 1=1
gen b_dysfunctional=b_foc
recode b_dysfunctional 2=0 1=1
replace b_functional=0 if b_focqol>6
replace b_functional=0 if b_precqof>6
replace b_functional=0 if b_prec==2
replace b_functional=0 if b_precs<6
replace b_dysfunctional=0 if b_functional==1

poisson c_socialdistance_resistance c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area
reg cvcomply_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive b_functional b_dysfunctional c_covknow c_deter c_legitl c_legitp c_norms c_expressive  age#i.female i.area 


// old stuff

reg c_cvcomply_sum  c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 
nbreg b_cvcomply_sum b_covknow b_deter b_legitl b_legitp b_norms b_expressive b_functional b_dysfunctional age#i.female i.area 
gen cvcomply_changescore=c_cvcomply_sum-b_cvcomply_sum
histogram  cvcomply_changescore
reg cvcomply_changescore  b_functional b_dysfunctional 
reg cvcomply_changescore  c_functional c_dysfunctional 
reg cvcomply_changescore  b_functional b_dysfunctional age#i.female i.area 
reg cvcomply_changescore  c_functional c_dysfunctional age#i.female i.area 
reg cvcomply_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 
reg cvcomply_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 

gen cvcomply1_changescore=c_covidcompliance_1-b_covidcompliance_1
reg cvcomply1_changescore  b_functional b_dysfunctional 
reg cvcomply1_changescore  c_functional c_dysfunctional 
reg cvcomply1_changescore  b_functional b_dysfunctional age#i.female i.area 
reg cvcomply1_changescore  c_functional c_dysfunctional age#i.female i.area 
reg cvcomply1_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply1_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 
reg cvcomply1_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply1_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 

gen cvcomply2_changescore=c_covidcompliance_2-b_covidcompliance_2
reg cvcomply2_changescore  b_functional b_dysfunctional 
reg cvcomply2_changescore  c_functional c_dysfunctional 
reg cvcomply2_changescore  b_functional b_dysfunctional age#i.female i.area 
reg cvcomply2_changescore  c_functional c_dysfunctional age#i.female i.area 
reg cvcomply2_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply2_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 
reg cvcomply2_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply2_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 

gen cvcomply3_changescore=c_covidcompliance_3-b_covidcompliance_3
reg cvcomply3_changescore  b_functional b_dysfunctional 
reg cvcomply3_changescore  c_functional c_dysfunctional 
reg cvcomply3_changescore  b_functional b_dysfunctional age#i.female i.area 
reg cvcomply3_changescore  c_functional c_dysfunctional age#i.female i.area 
reg cvcomply3_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply3_changescore c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 
reg cvcomply3_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive b_functional b_dysfunctional age#i.female i.area 
reg cvcomply3_changescore b_covknow b_deter b_legitl b_legitp b_norms b_expressive c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area 

histogram c_cvcomply_sum
reg c_cvcomply_sum c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area
histogram c_socialdistance_resistance
poisson c_socialdistance_resistance c_covknow c_deter c_legitl c_legitp c_norms c_expressive c_functional c_dysfunctional age#i.female i.area
