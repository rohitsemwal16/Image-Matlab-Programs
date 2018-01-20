symbols = [1:4];
p = [.5 .1875 .1875 .125 ];
[dict,avglen] = huffmandict(symbols,p)
samplecode = dict{4,2}