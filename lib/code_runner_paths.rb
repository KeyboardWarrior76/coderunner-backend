module CodeRunnerPaths
  @paths = HashWithIndifferentAccess.new({
    javascript: Rails.root.join("code_runners", "javascript", "main.js"),
  })

  def self.find(language)
    @paths[language]
  end
end
