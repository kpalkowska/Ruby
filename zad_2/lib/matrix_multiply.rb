def multi(rows1, columns1, rows2, columns2, matrix1, matrix2)
	result = Array.new(rows1) { Array.new(columns2, 0) }
	for i in 0..rows1-1
		for j in 0..columns2-1
			result[i][j]=0
			for k in 0..rows2-1
				result[i][j]+=matrix1[i][k]*matrix2[k][j]
				k=k+1
			end
			j=j+1
		end
		i=i+1
	end
	puts "\n\n Result \n"
	for i in 0..rows1-1
		for j in 0..columns2-1
			print "#{result[i][j]} "
			j=j+1
		end
		print "\n"
		i=i+1
	end
	result
end
