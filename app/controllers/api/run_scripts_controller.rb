class Api::RunScriptsController < ApiController
  def run
    solution_result = ExecutionResult.execute_code(
      language: params[:language],
      code: params[:solution_code],
      run_script: params[:run_script],
      arguments: params[:arguments],
    )

    result = ExecutionResult.execute_code(
      language: params[:language],
      code: params[:code],
      run_script: params[:run_script],
      arguments: params[:arguments],
    )

    if solution_result.valid? && result.valid?
      render(json: ExecutionResultSerializer.new([solution_result, result]))
    else
      render(json: { errors: { messages: result.errors.messages } }, status: 422)
    end
  end
end
