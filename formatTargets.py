
fr = open('evenDataTarget.csv', 'r')
fw = open('evenDataTargetMatlab.csv', 'w')

for line in fr:
    num = int(line)
    if num == 0:
        fw.write('1')
    else:
        fw.write('0')
    for i in range(1,10):
        fw.write(',')
        if num == i:
            fw.write('1')
        else:
            fw.write('0')
    fw.write('\n')

fr.close()
fw.close()


