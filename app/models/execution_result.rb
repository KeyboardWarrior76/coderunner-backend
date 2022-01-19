class ExecutionResult < ApplicationRecord
  before_create :fail_creation

  def self.execute_code(language:, code:, run_script:, arguments:)
    raise "Invalid Language #{language}" unless valid_language?(language)

    input = {
      code: code,
      runScript: send("#{language}_exec", run_script, arguments),
    }.to_json

    path = CodeRunnerPaths.find(language)
    result = Open3.capture2("node #{path}", stdin_data: input)
    # binding.pry
    parsed_result = JSON.parse(result[0])
    ExecutionResult.new(parsed_result)
  end

  def self.valid_language?(language)
    whitelist = HashWithIndifferentAccess.new(
      javascript: true,
    )

    whitelist[language] || false
  end

  def self.javascript_exec(run_script, args)
    "
    {\n
      #{run_script}\n\n

      module.exports = runTest({ args: JSON.parse('#{args}') });\n
    }
    "
  end

  private

  def fail_creation
    errors.add(:create, "Execution results are not saveable to database")
  end
end
