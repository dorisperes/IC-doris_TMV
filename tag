genomas = [[

for i in range (len(genomas)):
    arquivo_inicial = genomas[i][0]
    tags = genomas[i][1]
    arquivo_final = genomas[i][2]
    
    seq = open(arquivo_inicial, 'r').read()
    
    seq = seq.split(">")
    
    for i in range (1,len(seq)):
        seq[i] = seq[i].split(" ")
        seq[i][0] = seq[i][0] + tags
        seq[i] = " ".join(seq[i])
    
    seq = ">".join(seq)
    
    arquivo_final = open(arquivo_final, 'w')
    arquivo_final.write(str(seq))
