pauseButton = false
primaryColor = ["body"]
secondaryColor = ["boxAlbum", "cdHole",  "navLink1", "navLink2","navbar"]
indexCdList = 0

class Cd
    constructor: (@name, @author) ->

    renderCd: ->
        nameAlbum = document.getElementById "nameAlbum"
        nameArtist = document.getElementById "nameArtist"
        nameAlbum.textContent = @name
        nameArtist.textContent = @author
        for colors in primaryColor
            document.getElementById(colors).classList.add "primaryColor"+@name
            
        for i in secondaryColor
            document.getElementById(i).classList.add "secondaryColor"+@name
        
        document.getElementById("image").classList.add "image"+@name


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

skip =(skip)->
    for colors in primaryColor
        document.getElementById(colors).classList.remove "primaryColor"+listCd[indexCdList].name

    for i in secondaryColor
        document.getElementById(i).classList.remove "secondaryColor"+listCd[indexCdList].name
    
    document.getElementById("image").classList.remove "image"+listCd[indexCdList].name
    
    if skip
        indexCdList  += 1
        if listCd.length == indexCdList
            indexCdList = 0
    else
        indexCdList -= 1
        if indexCdList < 0
            indexCdList = listCd.length - 1

    listCd[indexCdList].renderCd()

goBack = ->
    

example = new Cd "dark", "name of the artist"
example2 = new Cd "example", "random people ngl"
listCd = [example, example2]
listCd[indexCdList].renderCd()