require 'simplecov'
SimpleCov.start

require_relative '../lib/matrix_multiply'

RSpec.describe 'matrix_multiply.rb' do
  describe "#Matrix_multiply" do
    context 'should be defined' do
      it "if result is matrix with the same number of rows and columns" do
        matrix1=[[1,2,3],[4,5,6]]
        matrix2=[[1,2],[3,4],[5,6]]
        expect(multi(2,3,3,2,matrix1,matrix2)).to eq([[22,28],[49,64]])
      end
    end
    context 'should be defined' do
      it "if number of columns in matrix1 equals number of rows in matrix2" do
        matrix3=[[1,2,3,6,7],[4,2,3,5,6],[2,1,3,4,2]]
        matrix4=[[1,2,2],[3,1,4],[1,5,6],[1,2,3],[1,2,3]]
        expect(multi(3,5,5,3,matrix3,matrix4)).to eq([[23,45,67],[24,47,67],[14,32,44]])
      end
    end
    context 'should be defined' do
      it "if result is matrix with not equal number of rows and columns" do
        matrix5=[[3,4,5,6],[1,2,3,4]]
        matrix6=[[3,3,3],[2,2,2],[1,1,1],[6,6,6]]
        expect(multi(2,4,4,3,matrix5,matrix6)).to eq([[58,58,58],[34,34,34]])
      end
    end
  end
end
