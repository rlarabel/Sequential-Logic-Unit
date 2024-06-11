restart

#Wait out 100ns GSR (important for post-route timing simulation, but not for behavioral simulations)
add_force RESET {1 0ns}
add_force X1 {1 0ns}
add_force X2 {1 0ns}
run 100ns

add_force RESET {0 0ns}
run 20ns

add_force X1 {1 0ns} 
add_force X2 {0 0ns}
run 20ns

add_force X1 {1 0ns}  
add_force X2 {1 0ns}
run 20ns

add_force X1 {1 0ns} 
add_force X2 {0 0ns}
run 20ns