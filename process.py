# Open the um-server-01.txt file and store it into variable log_file
log_file = open("um-server-01.txt")

#sales_reports function:
#Takes a log_file object and prints all the log records that were made on a Tuesday
def sales_reports(log_file):
    #For loop that iterates through all the log records
    for line in log_file:
        #rstrip method gets rid of all the trailing white spaces
        #from the current line
        line = line.rstrip()
        #Get the day of the record consisting on the first 3 characters
        #of the line and store them in the day variable
        day = line[0:3]
        #Check if the record day is Tuesday
        if day == "Tue":
            #if the record day is Tuesday, print the whole record
            print(line)

#Invoke the sales_reports function with the log_file
#sales_reports(log_file)

#CHANGED SCRIPT: Display sales info for Monday
def sales_reports_monday(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)

sales_reports_monday(log_file)

#EXTRA CREDIT: function that prints out all the melon orders that delivered over 10 melons.
def over_ten(log_file):
    for line in log_file:
        line = line.rstrip()
        qty = line[16:18]
        if int(qty) > 10:
            print(line)

over_ten(log_file)