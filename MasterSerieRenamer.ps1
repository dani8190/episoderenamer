cls;
$list = Get-ChildItem;


foreach ($0s in $list) {


    #check if episode has not been sorted already
    if ($0s -notmatch "S01") {

        #taking found one, reading its number, and adding S01E-whatever number to the name

        $originalName = $0s;
        $Dissaemble1 = $originalName -replace ".mp4", ''; #assuming its mp4
        $EpisodeNumber = $Dissaemble1 -replace "[^0-9]" , ''; # assuming the number of the episode is within the filename.


        #change S01 to whatever season you are working with.
        $frontNum = "S01E"+$EpisodeNumber;

        #adding S01E.... to the original filename
        $newName = $frontNum + " - " + $originalName

        #renameing file
        Rename-Item -Path $0s -NewName $newName

        Write-Host "$0s is now called $newname";

        
    
    }

}