
$(document).foundation()
io = io.connect()

// Emit ready event, and wait for acknowledgement.
io.emit('ready', {hey: 'server'}, function(data) {
    alert(data.success)
})

