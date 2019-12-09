shuf -n 1 allquotes2.csv | puf '[print("\033[91m"+x.split(",")[2]+"\n\n\033[92m- "+x.split(",")[1]+"\n\033[33m"+x.split(",")[0].strip()+"\033[0m")  for x in lines]'
