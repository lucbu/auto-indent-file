module.exports =
  activate: ->
    atom.commands.add 'atom-text-editor', "auto-indent-file:autoindentfile", => @autoindentfile()

  autoindentfile: ->
    # This assumes the active pane item is an editor
    editor = atom.workspace.getActiveTextEditor()
    position = editor.getCursorBufferPosition()
    editor.selectAll()
    editor.autoIndentSelectedRows()
    editor.setCursorBufferPosition(position)
