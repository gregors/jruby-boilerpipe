module Boilerpipe
  module Document
    java_import 'com.kohlschutter.boilerpipe.document.TextDocument'
    java_import 'com.kohlschutter.boilerpipe.document.TextBlock'

    class TextBlock
      # Adding a mapping from ruby symbols to the format string used on the java side
      # e.g. de.l3s.boilerpipe/INDICATES_END_OF_TEXT is not the same as INDICATES_END_OF_TEXT
      # This is only for when we do TextBlock#has_label? from jruby
      def has_label?(l)
        l = "de.l3s.boilerpipe/#{l.to_s}" if l.is_a?(Symbol)
        self.hasLabel(l)
      end
    end
  end
end
