extends Node2D

#This script will persist across the whole game.
#It is meant to store all variables that have to persist
#between scenes 

var GameSeed

#var MainMenu = GlobalVariables.MAINMENU
#var RunNode = GlobalVariables.RUNNODE
#var CharSelect = GlobalVariables.CHARSELECT
#var FightRoom = GlobalVariables.FIGHTROOM
#var EventRoom = GlobalVariables.EVENTROOM
#var HeadUpDisplay = GlobalVariables.HUD
#var MapObject = GlobalVariables.MAP


var FChar
var BChar

var menu
var charselectmenu
var hud
var map

#var deckList : CardPile
#var trinketList
#
#var currentRoom
#var runNode
#var currentLvl = -1
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	#Starts the game by opening a start menu
#	var mainmenu = MainMenu.instantiate()
#	add_child(mainmenu)
#	menu = mainmenu
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
#	pass
#
#
#func PlayPressed():
#	menu.queue_free()
#	var charselect = CharSelect.instantiate()
#	add_child(charselect)
#	charselectmenu = charselect
#
#func StartAdventureWith(frontCharacter,backCharacter):
#	charselectmenu.queue_free()
#	FChar = frontCharacter
#	BChar = backCharacter
#
#	%SeedHandler.GenerateMapPlans()
#
##	var fightroom = Fightroom.instantiate()
##	add_child(fightroom)
##	fightroom.SetCharacters(frontCharacter,backCharacter)
#
#
##	var eventroom = EventRoom.instantiate()
##	add_child(eventroom)
##	eventroom.SetCharacters(frontCharacter,backCharacter)
#
#	var run = RunNode.instantiate()
#	add_child(run)
#	run.SetCharacters(frontCharacter,backCharacter)
#	deckList = run.SetRunOriginalDecklist()
#	runNode = run
#
#	var hudspawn = HeadUpDisplay.instantiate()
#	add_child(hudspawn)
#	hud = hudspawn
#
#	var mapspawn = MapObject.instantiate()
#	add_child(mapspawn)
#	map = mapspawn
#	map.SpawnMap()
#
#	EnterRunStartPhase()
#
#
#func EnterRunStartPhase():
#
#	var eventroom = EventRoom.instantiate()
#	eventroom.game = self
#	add_child(eventroom)
#	currentRoom = eventroom
#
#
#func MapButtonPressed():
#	map.ToggleMap()
#
#func DeckButtonPressed():
#	runNode.ToggleDecklist()
#
#func TackSelected():
#	#SaveGame
#	pass
#
#func GetMapPlan(act):
#
#	var plan = %SeedHandler.AskForMap(act)
#	return plan
#
#func EnterNextRoom(_type):
#	currentRoom.queue_free()
#	#Replace by roomoftype indicated
#	var nextroom:Fightroom = FightRoom.instantiate()
#	nextroom.game = self
#	add_child(nextroom)
#	nextroom.SetOrininalDecklist(deckList)
#	nextroom.StartFight()
#	currentRoom = nextroom
#	map.DeActivateLevels()
#	map.ToggleMap()
#
#func RoomEnded():
#	var nextLvl = currentLvl + 1
#	map.ActivateLevel(nextLvl)
#	map.ToggleMap()
