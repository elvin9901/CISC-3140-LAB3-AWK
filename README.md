# Heart Failure Dataset Stats

This project contais a script that calculates stats from data found in the dataset 
[Heart Failure Prediction Dataset](https://www.kaggle.com/fedesoriano/heart-failure-prediction).

## Report Generation
The AWK script calculates The following stats:
1. Average of Age, RestingBP, Cholesterol and MaxHR
2. The count of males and females in the entire dataset.
After printing the used columns' data, the calculated stats are displayed in the end of the report.
## Dependencies

To build the program using Makefile via the terminal in Linux environment, you will need to install make, first. 

```bash
sudo apt install make
```

## Usage

Run this command in the root directory of the repository to build the project. A text file called "Heart_Failure_Dataset_Stats.txt" will be generated in your reports directory.

```bash
make -f makefile.mak
```
