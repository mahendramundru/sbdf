bdf | awk '{
if (NR==1 || NF==1) {
	if(NF==1){
		x = $1;
	}
	if (NR == 1){
		{printf "%-40s\t", $1};
		$2="total"
		{printf "%-10s\t", $2};
		{printf "%-10s\t", $3};
		{printf "%-10s\t", $4};
		{printf "%-10s\t", $5};
		{printf "%s\n", $6};
	}
}
else {
		if(NF==5){
			$6=$5; $5=$4; $4=$3; $3=$2; $2=$1; $1=x;
		}
		{printf "%-40s\t", $1}; 
		if($2>1024*1024) 
			{{printf "%-10.2fGB", $2/1024/1024}; }
		else if($2>1024) 
			{{printf "%-10.2fMB", $2/1024}; }
		else 
			{{printf "%-10.2fKB", $2}; }
		
		{printf "\t"};
		
		if($3>1024*1024) 
			{{printf "%-10.2fGB", $3/1024/1024}; }
		else if($3>1024) 
			{{printf "%-10.2fMB", $3/1024}; }
		else 
			{{printf "%-10.2fKB", $3}; }
		
		{printf "\t"};
		
		if($4>1024*1024) 
			{{printf "%-10.2fGB", $4/1024/1024}; }
		else if($4>1024) 
			{{printf "%-10.2fMB", $4/1024}; }
		else 
			{{printf "%-10.2fKB", $4}; }

		{printf "\t"};
		
		{printf "%-10s\t", $5}; 
		
		{printf "%s\n", $6};
	}
}'
