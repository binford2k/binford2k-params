Puppet::Parser::Functions.newfunction(:params,
    :type  => :rvalue,
    :arity => 1,
    :doc   => "Return a value from the module's params class, including if required"
) do |args|
  name = self['module_name']

  function_include(["#{name}::params"])
  lookupvar("#{name}::params::#{args.first}")
end

