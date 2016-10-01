# Update v1.1.2
atom.commands.add 'atom-text-editor', 'rawn:todo', ->
  return unless editor = atom.workspace.getActiveTextEditor()
  selection = editor.getLastSelection()
  selTxt = "#{selection.getText()}"
  text = atom.clipboard.write("#{selTxt}")
  clipText = atom.clipboard.read()
  if clipText != ''
    notify = atom.notifications.addInfo("#{clipText}", dismissable: true, buttons: [ { text: 'Copy', onDidClick: -> info() } ]  )
  else
    atom.notifications.addError("Empty Selection!", 'dismissable': true)
  info = () ->
      atom.notifications.addSuccess("Copied to clipboard!", 'dismissable': false)
      atom.clipboard.write("#{clipText}")
      notify.dismiss()
