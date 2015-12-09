$.extend String.prototype, camelize: ->
  @replace /(?:^|[-_])(\w)/g, (_, c) ->
    if c then c.toUpperCase() else ''

$(document).on 'ready page:load', (event) ->
  ctrl   = $('body').data('turboctrl-controller').camelize();
  action = $('body').data('turboctrl-action')
  try
    klass = eval ctrl

  if typeof klass is 'function'
    instance = new klass

    try
      method = eval "instance.#{action}"

      if typeof method is 'function'
        method(event)
