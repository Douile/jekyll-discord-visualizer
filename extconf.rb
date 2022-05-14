File.write("Makefile", 
"install:
\techo \"Checking node is installed...\"
\tnode --version
\techo \"Installing npm dependencies...\"
\tnpm install
clean:
\trm -rf node_modules
")
