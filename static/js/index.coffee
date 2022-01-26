
# threejs
###
scene = new THREE.Scene()
camera = new THREE.PerspectiveCamera 90, window.innerWidth/window.innerHeight, 0.1, 1000
renderer = new THREE.WebGLRenderer
renderer.setSize window.innerWidth, window.innerHeight
document.body.appendChild renderer.domElement
geometry = new THREE.BoxGeometry()
material = new THREE.MeshBasicMaterial { color:0x700B97}
cube = new THREE.Mesh geometry, material
scene.add cube
camera.position.z = 5

animate = ->
    scene.add cube
    requestAnimationFrame animate
    #cube.rotation.x += 0.01;
    cube.rotation.y += 0.01;
    renderer.render scene, camera

home = -> animate()###

class Cd
    constructor: (@name, @author, @publishDate, @category, @songs, @icon) ->

    renderCd = () -> # ugly ass reactjs from wish
        main = document.getElementById "main_box"
        main.innerHTML = "<div id=" + @name + "></div>"
        albumBox = document.getElementById @name

        # the icon of the cd
        cdIcon = document.createElement "img"
        cdIcon.src = @icon
        cdIcon.id = @name + "Icon"
        cdIcon.class = "icon"

        #description of the album:
        cdName = document.createElement "h1"



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


cdtheque = ->
    clearThree()
    main = document.getElementById "main_box"
    main.innerHTML = "<h1>My Cd Collection</h1>"

clearThree = ->
    while scene.children.length > 0
        scene.remove scene.children[0]

# create all album
# UGLY AS FUCK


#home()