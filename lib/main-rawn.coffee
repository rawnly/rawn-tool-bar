module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'
    @toolBar.addButton
      icon: 'folder'
      callback: 'application:open-file'
      tooltip: 'Open...'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'archive'
      callback: 'core:save'
      tooltip: 'Save'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'star'
      callback: 'application:open-your-snippets'
      tooltip: 'Snippets'
      iconset: 'ion'
    if atom.packages.getLoadedPackage('term3')
      @toolBar.addButton
        icon: 'code'
        callback: 'term3:open'
        tooltip: 'Open Terminal'
        iconset: 'ion'
    if atom.packages.getLoadedPackage('autoprefixer')
      @toolBar.addButton
        icon: 'fireball'
        callback: 'Autoprefixer'
        tooltip: 'Auto Prefix CSS'
        iconset: 'ion'
    if atom.packages.getLoadedPackage('fixmyjs')
      @toolBar.addButton
        icon: 'wrench'
        callback: 'FixMyJs'
        tooltip: 'FixMyJs'
        iconset: 'ion'
    if atom.packages.getLoadedPackage('git-plus')
      @toolBar.addButton
        icon: 'paper-airplane'
        callback: 'git-plus:add-all-commit-and-push'
        tooltip: 'Push All'
        iconset: 'ion'
    if atom.packages.getLoadedPackage('atom-html-preview')
      @toolBar.addButton
        icon: 'html5-plain'
        callback: 'atom-html-preview:toggle'
        tooltip: 'HTML Preview'
        iconset: 'devicon'
    if atom.packages.getLoadedPackage('minimap')
      @toolBar.addButton
        icon: 'map'
        callback: 'minimap:toggle'
        tooltip: 'Toggle Minimap'
        iconset: 'ion'
    if atom.packages.getLoadedPackage('css-clean')
      @toolBar.addButton
        icon: 'nuclear'
        callback: 'css-clean:convert'
        tooltip: 'Clean CSS'
        iconset: 'ion'

    @toolBar.addSpacer()
    @toolBar.addButton
      icon: 'navicon-round'
      callback: 'command-palette:toggle'
      tooltip: 'Toggle Command Palette'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'ios-cog'
      callback: 'settings-view:open'
      tooltip: 'Open Settings View'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'ios-loop-strong'
      callback: 'window:reload'
      tooltip: 'Reload Window'
      iconset: 'ion'
