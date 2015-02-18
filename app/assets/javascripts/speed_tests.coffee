stats = new MemoryStats()

stats.domElement.style.position = 'fixed'
stats.domElement.style.right    = '0px'
stats.domElement.style.bottom   = '0px'

ready = ->
  document.body.appendChild(stats.domElement)

$(document).ready(ready)
$(document).on('page:load', ready)

rAFloop = ->
  stats.update()
  requestAnimationFrame(rAFloop)

requestAnimationFrame(rAFloop)
