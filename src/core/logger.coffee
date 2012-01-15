class Logger
  constructor: ->
    for name in ['log', 'info', 'warn', 'error']
      @[name] = do (name) ->
        ->
           window.console[name].apply console, arguments if window.console? and Caman.DEBUG

    @debug = @log

Log = new Logger()