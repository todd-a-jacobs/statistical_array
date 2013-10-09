module StatisticalArray
  class StatsArray
    alias_method :avg, :mean
    alias_method :min, :minimum
    alias_method :max, :maximum
    alias_method :pop_std, :population_standard_deviation
    alias_method :std_dev, :sample_standard_deviation
    alias_method :total, :sum
  end
end
