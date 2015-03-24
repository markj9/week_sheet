module WeekSheet
  module Timesheets
    module Presenters
      class Collection
        def self.for(timesheets)
          new(timesheets)
        end

        attr_reader :timesheets
        def initialize(timesheets)
          @timesheets = timesheets
        end

        def draft(&block)
          self.timesheets.select{|timesheet| timesheet.status == "draft"}.each(&block)
        end

        def approved(&block)
          self.timesheets.select{|timesheet| timesheet.status == "approved"}.each(&block)
        end
      end
    end
  end
end
