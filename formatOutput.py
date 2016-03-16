import csv

fw = open('output_adjusted.csv', 'w') 

with open('output.csv', newline='') as csvfile:
	reader = csv.reader(csvfile, delimiter=',',)
	rownumber = 1

	for row in reader:
#		print(rownumber)

		#convert strings to ints
		rowdata = [float(i) for i in row]

		#find max in each row
		m = max(rowdata)
		
		#get index of max
		index = -1
		for j in range(10):
			if rowdata[j] == m:
				index = j
				break
		
		# write 0s and 1s to fw
		if index == 0:
			fw.write('1')
		else:
			fw.write('0')
		for k in range(1,10):
			fw.write(',')
			if k == index:
				fw.write('1')
			else:
				fw.write('0')
		fw.write('\n')
		rownumber += 1

fw.close()




		
