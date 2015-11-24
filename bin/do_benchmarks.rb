require 'benchmark'
require_relative '../lib/euklides'
require_relative '../lib/silnia'
require_relative '../lib/matrix_multiply'

array5 = (1..500_000).map {rand}
m1 = [[1,2,3],[1,2,3],[1,2,3]]
m2 = [[1,2,3],[1,2,3],[1,2,3]]
m3 = Array.new(1000){Array.new(200){rand} }
m4 = Array.new(200){Array.new(50){rand} }


Benchmark.bm(4) do |x|
  #x.report('500_000 sort!') {array5.dup.sort!}
  x.report('euklides (7717,5227)') {euklides(7717,5227)}
  x.report('euklides (224711*10^6, 224717)') {euklides(224711000000, 22471)}
  x.report('silnia (50)') {silnia(50)}
  x.report('silnia (5*10^4)') {silnia(5*10000)}
  x.report('matrix_multiply') {multi(3,3,3,3,m1,m2)}
  x.report('matrix_multiply') {multi(1000,200,200,50,m3,m4)}
end
