## Przydatne informacje dotyczące języka Ruby

### Tablice
 - tworzy się je przez podanie kilku elementów wewnątrz nawiasów kwadratowych
 - mogą przyjmować obiekty różniące się typami
 - mogą być łączone (join) i dzielone (split)
 
        irb(main):010:0> tekst = tab.join(":")
        => "1:2:3"
        irb(main):011:0> tekst.split(":")
        => ["1", "2", "3"]

 - odniesienie się do części tablicy może odbyć się dzięki indeksom
 
        irb(main):006:0> tab[0..1]
        => [1, 2]
        irb(main):007:0> tab[-2]
        => 2 
        (wartości ujemne oznaczają położenie w tablicy od końca)

 - unię dwóch tablic uzyskujemy tak: tab1 | tab2
 - część wspólną dwóch tablic: tab1 & tab2
 - różnicę dwóch tablic: tab1 - tab2


### Hash'e
 - inaczej tablice asocjacyjne lub słowniki
 - mają elementy, które są dostępne przez klucze mogące mieć wartość dowolnego rodzaju
 
        irb(main):014:0> h = {1 => 2, "2" => "4"}
        => {1=>2, "2"=>"4"}
        irb(main):015:0> h[1]
        => 2
        irb(main):016:0> h["2"]
        => "4"
        irb(main):017:0> h[5]
        => nil

 - kasowanie elementów słownika
 
        irb(main):020:0> h.delete 1
        => 2
        irb(main):021:0> h[1]
        => nil

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
