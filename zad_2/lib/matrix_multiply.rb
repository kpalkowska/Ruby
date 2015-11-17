def multi(wiersze1,kolumny1,wiersze2,kolumny2,macierz1,macierz2)
	macierzwynikowa = Array.new(wiersze1) { Array.new(kolumny2, 0) }
	for i in 0..wiersze1-1
		for j in 0..kolumny2-1
			macierzwynikowa[i][j]=0
			for k in 0..wiersze2-1
				macierzwynikowa[i][j]+=macierz1[i][k]*macierz2[k][j]
				k=k+1
			end
			j=j+1
		end
		i=i+1
	end
	puts "\n\n Macierz wynikowa\n"
	for i in 0..wiersze1-1
		for j in 0..kolumny2-1
			print "#{macierzwynikowa[i][j]} "
			j=j+1
		end
		print "\n"
		i=i+1
	end
	macierzwynikowa
end
