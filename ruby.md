## Przydatne informacje dotyczące języka Ruby

### Tablice
 - tworzy się je przez podanie kilku elementów wewnątrz nawiasów kwadratowych
 
        arr = [1, "lis", 7.0]
        Array.new
        => []

        Array.new(3, lis)
        => [lis, lis, lis]
        
        Array.new(3) = { Array.new(2, lis) }
        => [[lis, lis], [lis, lis], [lis, lis]]

 - mogą przyjmować obiekty różniące się typami
 - mogą być łączone (join) i dzielone (split)
 
        tekst = arr.join(":")
        => "1:2:3"

        tekst.split(":")
        => ["1", "2", "3"]

 - odniesienie się do części tablicy może odbyć się dzięki indeksom
 
        arr = [1, 2, 3, 4, 5]
        arr[0..1]
        => [1, 2]

        arr[-2]
        => 4 
        (wartości ujemne oznaczają położenie w tablicy od końca)
        
        arr[2, -2]
        => [3, 4]
        
        arr.at(0)
        => 1
        
        arr.first
        => 1
        
        arr.last
        => 5
        
        arr.take(3) - trzy od początku
        => [1, 2, 3]
        
        arr.drop(3) - trzy od końca
        => [3, 4, 5]
 
 - unię dwóch tablic uzyskujemy tak: 
 
        tab1 | tab2

 - część wspólną dwóch tablic:
 
        tab1 & tab2

 - różnicę dwóch tablic:
 
        tab1 - tab2

 - aby uzyskać informacje o tablicy możemy użyć:
 
        browsers = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']
        browsers.length
        => 5

        browsers.count
        => 5
        
        browsers.empty?
        => false
        
        browsers.include?('Klaudia')
        => false

 - aby dodać elementy możemy użyć poniższych poleceń
 
        arr = [1, 2, 3, 4]
        arr.push(5)
        => [1, 2, 3, 4, 5]

        arr << 6
        => [1, 2, 3, 4, 5, 6]
        
        arr.unshift(0)
        => [0, 1, 2, 3, 4, 5, 6]
        
        arr.insert(2, 2.45, 2.56, 2.98)
        => [1, 2, 2.45, 2.56, 2.98, 3, 4, 5, 6]

 - aby usunąć wybrane elementy można użyć następujących poleceń
 
        arr = [1, 2, 3, 4, 5]
        arr.pop(5)
        => [1, 2, 3, 4]

        arr.shift(1)
        => [2, 3, 4]
        
        arr.delete_at(1)
        => [2, 4]
        
        arr = [1, 2, 2, 3]
        arr.delete(2)
        => [1, 3]
        
        arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
        arr.compact - pomijanie 'nil' bez zapisu
        => ['foo', 0, 'bar', 7, 'baz']
        
        arr.compact! - pomijanie 'nil' z zapisem
        => ['foo', 0, 'bar', 7, 'baz']
        arr
        => ['foo', 0, 'bar', 7, 'baz']
        
        arr = [1, 2, 2, 4, 5, 7, 7, 6, 7, 9]
        arr.uniq - pomijanie powtórzeń bez zapisu (arr.unique! - z zapisem)
        => [1, 2, 4, 5, 7, 6, 9]

 - iteracja po tablicy
 
        arr = [1, 2, 3, 4, 5]
        arr.each { |liczba| print liczba -= 2, " " } - bez zapisu
        => [-1, 0, 1, 2, 3]

        slowa = %w[idzie lisek koło drogi]
        str = ""
        words.reverse_each { |slowa| str += "#{slowa} " }
        p str
        => "drogi koło idzie lisek "
        
        arr.map { |a| 4*a }
        => [4, 8, 12, 16, 20]
        arr
        => [1, 2, 3, 4, 5]

 - wybieranie elementów:
 
   - bez zapisu
           arr = [1, 2, 3, 4, 5, 6]
           arr.select { |a| a > 3 }
           => [4, 5, 6]
   
           arr.reject { |a| a < 3 }
           => [3, 4, 5, 6]
           
           arr.drop_while { |a| a < 4 }
           => [4, 5, 6]
           arr
           => [1, 2, 3, 4, 5, 6]

   - z zapisem
          arr.delete_if { |a| a < 4 }
          => [4, 5, 6]
          arr
          => [4, 5, 6]
  
          arr = [1, 2, 3, 4, 5, 6]
          arr.keep_if { |a| a < 4 }
          => [1, 2, 3]
          arr
          => [1, 2, 3]

- inne ciekawe opcje:

         arr = [1, 2, 3, 4]
         arr.combination(2).to_a
         => [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
         
         arr = ["a", "b", "c"]
         arr.cycle(2) { |x| puts x }
         => a, b, c, a, b, c
         
         [1,2].product([3,4],[5,6]) - kombinacje
         => [[1,3,5],[1,3,6],[1,4,5],[1,4,6],[2,3,5],[2,3,6],[2,4,5],[2,4,6]]
         
         arr = [ "a", "b", "b", "b", "c" ]
         arr.index("b") - indeks pierwszego wystpienia "b"
         => 1
         
         arr.rindex("b") - indeks ostatniego wystpienia "b"
         => 3
         
         arr = [1, 2, 3, 4, 5]
         arr.rotate(2) - rotacja wzgldem elementu o indeksie 2
         => [3, 4, 5, 1, 2]
         arr.rotate(-2)
         => [4, 5, 1, 2, 3]
         
         arr.sample(2) - losowe 2 elementy
         => [2,5]
         
         arr = [ 1, 2, 3 ]
         => [1, 2, 3]
         arr.shuffle! - losowe mieszanie elementów
         => [2, 3, 1]
         arr
         => [2, 3, 1]

### Hash'e
 - inaczej tablice asocjacyjne lub słowniki
 - mają elementy, które są dostępne przez klucze mogące mieć wartość dowolnego rodzaju
 
        h = {1 => 2, "2" => "4"}
        => {1=>2, "2"=>"4"}

        h[1]
        => 2
        
        h["2"]
        => "4"
        
        h[5]
        => nil
 
 - wartość domyślna
 
        h = Hash.new("Lisek chytrusek")
        h["a"] = 100
        h["b"] = 200
        
        h["a"]
        => 100
        h["c"]
        => "Lisek chytrusek"

        h["c"].upcase!
        => "LISEK CHYTRUSEK"
        
        h["d"]
        => "LISEK CHYTRUSEK"
        
        h.keys
        => ["a", "b"]

 - kasowanie elementów słownika
 
        h.delete 1
        => 2
        h[1]
        => nil

 - wyświetlanie każdego elementu
 
        h = { "a" => 100, "b" => 200 }
        h.each {|key, value| puts "#{key} is #{value}" }
        
        a is 100
        b is 200
       
        h = { "a" => 100, "b" => 200 }
        h.each_key {|key| puts key }
        
        a
        b
        
        h = { "a" => 100, "b" => 200 }
        h.each_value {|value| puts value }
        
        100
        200

 - łączenie słowników
 
        h1 = { "a" => 100, "b" => 200 }
        h2 = { "b" => 254, "c" => 300 }
        h1.merge(h2)
        => {"a"=>100, "b"=>254, "c"=>300}

        h1.merge(h2){|key, oldval, newval| newval - oldval}
        => {"a"=>100, "b"=>54,  "c"=>300}
        h1
        => {"a"=>100, "b"=>200}

 - dodawanie nowego klucza
 
        h = { "a" => 100, "b" => 200 }
        h["a"] = 9
        h["c"] = 4

        h
        => {"a"=>9, "b"=>200, "c"=>4}
        
        h.store("d", 42)
        => 42
        h
        => {"a"=>9, "b"=>200, "c"=>4, "d"=>42}


### Enumerable
 - realizuje kilka metod, które wykorzystują metodę each do iterowania po elementach
 - metody: 
  - exclude?(object) - zwraca true, gdy pakiet nie zawiera danego obiektu
  - index_by() - konwertuje na tablicę asocjacyjną
  - many?() - zwraca true, gdy moduł zawiera więcej niż jeden element, może być również używana jako sprawdzenie czy którykolwiek element spełnia dane wymagania
  
          enum.to_a.size > 1
  
          people.many? { |p| p.age > 18 }
          (zwróci true, jeśli jest dany człowiek w wieku powyżej 18 lat)

  - sum(identity = 0, &block) - liczy sumę elementów, może być również bez użycia bloków
  
          payments.sum { |p| p.price * p.tax_rate }
          payments.sum(&:price)
  
          [5, 15, 10].sum # => 30
          ['foo', 'bar'].sum # => "foobar"
          [[1, 2], [3, 1, 5]].sum => [1, 2, 3, 1, 5]
