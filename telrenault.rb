# 
#	telrenault 
#	creado por Alberto Francisco Iglesias
#	de la empresa ENTELGY
#	version 0.2
#


	
lugar = 0 #seleccion de lugar
tipo  = 0 #seleccion de tipo
sw = 0    #seleccion de switch
ip = ("switch.txt", "r") #seleccion de archivo donde estan las ips

#presentación
puts "          **********************************\n"
puts "          *                                *\n"
puts "          *         telrenault             *\n"
puts "          *                                *\n"
puts "          *     propiedad de Entelgy       *\n"
puts "          *                                *\n"
puts "          *    creado por Alberto F.I.	 *\n"
puts "          *                                *\n"
puts "          *        Version 0.1             *\n"
puts "          *                                *\n"
puts "          **********************************\n\n"

bugtracker()

#system("pause");
#system("cls");
	
#menu de selección de sede

puts " Escoje una opción...\n\n\n\n"
puts "  (1) BAR          (2) MAD\n"
puts "  (3) PAL          (4) SEV\n"
puts "  (5) TAM          (6) VAL\n"
puts "  (7) VLL"
pront()
	
lugar = gets.chomp #se guarda la variable para seleccionar la sede 
	
#system ("cls")
	
#se crea el menu para BAR
	
if lugar == 1
  puts "\n\n\n  (1) es-mbar-2ac1-drll"
  puts "\n  (2) es-mbar-21"
  puts "\n  (3) es-mbar-22"
  pront()
  sw = gets.chomp
	

	
#menu de switch al que quererse conectar 
  if ws <= 3
    system ("telnet ")
  else
    puts("ERROR ....  switch no encontrado\n\n")
    system("pause")
  end
		

	
#menu para MAD y TAM
elsif lugar == 2 || lugar == 5
  puts "\n\n Escoja tipo de red\n"
  #puts "\n\n\n (1) Industrial"
  puts "\n\n\n (1) Terciario"
  puts "\n\n (2) Otros"
  puts "\n\n >>> "
  tipo = gets.chomp
			
  #se crea el menu de cada sede para escojer el switch
		
  #menu para MAD terciario
  if lugar == 2 && tipo == 1 
    puts "\n\n\n (1) es-smad-2a1-ter           (9) es-smad-2j1-ter"
    puts "\n (2) es-smad-2b1-ter           (10) es-smad-2k1-ter"
	puts "\n (3) es-smad-2c1-ter           (11) es-smad-2l1-ter"
	puts "\n (4) es-smad-2d1-ter           (12) es-smad-2m1-ter"
	puts "\n (5) es-smad-2e1-ter           (13) es-smad-2q1-ter"
	puts "\n (6) es-smad-2f1-ter           (14) es-smad-2r1-ter"
	puts "\n (7) es-smad-2g1-ter           (15) es-smad-2s1-ter"
	puts "\n (8) es-smad-2h1-ter           (16) es-mmad-2sacore1-ter"
	puts "\n (9) es-smad-2i1-ter           (18) es-mmad-2acore2-ter"
			
    pront()
	sw = gets.chomp
			
    if sw <= 18
	  system("telnet #{file}")
	else
	  puts "ERROR ....  switch no encontrado\n\n"
	  system("pause")
	 end

  #menu para MAD otros
  elsif lugar == 2 && tipo == 2
	puts "\n\n\n (1) es-mad-21"
	puts "\n (2) es-mad-22"
	pront()
	
	sw = gets.chomp

	if sw <= 2
      system("telnet ")
    else
	  puts "ERROR ....  switch no encontrado\n\n"
      system "pause"
	end			
  
  =begin
  		
  #menu para tam terciario
  else if ((lugar == 4) && (tipo == 1)){
			
			printf("\n\n\n (1) es-tam-2da1-ter     	(6) es-tam-2de-ter");
			printf("\n (2) es-tam2-da2-ter 		(7) es-tam-2df-ter");
			printf("\n (3) es-tam-2db-ter 		(8) es-mtad-2dacore1-ter");
			printf("\n (4) es-tam-2dc-ter 		(9) es-mtam-2dgcore2-ter");
			printf("\n (5) es-tam-2dd-ter");
			printf("\n\n >>> ");
		
			scanf("%d", &sw);
			
			switch (sw){
			
				case 1 :
					system("telnet 10.216.178.242");
					break;
			
				case 2 :
					system("telnet 10.216.178.243");
					break;
				
				case 3 :
					system("telnet 10.216.178.250");	
					break;
				
				case 4 :
					system("telnet 10.216.178.246");
					break;
			
				case 5 :
					system("telnet 10.216.178.249");
					break;
				
				case 6 :
					system("telnet 10.216.178.248");
					break;
				
				case 7 :
					system("telnet 10.216.178.247");
					break;
			
				case 8 :
					system("telnet 10.216.127.26");
					break;
				
				case 9 :
					system("telnet 10.216.127.27");
					break;
			
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;
				
			}
		}
		
		//menu TAM otros
		else if ((lugar == 4)&&(tipo == 2)){
			
			printf("\n\n\n (1) es-rtam-21");
			printf("\n (2) es-rtam-22");
			printf("\n\n >>> ");	
			
			scanf("%d", &sw);
			switch (sw){
				
				case 1 :
					system("telnet 10.172.40.3");
					break;
				
				case 2 :
					system("telnet 10.172.40.5");
					break;
			
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;	
			}	
		}
		
	}
	
	// menu para VAL
	
	else if (lugar == 6){
		
		printf("\n\n\n (1) es-rval-21");
		printf("\n (2) es-rval-22");
		printf("\n\n >>> ");
	
    	scanf("%d", &sw);
    	
    	switch(sw){
    		
    		case 1 :
    			system("telnet 10.172.40.18");
    			break;
    		
    		case 2 :
    			system("telnet 10.172.40.19");
    			break;	
		}
		
	}	
		
	else if ((lugar == 3) || (lugar == 4) || (lugar == 7)){
	
		// menu de selección de tipo de red	
		printf("\n\n Escoja tipo de red\n");
		printf("\n\n\n (1) Industrial");
		printf("\n\n (2) Terciario");
		printf("\n\n (3) Otros");
		printf("\n\n >>> ");
	
    	scanf("%d", &tipo);
		
        // menu PAL industrial
		if ((lugar == 3) && (tipo == 1)){
		
			printf("\n\n\n (1)  es-spal-7a1-ind      (29) es-spal-9a1-ind     (53) es-mpal-7lcore-ind");
			printf("\n (2)  es-spal-7b1-ind      (30) es-spal-9b1-ind     (54) es-mpal-7hcore-ind");
			printf("\n (3)  es-spal-7c1-ind      (31) es-spal-9b2-ind     (55) es-spal-7h-svr1-ind");
			printf("\n (4)  es-spal-7d1-ind      (32) es-spal-9c1-ind     (56) es-spal-7h-svr2-ind");
			printf("\n (5)  es-spal-7d2-ind      (33) es-spal-9d1-ind     (57) es-spal-7l-svr1-ind");
			printf("\n (6)  es-spal-7e1-ind      (34) es-spal-9e1-ind     (58) es-spal-7l-svr2-ind");
			printf("\n (7)  es-spal-7f1-ind      (35) es-spal-9e2-ind     (59) es-spal-dissol-7c1-ind");
			printf("\n (8)  es-spal-7g1-ind      (36) es-spal-9f1-ind     (60) es-spal-dissol-7d1-ind");
            printf("\n (9)  es-spal-7h1-ind      (37) es-spal-9g1-ind     (61) es-spal-dispin-7f1-ind");
            printf("\n (10) es-spal-7i1-ind      (38) es-spal-9g2-ind     (62) es-spal-dismon-7h1-ind");
            printf("\n (11) es-spal-7i2-ind      (39) es-spal-9h1-ind");
            printf("\n (12) es-spal-7j1-ind      (40) es-spal-9i1-ind");
            printf("\n (13) es-spal-7k1-ind      (41) es-spal-9j1-ind");
            printf("\n (14) es-spal-7m1-ind      (42) es-spal-9j2-ind");
            printf("\n (15) es-spal-7n1-ind      (43) es-spal-9k1-ind");
            printf("\n (16) es-spal-7o1-ind      (44) es-spal-9n1-ind");
            printf("\n (17) es-spal-7p1-ind      (45) es-spal-9o1-ind");
            printf("\n (18) es-spal-7q1-ind      (46) es-spal-9p1-ind");
            printf("\n (19) es-spal-7r1-ind      (47) es-spal-9p2-ind");
            printf("\n (20) es-spal-7s1-ind      (48) es-spal-9q1-ind");
            printf("\n (21) es-spal-7t1-ind      (49) es-spal-9r1-ind");
            printf("\n (22) es-spal-7u1-ind      (50) es-spal-9s1-ind");
            printf("\n (23) es-spal-7v1-ind      (51) es-spal-9w1-ind");
            printf("\n (24) es-spal-7w1-ind      (52) es-spal-9x1-ind");
            printf("\n (25) es-spal-7x1-ind");
            printf("\n (26) es-spal-7y1-ind");
            printf("\n (27) es-spal-7z1-ind");
            printf("\n (28) es-spal-7z2-ind");
            
            printf("\n\n >>> ");
            
            scanf("%d", &sw);
            
            switch (sw) {
                case 1:
                    system("telnet 10.216.99.201");
                    break;
                
                case 2:
                    system("telnet 10.216.99.143");
                    break;
                
                case 3:
                    system("telnet 10.216.99.202");
                    break;
                    
                case 4:
                	system("telnet 10.216.99.221");
                    break;
                
				case 5:
					system("telnet 10.216.99.248");
					break;
				
				case 6:
					system("telnet 10.216.99.203");
					break;
				
				case 7:
					system("telnet 10.216.99.222");
					break;
				
				case 8:
					system("telnet 10.216.99.142");
					break;
					
				case 9:
					system("telnet 10.216.99.204");
					break;
				
				case 10: 
					system("telnet 10.216.99.223");
					break;
					
				case 11:
					system("telnet 10.216.99.224");
					break;
					
				case 12:
					system("telnet 10.216.99.205");
					break;
				
				case 13:
					system("telnet 10.216.99.206");
					break;
					
				case 14:
					system("telnet 10.216.99.207");
					break;
					
				case 15:
					system("telnet 10.216.99.208");
					break;
					
				case 16:
					system("telnet 10.216.99.249");
					break;
					
				case 17:
					system("telnet 10.216.99.250");
					break;
					
				case 18:
					system("telnet 10.216.99.251");
					break;
					
				case 19:
					system("telnet 10.216.99.209");
					break;
					
				case 20:
					system("telnet 10.216.99.225");
					break;
					
				case 21:
					system("telnet 10.216.99.226");
					break;
					
				case 22:
					system("telnet 10.216.99.210");
					break;
					
				case 23:
					system("telnet 10.216.99.227");
					break;
					
				case 24:
					system("telnet 10.216.99.228");
					break;
					
				case 25:
					system("telnet 10.216.99.211");
					break;
					
				case 26:
					system("telnet 10.216.99.229");
					break;
					
				case 27:
					system("telnet 10.216.99.230");
					break;
					
				case 28:
					system("telnet 10.216.99.231");
					break;
				
				
				// --------------- local 9? ------------------------------------	
				
				case 29:
					system("telnet 10.216.99.212");
					break;
				
				case 30:
					system("telnet 10.216.99.232");
					break;
				
				case 31:
					system("telnet 10.216.99.192");
					break;
				
				case 32:
					system("telnet 10.216.99.213");
					break;
					
				case 33:
					system("telnet 10.216.99.247");
					break;
					
				case 34:
					system("telnet 10.216.99.233");
					break;
					
				case 35:
					system("telnet 10.216.99.131");
					break;
					
				case 36:
					system("telnet 10.216.99.214");
					break;
					
				case 37:
					system("telnet 10.216.99.234");
					break;
					
				case 38:
					system("telnet 10.216.99.235");
					break;
					
				case 39:
					system("telnet 10.216.99.236");
					break;
					
				case 40: 
					system("telnet 10.216.99.237");
					break;
					
				case 41:
					system("telnet 10.216.99.238");
					break;
					
				case 42:
					system("telnet 10.216.99.239");
					break;
					
				case 43:
					system("telnet 10.216.99.215");
					break;
					
				case 44:
					system("telnet 10.216.99.216");
					break;
					
				case 45:
					system("telnet 10.216.99.217");
					break;
					
				case 46:
					system("telnet 10.216.99.240");
					break;
					
				case 47:
					system("telnet 10.216.99.246");
					break;
					
				case 48:
					system("telnet 10.216.99.218");
					break;
					
				case 49:
					system("telnet 10.216.99.219");
					break;
					
				case 50:
					system("telnet 10.216.99.132");
					break;
				
				case 51:
					system("telnet 10.216.99.220");
					break;
					
				case 52:
					system("telnet 10.216.99.245");
					break;
					
				//---------------otro tipo de switch ------------------
				
				case 53:
					system("telnet 10.216.127.14");
					break;
				
				case 54:
					system("telnet 10.216.127.15");
					break;
					
				case 55:
					system("telnet 10.216.99.182");
					break;
				
				case 56:
					system("telnet 10.216.99.183");
					break;
				
				case 57:
					system("telnet 10.216.99.170");
					break;
					
				case 58:
					system("telnet 10.216.99.171");
					break;
				
				case 59:
					system("telnet 10.216.99.241");
					break;
				
				case 60:
					system("telnet 10.216.99.240");
					break;
				
				case 61:
					system("telnet 10.216.99.243");
					break;
				
				case 62:
					system("telnet 10.216.99.244");
					break;
				
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;	
				
            }
            
		}
        
        //menu PAL terciario
        else if ((lugar == 3) && (tipo == 2)){
           
            printf("\n\n\n (1)  es-spal-7a1-ter      (29) es-spal-9a1-ter     (53) es-mpal-7lcore-ter");
            printf("\n (2)  es-spal-7b1-ter      (30) es-spal-9b1-ter     (54) es-mpal-7hcore-ter");
            printf("\n (3)  es-spal-7c1-ter      (31) es-spal-9c1-ter     (55) es-spal-7h-srv1-ter");
            printf("\n (4)  es-spal-7d1-ter      (32) es-spal-9d1-ter     (56) es-spal-7h-srv2-ter");
            printf("\n (5)  es-spal-7d2-ter      (33) es-spal-9e1-ter     (57) es-spal-7l-srv1-ter");
            printf("\n (6)  es-spal-7e1-ter      (34) es-spal-9f1-ter     (58) es-spal-7l-srv2-ter");
            printf("\n (7)  es-spal-7f1-ter      (35) es-spal-9g1-ter     (59) es-spal-dissol-7c2-ter");
            printf("\n (8)  es-spal-7g1-ter      (36) es-spal-9h1-ter     (60) es-spal-dissol-7d2-ter");
            printf("\n (9)  es-spal-7h1-ter      (37) es-spal-9i1-ter     (61) es-spal-dispin-7f1-ter");
            printf("\n (10) es-spal-7i1-ter      (38) es-spal-9j1-ter     (62) es-spal-dismon-7h1-ter");
            printf("\n (11) es-spal-7i2-ter      (39) es-spal-9k1-ter");
            printf("\n (12) es-spal-7j1-ter      (40) es-spal-9l1-ter");
            printf("\n (13) es-spal-7j3-ter      (41) es-spal-9m1-ter");
            printf("\n (14) es-spal-7k1-ter      (42) es-spal-9n1-ter");
            printf("\n (15) es-spal-7k2-ter      (43) es-spal-9o1-ter");
            printf("\n (16) es-spal-7l1-ter      (44) es-spal-9n1-ind");
            printf("\n (17) es-spal-7l2-ter      (45) es-spal-9p1-ter");
            printf("\n (18) es-spal-7m1-ter      (46) es-spal-9q1-ter");
            printf("\n (19) es-spal-7n1-ter      (47) es-spal-9r1-ter");
            printf("\n (20) es-spal-7r1-ter      (48) es-spal-9s1-ter");
            printf("\n (21) es-spal-7s1-ter      (49) es-spal-9t1-ter");
            printf("\n (22) es-spal-7t1-ter      (50) es-spal-9u1-ter");
            printf("\n (23) es-spal-7u1-ter      (51) es-spal-9w1-ter");
            printf("\n (24) es-spal-7v1-ter      (52) es-spal-9x1-ter");
            printf("\n (25) es-spal-7w1-ter");
            printf("\n (26) es-spal-7x1-ter");
            printf("\n (27) es-spal-7y1-ter");
            printf("\n (28) es-spal-7z1-ter");
            printf("\n\n >>> ");
            
            scanf("%d", &sw);
            
            switch (sw) {
                case 1:
                    system("telnet 10.216.176.30");
                    break;
                
                case 2:
                    system("telnet 10.216.176.77");
                    break;
                
                case 3:
                    system("telnet 10.216.176.72");
                    break;
                    
                case 4:
                	system("telnet 10.216.176.32");
                    break;
                
				case 5:
					system("telnet 10.216.176.33");
					break;
				
				case 6:
					system("telnet 10.216.176.1");
					break;
				
				case 7:
					system("telnet 10.216.176.47");
					break;
				
				case 8:
					system("telnet 10.216.176.76");
					break;
					
				case 9:
					system("telnet 10.216.176.7");
					break;
				
				case 10: 
					system("telnet 10.216.176.49");
					break;
					
				case 11:
					system("telnet 10.216.176.56");
					break;
					
				case 12:
					system("telnet 10.216.176.52");
					break;
				
				case 13:
					system("telnet 10.216.176.54");
					break;
					
				case 14:
					system("telnet 10.216.176.34");
					break;
					
				case 15:
					system("telnet 10.216.176.35");
					break;
					
				case 16:
					system("telnet 10.216.176.10");
					break;
					
				case 17:
					system("telnet 10.216.176.11");
					break;
					
				case 18:
					system("telnet 10.216.176.27");
					break;
					
				case 19:
					system("telnet 10.216.176.28");
					break;
					
				case 20:
					system("telnet 10.216.176.4");
					break;
					
				case 21:
					system("telnet 10.216.176.13");
					break;
					
				case 22:
					system("telnet 10.216.176.36");
					break;
					
				case 23:
					system("telnet 10.216.176.26");
					break;
					
				case 24:
					system("telnet 10.216.176.17");
					break;
					
				case 25:
					system("telnet 10.216.176.45");
					break;
					
				case 26:
					system("telnet 10.216.176.15");
					break;
					
				case 27:
					system("telnet 10.216.176.18");
					break;
					
				case 28:
					system("telnet 10.216.176.73");
					break;
				
				
				// --------------- local 9? ------------------------------------	
				
				case 29:
					system("telnet 10.216.176.21");
					break;
				
				case 30:
					system("telnet 10.216.176.176");
					break;
				
				case 31:
					system("telnet 10.216.176.50");
					break;
				
				case 32:
					system("telnet 10.216.176.19");
					break;
					
				case 33:
					system("telnet 10.216.176.16");
					break;
					
				case 34:
					system("telnet 10.216.176.42");
					break;
					
				case 35:
					system("telnet 10.216.176.51");
					break;
					
				case 36:
					system("telnet 10.216.176.44");
					break;
					
				case 37:
					system("telnet 10.216.176.12");
					break;
					
				case 38:
					system("telnet 10.216.176.46");
					break;
					
				case 39:
					system("telnet 10.216.176.20");
					break;
					
				case 40: 
					system("telnet 10.216.176.23");
					break;
					
				case 41:
					system("telnet 10.216.176.24");
					break;
					
				case 42:
					system("telnet 10.216.176.23");
					break;
					
				case 43:
					system("telnet 10.216.176.192");
					break;
					
				case 44:
					system("telnet 10.216.176.191");
					break;
					
				case 45:
					system("telnet 10.216.176.14");
					break;
					
				case 46:
					system("telnet 10.216.176.25");
					break;
					
				case 47:
					system("telnet 10.216.176.29");
					break;
					
				case 48:
					system("telnet 10.216.176.177");
					break;
					
				case 49:
					system("telnet 10.216.176.178");
					break;
					
				case 50:
					system("telnet 10.216.176.211");
					break;
				
				case 51:
					system("telnet 10.216.176.74");
					break;
					
				case 52:
					system("telnet 10.216.176.70");
					break;
					
				//---------------otro tipo de switch ------------------
				
				case 53:
					system("telnet 10.216.127.7");
					break;
				
				case 54:
					system("telnet 10.216.127.8");
					break;
					
				case 55:
					system("telnet 10.216.176.62");
					break;
				
				case 56:
					system("telnet 10.216.176.61");
					break;
				
				case 57:
					system("telnet 10.216.176.182");
					break;
					
				case 58:
					system("telnet 10.216.176.181");
					break;
				
				case 59:
					system("telnet 10.216.176.184");
					break;
				
				case 60:
					system("telnet 10.216.176.180");
					break;
				
				case 61:
					system("telnet 10.216.176.185");
					break;
				
				case 62:
					system("telnet 10.216.176.179");
					break;
				
				
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;	
			}
        }

        //menu PAL otros
        else if ((lugar == 3) && (tipo == 3)){
           
            printf("\n\n\n (1) es-spal-7c-RedConsolas");
            printf("\n (2) es-spal-7h-iao");
            printf("\n (3) es-spal-7l-iao");
            printf("\n (4) es-spal-7S-iao");
            printf("\n (5) es-rpal-21");
            printf("\n (6) es-rpal-22");
            printf("\n\n >>> ");
            
            scanf("%d", &sw);
            
            switch (sw) {
            	case 1:
					system("telnet 10.216.176.63");
					break;
					
				case 2:
					system("telnet 10.216.127.244");
					break;
				
				case 3:
					system("telnet 10.216.127.242");
					break;
				
				case 4:
					system("telnet 10.216.127.243");
					break;
				
				case 5:
					system("telnet 10.216.27.20");
					break;
				
				case 6:
					system("telnet 10.216.27.21");
					break;
				
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;	
            
      		}
        }
        
        //menu SEV industrial
        else if ((lugar == 4) && (tipo == 1)){
            
  			printf("\n\n\n (1) es-ssev-8b1-ind      (18) es-msev-8qcore1-ind");
			printf("\n (2)  es-ssev-8c1-ind      (19) es-msev-8qcore2-ind"); 
			printf("\n (3)  es-ssev-8c2-ind      (20) es-ssev-8g-svr1-ind");
  			printf("\n (4)  es-ssev-8d1-ind      (21) es-ssev-8g-svr2-ind");
			printf("\n (5)  es-ssev-8e1-ind      (22) es-ssev-8q-svr1-ind");
			printf("\n (6)  es-ssev-8f1-ind      (23) es-msev-8q-rvr2-ind");
			printf("\n (7)  es-ssev-8i1-ind");
 			printf("\n (8)  es-ssev-8i2-ind");
			printf("\n (9)  es-ssev-8k1-ind");
			printf("\n (10) es-ssev-8l1-ind ");
 			printf("\n (11) es-ssev-8m1-ind" ); 
			printf("\n (12) es-ssev-8n1-ind" ); 
 			printf("\n (13) es-ssev-8o1-ind" );
			printf("\n (14) es-ssev-8p1-ind "); 
 			printf("\n (15) es-ssev-8p2-ind ");
			printf("\n (16) es-ssev-8q1-ind "); 
			printf("\n (17) es-ssev-8r1-ind ");
			printf("\n\n >>> ");
            
        	scanf("%d", &sw);
        
        	switch (sw) {
                case 1:
                    system("telnet 10.229.96.7");
                    break;
                
                case 2:
                    system("telnet 10.229.96.6");
                    break;
                
                case 3:
                    system("telnet 10.229.96.21");
                    break;
                    
                case 4:
                	system("telnet 10.229.96.14");
                    break;
                
				case 5:
					system("telnet 10.229.96.11");
					break;
				
				case 6:
					system("telnet 10.229.96.12");
					break;
				
				case 7:
					system("telnet 10.229.96.13");
					break;
				
				case 8:
					system("telnet 10.229.96.23");
					break;
					
				case 9:
					system("telnet 10.229.96.8");
					break;
				
				case 10: 
					system("telnet 10.229.96.1");
					break;
					
				case 11:
					system("telnet 10.229.96.2");
					break;
					
				case 12:
					system("telnet 10.229.96.3");
					break;
				
				case 13:
					system("telnet 10.239.96.4");
					break;
					
				case 14:
					system("telnet 10.229.96.5");
					break;
					
				case 15:
					system("telnet 10.229.96.17");
					break;
					
				case 16:
					system("telnet 10.229.96.10");
					break;
					
				case 17:
					system("telnet 10.229.96.9");
					break;
					
				case 18:
					system("telnet 10.229.96.253");
					break;
					
				case 19:
					system("telnet 10.229.96.252");
					break;
					
				case 20:
					system("telnet 10.229.96.251");
					break;
					
				case 21:
					system("telnet 10.229.96.250");
					break;
					
				case 22:
					system("telnet 10.229.96.19");
					break;
					
				case 23:
					system("telnet 10.229.96.20");
					break;
				
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;		
				
			}
    	}
    	
		// menu SEV terciario
		 else if((lugar == 4) && (tipo ==2)){
		
		 	printf("\n\n\n (1) es-ssev-8a1-ter       (18) es-ssev-8dr5-ter");
			printf("\n (2) es-ssev-8b1-ter       (19) es-msev-8gcore-ter");
			printf("\n (3) es-ssev-8b2-ter       (20) es-msev-8qcore-ter"); 
		 	printf("\n (4) es-ssev-8c1-ter       (21) es-ssev-8g-svr1-ter");
		 	printf("\n (5) es-ssev-8d1-ter       (22) es-ssev-8g-svr2-ter");
		 	printf("\n (6) es-ssev-8e1-ter       (23) es-ssev-8q-svr1-ter");
		 	printf("\n (7) es-ssev-8f1-ter       (24) es-ssev-8q-svr2-ter"); 
			printf("\n (8) es-ssev-8g1-ter");
		 	printf("\n (9) es-ssev-8i1-ter"); 
		 	printf("\n (10) es-ssev-8k1-ter");
		 	printf("\n (11) es-ssev-8l1-ter");
		 	printf("\n (12) es-ssev-8m1-ter");  
		 	printf("\n (13) es-ssev-8n1-ter");
		 	printf("\n (14) es-ssev-8o1-ter"); 
		 	printf("\n (15) es-ssev-8p1-ter");   
		 	printf("\n (16) es-ssev-8q1-ter");
		 	printf("\n (17) es-ssev-8r1-ter"); 
		 	printf("\n\n >>> ");
            
         	scanf("%d", &sw);
 			switch (sw) {
                case 1:
                    system("telnet 10.216.162.65");
                    break;
                
                case 2:
                    system("telnet 10.216.162.69");
                    break;
                
                case 3:
                    system("telnet 10.216.162.73");
                    break;
                    
                case 4:
                	system("telnet 10.216.162.66");
                    break;
                
				case 5:
					system("telnet 10.216.162.67");
					break;
				
				case 6:
					system("telnet 10.216.162.110");
					break;
				
				case 7:
					system("telnet 10.216.162.68");
					break;
				
				case 8:
					system("telnet 10.216.162.80");
					break;
					
				case 9:
					system("telnet 10.216.162.82");
					break;
				
				case 10: 
					system("telnet 10.216.162.83");
					break;
					
				case 11:
					system("telnet 10.216.162.87");
					break;
					
				case 12:
					system("telnet 10.216.162.88");
					break;
				
				case 13:
					system("telnet 10.216.162.91");
					break;
					
				case 14:
					system("telnet 10.216.162.94");
					break;
					
				case 15:
					system("telnet 10.216.162.99");
					break;
					
				case 16:
					system("telnet 10.216.162.102");
					break;
					
				case 17:
					system("telnet 10.216.162.104");
					break;
					
				case 18:
					system("telnet 10.216.162.113");
					break;
					
				case 19:
					system("telnet 10.216.162.111");
					break;
					
				case 20:
					system("telnet 10.216.162.124");
					break;
					
				case 21:
					system("telnet 10.216.162.125");
					break;
					
				case 22:
					system("telnet 10.216.162.122");
					break;
					
				case 23:
					system("telnet 10.216.162.123");
					break;
				case 24:
					system("telnet 10.216.162.121");
					break;
					
				default:
					printf("ERROR ....  switch no encontrado\n\n");
					system("pause");
					break;	
			}
     	}
		
		//menu SEV otros 
		else if((lugar == 4) && (tipo == 3)){
			
			printf("\n\n\n (1) es-ssev-8a-iao");
			printf("\n (2) es-ssev-8g-iao");	
			printf("\n (3) es-rsev-21");
			printf("\n (4) es-rsev-22");
			pront();
            
         	scanf("%d", &sw);
			
			switch (sw) {
                case 1:
                    system("telnet 10.216.127.251");
                    break;
                
                case 2:
                    system("telnet 10.216.127.250");
                    break;
                
                case 3:
                    system("telnet 10.172.40.20");
                    break;
                    
                case 4:
                	system("telnet 10.172.40.21");
                    break;
		
				default:
					swerror();
					break;	
			}
		}
		
		// VAL indusrial
		else if((lugar == 7) && (tipo == 1)){
			
			int local = 0;
			
			localvall();
			
			scanf("%d", &local);
			
			if (local == 1){
				
				printf("\n\n\n (1) )es-svll-1a1-ind") ;
				printf("\n (2) es-svll-1c1-ind"); 
				printf("\n (3) es-svll-1f1-ind");
				printf("\n (4) es-svll-1h1-ind");
				printf("\n (5) es-svll-1j1-ind");
				printf("\n (6) es-svll-1o1-ind");
				pront();
				
				scanf("%d", &sw);
				
				switch (sw) {
                	case 1:
                    	system("telnet 10.229.32.233");
                    	break;
                
                	case 2:
                    	system("telnet 10.229.32.232");
                    	break;
                
                	case 3:
                    	system("telnet 10.229.32.229");
                    	break;
                    
                	case 4:
                		system("telnet 10.229.32.227");
                    	break;
					
					case 5:
						system("telnet 10.229.32.225");
						break;
					
					case 6:
						system("telnet 10.229.32.222");
						break;
						
					default:
						swerror();
						break;	
				}
			}
			
			
			else if ((local == 2) || (local == 3)){
				
				printf("\n\n\n (1) es-svll-3a1-ind       (10) es-svll-3n1-ind ");
				printf("\n (2) es-svll-3c1-ind       (11) es-svll-3o1-ind ");
				printf("\n (3) es-svll-3e1-ind       (12) es-svll-3p1-ind ");
				printf("\n (4) es-svll-3f1-ind       (13) es-svll-3r1-ind ");
				printf("\n (5) es-svll-3g1-ind       (14) es-svll-3s1-ind ");
				printf("\n (6) es-svll-3h1-ind       (15) es-svll-3v1-ind ");
				printf("\n (7) es-svll-3j1-ind       (16) es-svll-3x1-ind ");
 				printf("\n (8) es-svll-3l1-ind ");
				printf("\n (9) es-svll-3m1-ind ");
				pront();
				
				scanf("%d", &sw);
					
				switch(sw){
				
			 		case 1:
                    	system("telnet 10.229.32.221");
                    	break;
                
               		case 2:
                    	system("telnet 10.229.32.220");
                    	break;
                
                	case 3:
                    	system("telnet 10.229.32.219");
                    	break;
                    
                	case 4:
                		system("telnet 10.229.32.218");
                    	break;
                
					case 5:
						system("telnet 10.229.32.217");
						break;
				
					case 6:
						system("telnet 10.229.32.216");
						break;
				
					case 7:
						system("telnet 10.229.32.214");
						break;
					
					case 8:
						system("telnet 10.229.32.213");
						break;
				
					case 9: 
						system("telnet 10.229.32.212");
						break;
					
					case 10:
						system("telnet 10.229.32.211");
						break;
					
					case 11:
						system("telnet 10.229.32.210");
						break;
				
					case 12:
						system("telnet 10.229.32.209");
						break;
					
					case 13:
						system("telnet 10.229.32.207");
						break;
					
					case 14:
						system("telnet 10.229.32.206");
						break;
					
					case 15:
						system("telnet 10.229.32.203");
						break;
					
					case 16:
						system("telnet 10.229.32.204");
						break;
					
					default:
						swerror();
					
				}
			}	
			
			else if (local == 4){
				
				printf("\n\n\n (1)  es-svll-4a1-ind       (15) es-svll-4k3-ind");
				printf("\n (2)  es-svll-4b1-ind      (16) es-svll-4l1-ind");	
				printf("\n (3)  es-svll-4b2-ind      (17) es-svll-4m1-ind");
				printf("\n (4)  es-svll-4c1-ind      (18) es-svll-4n1-ind");
				printf("\n (5)  es-svll-4c2-ind      (19) es-svll-4n2-ind");
				printf("\n (6)  es-svll-4d1-ind      (20) es-svll-4o1-ind");
				printf("\n (7)  es-svll-4e1-ind      (21) es-svll-4p1-ind");
				printf("\n (8)  es-svll-4g1-ind      (22) es-svll-4p2-ind");
				printf("\n (9)  es-svll-4g2-ind      (23) es-svll-4q1-ind");
				printf("\n (10) es-svll-4h1-ind      (24) es-svll-4r1-ind");
				printf("\n (11) es-svll-4i1-ind      (25) es-svll-4s1-ind");
				printf("\n (12) es-svll-4j1-ind      (26) es-svll-4u1-ind");
				printf("\n (13) es-svll-4k1-ind      (27) es-svll-4v1-ind");
				printf("\n (14) es-svll-4k2-ind      (28) es-svll-4y1-ind");
				pront();
				
				scanf("%d", &sw);
				
				switch(sw){
				
			 		case 1:
                    	system("telnet 10.229.32.202");
                    	break;
                
               		case 2:
                    	system("telnet 10.229.32.148");
                    	break;
                
                	case 3:
                    	system("telnet 10.229.32.200");
                    	break;
                    
                	case 4:
                		system("telnet 10.229.32.218");
                    	break;
                
					case 5:
						system("telnet 10.229.32.217");
						break;
				
					case 6:
						system("telnet 10.229.32.216");
						break;
				
					case 7:
						system("telnet 10.229.32.214");
						break;
					
					case 8:
						system("telnet 10.229.32.213");
						break;
				
					case 9: 
						system("telnet 10.229.32.212");
						break;
					
					case 10:
						system("telnet 10.229.32.211");
						break;
					
					case 11:
						system("telnet 10.229.32.210");
						break;
				
					case 12:
						system("telnet 10.229.32.209");
						break;
					
					case 13:
						system("telnet 10.229.32.207");
						break;
					
					case 14:
						system("telnet 10.229.32.206");
						break;
					
					case 15:
						system("telnet 10.229.32.203");
						break;
					
					case 16:
						system("telnet 10.229.32.204");
						break;
					
					default:
						swerror();
					
				}
			
			}	
				
			
		}
		
		
	   
		     
/*		   
es-svll-1b-redsalvados-a 
 es-svll-5q-redsalvados-a 
 es-svll-5r-redsalvados-a 



es-svll-1a1-ter 

es-svll-1c1-ter 
es-svll-1d1-ter 
es-svll-1e1-ter 
 
es-svll-1f1-ter 
es-svll-1g1-ter 
es-svll-1h1-ter 
es-svll-1h2-ter 
 
es-svll-1i2-ter 
es-svll-1i4-toip 
es-svll-1j1-ter 

es-svll-1k1-ter 
es-svll-1m1-ter 
es-svll-1n1-ter 
es-svll-1o2-toip 

 es-svll-1o2-ter 
 es-svll-1q1-ter 
 es-svll-1r1-ter 
es-svll-3a1-ter 


es-svll-3c1-ter 
es-svll-3e1-ter 
 
es-svll-3f1-ter 

 
es-svll-3g1-ter 
es-svll-3h1-ter 

es-svll-3j1-ter 
 
es-svll-3l1-ter 
es-svll-3m1-ter 
 
es-svll-3n1-ter 

es-svll-3o1-ter 

 es-svll-3p1-ter 

es-svll-3q1-ter 
es-svll-3r1-ter 

 es-svll-3s1-ter 

es-svll-3t1-ter 
 es-svll-3u1-ter 
es-svll-3v1-ter 

 es-svll-3x1-ter 

 
es-svll-4a1-ter 


es-svll-4b1-ter 
 

es-svll-4c1-ter 
 
es-svll-4d1-ter 
es-svll-4d2-ter 

es-svll-4e1-ter 
 es-svll-4f2-ter 


es-svll-4g1-ter 
es-svll-4h1-ter 


es-svll-4i2-ter 
es-svll-4j1-ter 


 
 
es-svll-4k1-ter 

es-svll-4l1-ter 

es-svll-4m2-ter 

 
es-svll-4n2-ter 
 
es-svll-4o1-ter 
 

es-svll-4p1-ter 
 
es-svll-4q1-ter 

es-svll-4r1-ter 
 
es-svll-4s1-ter 
es-svll-4t1-ter 
 
es-svll-4u1-ter 
 
es-svll-4v1-ter 
es-svll-4x1-ter 
 
es-svll-4y2-ter 
es-svll-5a1-ter 
es-svll-5a1-ind 
es-svll-5b1-ind 
es-svll-5b1-te
es-svll-5c1-ter 
es-svll-5d1-ter 
es-svll-5d1-ind 
es-svll-5e1-ter 
es-svll-5f1-ter 
es-svll-5f1-ind 
es-svll-5f2-ind 
es-svll-5g1-ter 
es-svll-5h1-ter 
es-svll-5h1-ind 
es-svll-5i1-ind 
es-svll-5i1-ter 
es-svll-5i2-ter 
es-svll-5i3-ter 
es-svll-5j1-ter 
es-svll-5k1-ter 
es-svll-5k1-ind 
es-svll-5k2-ind 
es-svll-5l1-ind 
es-svll-5m1-ter 
es-svll-5n1-ter 
es-svll-5n1-ind 
es-svll-5o1-ter 
es-svll-5o1-ind 
es-svll-5o2-ter 
es-svll-5p1-ter 
es-svll-5p1-ind 
es-svll-5r1-ind 
es-svll-5r2-ind 
es-svll-5r3-ter 
es-svll-5r3-ind 
es-svll-5s1-ind 
es-svll-5s2-ind 
es-svll-5s2-ter 
es-svll-5t1-ter 
es-svll-5t1-ind 
es-svll-5u1-ter 
es-svll-5v1-ter 
es-svll-5v1-ind 
es-svll-5v2-ind 
es-svll-5w1-ter 
es-svll-5x1-ter 
es-svll-5x1-ind 
es-svll-5y1-ter 
es-svll-5y1-ind 
es-svll-5z1-ter 
es-svll-5z1-ind 
es-svll-5z2-ind 
es-svll-6a1-ind 
es-svll-6a1-ter 
es-svll-6b1-ter 
es-svll-6b1-ind 
es-svll-6c1-ter 
es-svll-6c1-ind 
es-svll-6e1-ind 
es-svll-6e1-ter 
es-svll-6f1-ter 
es-svll-6h1-ter 
es-svll-6h1-ind 
es-svll-6i1-ter 
es-svll-6i1-ind 
es-svll-6j1-ind 
es-svll-6j2-ter 
es-svll-6k1-ter 
es-svll-6k1-ind 
es-svll-6l1-ter 
es-svll-6l1-ind 
es-svll-6m1-ter 
es-svll-6m1-ind 
es-svll-pistapruebas-ter 
es-mvll-5qcore-ter 
es-mvll-1bcore-ter 
es-mvll-1bcore-ind 
es-mvll-5qcore-ind 
es-svll-1b-svr1-ind 
es-svll-1b-svr2-ind 
es-svll-5q-svr1-ind 
es-svll-5q-svr2-ind 
es-svll-1b-svr1-ter 
es-svll-1b-svr2-ter 
es-svll-5q-svr1-ter 
es-svll-5q-svr2-ter 
es-svll-discar-3c-ter 
es-svll-discar-3c1-ind 
es-svll-discar-3e-ter 
es-svll-discar-3e1-ind 
es-svll-disest-1b-ter 
es-svll-disest-1b1-ind 
es-svll-disest-1c-ter 
es-svll-disest-1c1-ind 
es-svll-dismon-4a-ter 
es-svll-dismon-4a1-ind 
es-svll-dismon-4a2-ind 
es-svll-dismon-4c-ter 
es-svll-dismon-4c1-ind 
es-svll-dismon-4c2-ind 
es-svll-dismon-6a1-ind 
es-svll-dismon-6b1-ind 
es-svll-dismot-5d-ter 
es-svll-dismot-5d1-ind 
es-svll-dismot-5k-ter 
es-svll-dismot-5k1-ind 
es-svll-01 
es-svll-02 
*/
		   
		 
		 
		 
		 
		 
        
    }
	
	
	else {
		printf(" seleccion erronea, se cierra el programa");
		bugtracker();
		system("pause");
	}							
	
	return 0;
		
}

//funcion menu local vall 
void localvall()
{
	
	printf("\n\n\n\n\n LOCAL TECNICO A ESCOJER: ");
	printf("\n\n (1) local 1 ");
	printf("\n\n (3) local 3 ");
	printf("\n\n (4) local 4");
	printf("\n\n (5) local 5");
	printf("\n\n (6) local 6");
	printf("\n\n >>> ");
	
	//return (void);		
}

void pront(){
	
	printf("\n\n >>> ");

}

void swerror(){
	
	printf("\n\nERROR ....  switch no encontrado");
	bugtracker();
	system("pause");
}

void bugtracker(){
	
	printf("\n\nbugtracker albertofracisco.iglesias@entelgy.com\n\n");
	
}
=end
