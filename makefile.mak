report : src/script.awk
	@awk -f src/script.awk data/heart.csv > reports/Heart_Failure_Dataset_Stats.txt
	@echo "\nA report has been generated in the reports directory under the file name \"Heart_Failure_Dataset_Stats.txt\"\n"
src/pokemonDataParser.awk : data/heart.csv
	@echo "\nThe script file: \"script.awk\" is missing in the src directory. This file is needed for the execution\n"
data/heart.csv:
	@echo "\nThe data file: \"heart.csv\" is missing in the data directory. Go to https://www.kaggle.com/fedesoriano/heart-failure-prediction to download the CSV file.\
\nIf you don't have an account on the platform you will need to create one download the data file. The file will need to be extracted from a zip folder and placed under \"data\" directory\""