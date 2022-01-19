class ExecutionResultSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :stdout, :return, :error, :run_time
end
