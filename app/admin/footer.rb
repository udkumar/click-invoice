module ActiveAdmin
  module Views
    class Footer < Component

      def build
        super :id => "footer"
        super :style => "text-align: right; color: #000000;"

        div do
          small "Happy Club Shop #{Date.today.year}"
        end
      end

    end
  end
end
