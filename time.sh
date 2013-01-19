hms()
{
 local S=${1}
 ((h=S/3600))
 ((m=S%3600/60))
 ((s=S%60))
 printf "%dh:%dm:%ds\n" $h $m $s
}

