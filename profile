# apache/mysql start and stop
function web(){
case $1 in
    "start" )
	mysql.server start
	if [ $? -eq 0 ]; then
	    echo -- MySQL START --
	fi
	sudo apachectl start
	if [ $? -eq 0 ]; then
	    echo -- Apache START --
	fi
	;;
    "stop" )
	mysql.server stop
	if [ $? -eq 0 ]; then
	    echo -- MySQL STOP --
	fi
	sudo apachectl stop
	if [ $? -eq 0 ]; then
	    echo -- Apache STOP --
	fi
	;;
    "restart" )
	mysql.server restart
	if [ $? -eq 0 ]; then
	    echo -- MySQL RESTART --
	fi
	sudo apachectl restart
	if [ $? -eq 0 ]; then
	    echo -- Apache RESTART --
	fi
	;;
    * )
	echo "end: bad param"
	;;
esac
}

# Python
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# Ruby
export RBENV_ROOT=$HOME/.rbenv
export PATH=$RBENV/bin:$PATH
eval "$(rbenv init -)"
