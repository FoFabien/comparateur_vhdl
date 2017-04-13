restart -f
force -freeze sim:/comparateur/n(3) 1 0, 0 {50 ps} -r 100
force -freeze sim:/comparateur/n(2) 1 15, 0 {65 ps} -r 100
force -freeze sim:/comparateur/n(1) 1 30, 0 {80 ps} -r 100
force -freeze sim:/comparateur/n(0) 0 0, 1 {10 ps} -r 20
run 400