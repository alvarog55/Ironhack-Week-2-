class FileCounter
  def initialize(file)
    @file = file
    read_file
  end

  def read_file
    @content = @file.read
  end

  def count_words
    @content.split(" ").count
  end
end
