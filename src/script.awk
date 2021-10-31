BEGIN {
    FS=",";
    counter = 0;
    sum_Age = 0;
    sum_RestingBP = 0;
    sum_Cholesterol = 0;
    sum_MaxHR = 0;

    max_Age = 0;
    max_RestingBP = 0;
    max_Cholesterol = 0;
    max_MaxHR = 0;

    min_Age = 0;
    min_RestingBP = 0;
    min_Cholesterol = 0;
    min_MaxHR = 0;

    count_males = 0;
    count_females = 0
}
NR>1{
     counter = counter +1;
     sum_Age = sum_Age + $1;
     sum_RestingBP = sum_RestingBP + $1;
     sum_Cholesterol = sum_Cholesterol + $1;
     sum_MaxHR = sum_MaxHR + $1;

    if ($1 >max_Age) {max_Age = $1};
    if ($4 >max_RestingBP) {max_RestingBP = $4};
    if ($5 >max_Cholesterol) {max_Cholesterol = $5};
    if ($8 >max_MaxHR) {max_MaxHR = $8};

    if ($1 <min_Age) {min_Age = $1};
    if ($4 <min_RestingBP) {min_RestingBP = $4};
    if ($5 <min_Cholesterol) {min_Cholesterol = $5};
    if ($8 <min_MaxHR) {min_MaxHR = $8};

    if ($2 ="M"){count_males = count_males+1};
    if ($2 ="F"){count_females = count_females+1};
} 

NR==1{print "		" $1 "		" $2"		" $4 "		" $5 "		" $8 " " }
NR>1{print "		" $1 "		" $2"		" $4 "			    " $5 "			    " $8 " " }

END{print "_________________________________________________________________________________________________________"}
END{print "Average: 	" sum_Age/counter "		-		" sum_RestingBP/counter  "			" sum_Cholesterol/counter "			" sum_Cholesterol/counter }
END{print "Max: 		" max_Age "		-		" max_RestingBP "			" max_Cholesterol "			" max_MaxHR }
END{print "Min: 		" min_Age "		-		" min_RestingBP  "			" min_Cholesterol "			" min_MaxHR }
END{print "Count Males: 	-		"count_males"		-			-			-" }
END{print "Count Females: 	-		"count_females"		-			-			-" }
