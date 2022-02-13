pauseButton = false
playPause= ->
    buttonPlayPause = document.getElementById "pausePlay"
    cdTurning = document.getElementById "image"
    if pauseButton 
        # if the pause button is on screen
        buttonPlayPause.classList.remove 'bi-pause-fill'
        buttonPlayPause.classList.add 'bi-play-fill'

        cdTurning.classList.remove "turning"
        cdTurning.classList.add "notTurning"
        pauseButton = false
    else
        # if its the play button
        buttonPlayPause.classList.remove 'bi-play-fill'
        buttonPlayPause.classList.add 'bi-pause-fill'

        cdTurning.classList.add "turning"
        cdTurning.classList.remove "notTurning"
        pauseButton = true