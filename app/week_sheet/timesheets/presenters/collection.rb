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

        ["draft", "approved"].each do |status|
          define_method status do |&block|
            in_status(status, &block)
          end
        end

       def in_status(status, &block)
          self.timesheets.select{|timesheet| timesheet.status == status}.each(&block)
        end
      end
    end
  end
end
