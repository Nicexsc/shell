case  "$1" in 
	条件1)
	  语句
	;;
	
	条件2)
		语句
	
	;;
	条件3)
	
		语句
	;;
	
	条件4)
		语句
	;;

	*)
		以上未匹配语句
	;;
	
esac

case  "$1" in 
	start)
		if [ -f $shellDir/keys.txt ]
		then 
			if [ -f $shellDir/*.rsa ]
			then
				start
			else
				echo "no rsa in here dir"
			fi
		else
			echo "no keys.txt file in this dir"
		fi
	;;
	
	stop)
		stop
	
	;;
	status)
	
		status
	;;
	
	init)
		init
	;;
	perone)
		perone $2 $3 $4
	;;
	check)
		check
	;;
	*)
		echo "pelease help with admin"
		"
	;;
	
esac
