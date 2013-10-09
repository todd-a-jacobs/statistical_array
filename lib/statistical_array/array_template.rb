module StatisticalArray
  class ArrayTemplate
    FMT = '
      Minimum Value: %s
      Maximum Value: %s
      Mean: %s
      Median: %s
      Population Standard Deviation: %s
      Sample Standard Deviation: %s
      Sum of Values: %s'.gsub /^\s+/, ''

    def self.render obj
      values =
        %i[min max mean median pop_std std_dev sum].map { |sym| obj.send sym  }
      puts FMT % values
    end
  end
end
