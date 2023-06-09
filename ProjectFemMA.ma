[top]
components : heatcond 

[heatcond]
type : cell
dim : (2,5)
delay : transport
defaultDelayTime  : 10
border : nowrapped 
neighbors : heatcond(-1,0) heatcond(0,0) 
neighbors : heatcond(0,1)  heatcond(-1,-1)  heatcond(0,-1)   
initialvalue : -3000
initialCellsValue : ProjectFem.val 
localtransition : conduction-rule
zone : Constants { (0,0)..(0,4) }
zone : Boundary { (1,0) (1,4) }

[conduction-rule]
rule : { ((-1,0)*(0,1)+(-1,-1)*(0,-1)) / ( (-1,0)+(-1,-1) ) } 1 { t } 


[Constants]
rule : {(0,0)} 1 {t}

[Boundary]
rule : {(0,0)} 1 {t}



