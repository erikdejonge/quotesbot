shuf -n 1 allquotes2.tsv | puf '[print("\033[90m"+x.split("\t")[0].strip()+":\033[0m\n\n\033[33m"+x.split("\t")[2]+"\n\n\033[92m- "+x.split("\t")[1])  for x in lines]'
