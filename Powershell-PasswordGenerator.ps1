function Create-Password{
    # First word in password. Will pick 1 random.
	$array1 = ("Gul", "Lang", "Stor", "Hul", "Rett", "Kort", "Brun", "Lav", "Sort", "Hvit")
	# Second word in password. Will pick 1 random.
	$array2 = ("Bil", "Bru", "Geit", "Dam", "Snor", "Fisk", "Ku", "Hest", "Gris", "Frosk")
	# Picks a random word from array1 then a random word from array2, then adds a number between 1000 - 9999.
	$passord = "$(Get-Random -input $array1)$(Get-Random -input $array2)$(Get-Random -min 1000 -max 9999)"

	return $passord
}
# To use this in a script add "import-module *Filepath of this script*"
# So somthing like this: import-module C:\Users\user1\Documents\Powershell\PasswordGenerator.ps1