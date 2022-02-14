pauseButton = false
primaryColor = ["body"]
secondaryColor = ["boxAlbum", "cdHole"]
indexCdList = 0

class Cd
    constructor: (@name, @author) ->

    renderCd: (skip=false, previous=null) ->
        nameAlbum = document.getElementById "nameAlbum"
        nameArtist = document.getElementById "nameArtist"
        nameAlbum.textContent = @name
        nameArtist.textContent = @author
        if skip
            for colors in primaryColor
                
                document.getElementById(colors).classList.add "primaryColor"+@name
            
            for i in secondaryColor
                document.getElementById(i).classList.add "secondaryColor"+@name
        else
            for colors in primaryColor
                document.getElementById(colors).classList += "primaryColor"+@name
            
            for i in secondaryColor
                document.getElementById(i).classList.add "secondaryColor"+@name 


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
         
example = new Cd "dark", "name of the artist"
example2 = new Cd "example", "random people ngl"
listCd = [example, example2]
listCd[indexCdList].renderCd()