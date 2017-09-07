module Boilerpipe
  module Filters
    java_import 'com.kohlschutter.boilerpipe.filters.english.IgnoreBlocksAfterContentFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.english.TerminatingBlocksFinder'
    java_import 'com.kohlschutter.boilerpipe.filters.english.NumWordsRulesClassifier'
    java_import 'com.kohlschutter.boilerpipe.filters.english.HeuristicFilterBase'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.BlockProximityFusion'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.DocumentTitleMatchClassifier'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.ExpandTitleToContentFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.KeepLargestBlockFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.LargeBlockSameTagLevelToContentFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.ListAtEndFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.heuristics.TrailingHeadlineToBoilerplateFilter'
    java_import 'com.kohlschutter.boilerpipe.filters.simple.BoilerplateBlockFilter'

    class ExpandTitleToContentFilter
      def self.process(doc)
        new.process(doc)
      end
    end

    class IgnoreBlocksAfterContentFilter
      def self.process(doc)
        DEFAULT_INSTANCE.process(doc)
      end
    end

    class ListAtEndFilter
      def self.process(doc)
        INSTANCE.process(doc)
      end
    end

    class LargeBlockSameTagLevelToContentFilter
      def self.process(doc)
        INSTANCE.process(doc)
      end
    end

    class TerminatingBlocksFinder
      def self.process(doc)
        new.process(doc)
      end
    end

    class TrailingHeadlineToBoilerplateFilter
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
