module ProblemsHelper
  #.class_eval:ブロック内(do~end)をApplicationRecordのクラスメソッドとして実行する
  ApplicationRecord.class_eval do
    def id_and_title
      self.id.to_s + " " + self.title
    end
  end
end
