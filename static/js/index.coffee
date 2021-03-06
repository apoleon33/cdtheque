pauseButton = false
primaryColor = ["nameAlbum", "nameArtist", "goBack","pausePlay","skip"]
secondaryColor = ["boxAlbum","cdHole"]
getRandomInt = (max)  -> return Math.floor Math.random() * max 
indexCdList = 0
console.log indexCdList

class Cd
    constructor: (@name, @author, @classname) ->

    renderCd: ->
        nameAlbum = document.getElementById "nameAlbum"
        nameArtist = document.getElementById "nameArtist"
        console.log @name.length
        if @name.length > 17
            nameAlbum.textContent = @name.substring(0,16) + " ..."
        else
            nameAlbum.textContent = @name
        nameArtist.textContent = @author
        for colors in primaryColor
            document.getElementById(colors).classList.add "primaryColor"+@classname
            
        for i in secondaryColor
            document.getElementById(i).classList.add "secondaryColor"+@classname
        
        document.getElementById("image").classList.add "image"+@classname
        document.getElementById("backgroundImage").classList.add "image"+@classname

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
        document.getElementById(colors).classList.remove "primaryColor"+listCd[indexCdList].classname

    for i in secondaryColor
        document.getElementById(i).classList.remove "secondaryColor"+listCd[indexCdList].classname
    
    document.getElementById("image").classList.remove "image"+listCd[indexCdList].classname
    document.getElementById("backgroundImage").classList.remove "image"+listCd[indexCdList].classname
    
    if skip
        indexCdList  += 1
        if listCd.length == indexCdList
            indexCdList = 0
    else
        indexCdList -= 1
        if indexCdList < 0
            indexCdList = listCd.length - 1

    listCd[indexCdList].renderCd()
    
# cd list
heartBreak = new Cd "808s & Heartbreak", "Kanye West", "heartbreak"
astroworld = new Cd "Astroworld", "Travis Scott", "astroworld"
bangarang = new Cd "Bangarang", "Skrillex", "bangarang"
birdsInTheTrapSingMcKnight = new Cd "Birds In The Trap Sing Mcknight", "Travis Scott", "birdsInTheTrapSingMcKnight"
blackAlbum = new Cd "The Black Album", "Metallica", "blackAlbum"
civilisation = new Cd "Civilisation", "Orelsan", "civilisation"
donda = new Cd "Donda", "Kanye West", "donda"
evilEmpire = new Cd "Evil Empire", "Rage against The Machine", "evilEmpire"
impera = new Cd "Impera", "Ghost", "impera"
lestWeForget = new Cd "Lest We Forget", "Marilyn Manson", "lestWeForget"
meliora = new Cd "Meliora", "Ghost", "meliora"
myBeautifulDarkTwistedFantasy = new Cd "My Beautiful Dark Twisted Fantasy", "Kanye West", "myBeautiFulFarkTwistedFantasy"
rageAgainstTheMachine = new Cd "Rage Against The Machine", "Rage Against The Machine", "rageAgainstTheMachine"
rodeo = new Cd "Rodeo", "Travis Scott", "rodeo"
theGrayChapter = new Cd "The Gray Chapter", "Slipknot", "theGrayChapter"
weAreNotYourKind = new Cd "We Are Not Your Kind", "Slipknot", "weAreNotYourKind"

listCd = [
         heartBreak,
         astroworld,
         bangarang, 
         birdsInTheTrapSingMcKnight,
         blackAlbum,
         civilisation,
         donda,
         evilEmpire,
         impera,
         lestWeForget,
         meliora,
         myBeautifulDarkTwistedFantasy
         rageAgainstTheMachine,
         rodeo,
         theGrayChapter,
         weAreNotYourKind
         ]
indexCdList = getRandomInt listCd.length
listCd[indexCdList].renderCd()