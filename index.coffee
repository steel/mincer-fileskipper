prop = require("mincer/lib/mincer/common").prop

module.exports = (Mincer, extensions=[]) ->
  FileSkipperEngine = Mincer.FileSkipperEngine = ->
    Mincer.Template.apply(this, arguments)

  require("util").inherits(FileSkipperEngine, Mincer.Template)

  FileSkipperEngine::evaluate = ->
    # Skipped this files contents!
    @data = ""

  # Register all the extensions that should be skipped
  for ext in extensions
    Mincer.registerEngine ext, Mincer.FileSkipperEngine

  prop Mincer.FileSkipperEngine, "defaultMimeType", "application/javascript"