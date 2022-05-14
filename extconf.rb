File.write("Makefile", 
"all:
\techo \"Checking node is installed...\"
\tnode --version
\techo \"Installing npm dependencies...\"
\tnpm install
")
