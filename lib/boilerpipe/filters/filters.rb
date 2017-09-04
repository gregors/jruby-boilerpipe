module Boilerpipe
  module Filters
    java_import 'com.kohlschutter.boilerpipe.filters.english.IgnoreBlocksAfterContentFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.english.TerminatingBlocksFinder'
    java_import 'com.kohlschutter.boilerpipe.filters.english.NumWordsRulesClassifier'
    java_import 'com.kohlschutter.boilerpipe.filters.english.HeuristicFilterBase'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.DocumentTitleMatchClassifier'

    class IgnoreBlocksAfterContentFilter
      def self.process(doc)
        DEFAULT_INSTANCE.process(doc)
      end
    end

    class TerminatingBlocksFinder
      def self.process(doc)
        new.process(doc)
      end
    end

    class NumWordsRulesClassifier 
      def self.process(doc)
        new.process(doc)
      end
    end

  end
end
