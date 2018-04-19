tab = ["","","","","","","","",""]
tabex = ["1","2","3","4","5","6","7","8","9"]
win=0
puts "Choisissez votre signe"
signe = gets.chomp.upcase
puts tabex[0..2].to_s
puts tabex[3..5].to_s
puts tabex[6..8].to_s
while (signe!="X" && signe!="O")
  puts "Choisissez X ou O"
  signe = gets.chomp.upcase
end

while ((tab[0]=="" || tab[1]=="" || tab[2]=="" || tab[3]=="" || tab[4]=="" || tab[5]=="" || tab[6]=="" || tab[7]=="" || tab[8]=="") && win==0)
  puts "Quelle case voulez vous remplir ?"
  x = gets.chomp.to_i - 1

  while tab[x]!=""
    puts "Choisissez une autre case"
    x = gets.chomp.to_i - 1
  end
  tab[x]=signe
  tabex[x]=signe
  puts tabex[0..2].to_s
  puts tabex[3..5].to_s
  puts tabex[6..8].to_s
  if (signe=="X")
    signe="O"
  else
    signe="X"
  end
  if (tab[0]==tab[1] && tab[0]==tab[2] && tab[0]!="" || tab[3]==tab[4] && tab[3]==tab[5] && tab[3]!="" || tab[6]==tab[7] && tab[6]==tab[8] && tab[6]!="" || tab[0]==tab[3] && tab[0]==tab[6] && tab[0]!="" || tab[1]==tab[4] && tab[1]==tab[7] && tab[1]!="" || tab[2]==tab[5] && tab[2]==tab[8] && tab[2]!="" || tab[0]==tab[4] && tab[0]==tab[8] && tab[0]!="" || tab[2]==tab[4] && tab[2]==tab[6] && tab[2]!="")
    win=1
  end
end
if win==1
  if (signe=="X")
    puts "fin de partie, O a gagné"
  else
    puts "fin de partie, X a gagné"
  end
else
  puts "fin de partie, match nul"
end
