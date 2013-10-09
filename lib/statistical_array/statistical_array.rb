module StatisticalArray
  class StatsArray
    def initialize ary, template=nil
      @ary = Array(ary).flatten.compact
      @template_name = template || 'ArrayTemplate'
    end

    def print
      Kernel.const_get(@template_name.to_s).render self
    end

    def minimum
      @ary.min
    end

    def maximum
      @ary.max
    end

    def mean
      @ary.reduce(:+) / @ary.count.to_f
    end

    def median
      return nil if @ary.empty?
      n = @ary.size
      a = @ary.sort
      n.odd? ? a[(n-1)/2] : a[(n-1)/2,2].reduce(:+) / 2.0
    end

    def population_standard_deviation
      Math.sqrt @ary.reduce(0) { |i, j| i + (j - mean)**2 } / @ary.count
    end

    def sample_standard_deviation
      Math.sqrt @ary.reduce(0) { |i, j| i + (j - mean)**2 } / (@ary.count - 1.5)
    end

    def sum
      @ary.reduce(:+)
    end
  end
end
