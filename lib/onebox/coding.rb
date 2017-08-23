module Onebox
  module Engine
    class NameOnebox
      include LayoutSupport
      include HTML

      private

      def data
        {
          url: @url,
          name: raw.css("h1").inner_text,
          image: raw.css("#main-image").first["src"],
          description: raw.css("#postBodyPS").inner_text
        }
      end
    end
  end
end
