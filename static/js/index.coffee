class Cd
    constructor: (@name, @author, @publishDate, @category, @songs, @icon) ->

    renderCd :-> # ugly ass reactjs from wish
        main = document.getElementById "main_box"
        generalBox = document.createElement "div"
        generalBox.id = @name
        main.appendChild generalBox

        albumBox = document.getElementById @name

        # the icon of the cd
        cdIcon = document.createElement "img"
        cdIcon.src = @icon
        cdIcon.id = @name + "Icon"
        cdIcon.classList.add "icon"

        #container with some text
        boxForText = document.createElement "div"
        boxForText.classList.add "boxText"

        # name of the album
        cdName = document.createElement "h1"
        cdName.textContent = @name

        # artist
        cdArtist = document.createElement "h2"
        cdArtist.textContent = @author

        # actually append alle those elements
        albumBox.appendChild cdIcon
        albumBox.appendChild boxForText
        boxForText.appendChild cdName
        boxForText.appendChild cdArtist



class Track
    constructor: (@author, @length, @place) ->
        @featuring = null
    
    checkFeaturingEmpty: ->
        if @featuring is null 
            return true
        else
            return false

    addFeaturing: (newAuthor) ->
        if checkFeaturingEmpty()
            @featuring = [newAuthor]
        else 
            @featuring.append newAuthor

# create all album
# UGLY AS FUCK
astroworld = new Cd "Astroworld", "Travis Scott", 2018, "Rap", "ui tkt", "https://findicons.com/files/icons/45/blend/512/cd.png"
znother = new Cd "ui", "mayber", 45, "metal", "jspckoa", "https://findicons.com/files/icons/45/blend/512/cd.png"
lastOne = new Cd "another one", "by probably somebody", 727, "cool nah", "idk wtf is that", "https://findicons.com/files/icons/45/blend/512/cd.png"
astroworld.renderCd()
znother.renderCd()
lastOne.renderCd()
#home()