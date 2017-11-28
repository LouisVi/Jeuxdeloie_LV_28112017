{

ALGORITHME Jeu_De_Loie


	//But: Faire un jeu de l'oie avec plusieurs regles :
	//Entrees: Appuyer sur Enter
	//Sorties: la position et la victoire ou la defaite.


CONST // declaration des constante 

	TPlateau <- 66 : ENTIER
	DMin <- 2 : ENTIER
	DMax <- 12 : ENTIER




VAR
	
	place, somme, diff, des1, des2, choix : ENTIER // declaration des variable
	
	


DEBUT
	
	place<- 1  // initialisation place vaut 1


	ECRIRE "voulez vous utilise le l aleatoire 1 pour oui et 2 pour non" ;			// demande le mode de jeu au joueur
	LIRE (choix)  ;

	cas choix parmis 							//mise en place du mode de jeu
	cas 1: SI choix = 1 ALORS

	REPETER

		somme<- ALEATOIRE(DMax)
		somme<- somme+2										//deffinition du jets de des aleatoires 
		ECRIRE ("Somme des dés: ", somme)


		place<-(place + somme)

		
		FINSI
			
		SI (place=9) ALORS
			place<-(place+somme)
		FINSI

		SI (place=18) ALORS
			place<-(place+somme)
		FINSI

		SI (place=27) ALORS
			place:=<-(place+somme)
		FINSI

		SI (place=36) ALORS
			place<-(place+somme)
		FINSI

		SI (place=45) ALORS 										//deffinition des condition pour la verification des case 
			place<-(place+somme)
		FINSI

		SI (place=54) ALORS
			place<-(place+somme)
		FINSI

		SI (place>66) ALORS
					diff<-(place-66)
				place<-(66-	diff)
		FINSI

		SI (place=58) alors //Case tete de mort
			place<-1
			ECRIRE("Vous avez touche la case tete de mort, retour a la case depart !")

		ECRIRE "Votre case : "& place   // rappel de la position actuel 
	
	cas 2: SI choix = 2 ALORS 								// definition du mode de jeu 2 


		REPETER
			ECRIRE "entrer votre premier des"
			LIRE des1;
			ECRIRE "entrer votre deuxieme des"							// demande la saisie des des
			LIRE des2;

			si (des1 <= 6) ET (des2 <= 6) alors 
			somme<- (des1+des2)
			sinon
			somme <- 0 ;
			ECRIRE"vous avez avancee de : "& somme


			place<-(place + somme);

			SI (place=9) ALORS
				place<-(place+somme);
			FINSI
			SI (place=18) ALORS
				place<-(place+somme);
			FINSI
			SI (place=27) ALORS
				place<-(place+somme);
			FINSI
			SI (place=36) ALORS 					//deffinition des condition pour la verification des case
				place<-(place+somme);
			FINSI
			SI (place=45) ALORS
				place<-(place+somme);
			FINSI
			SI (place=54) ALORS
				place<-(place+somme);
			FINSI

			SI (place>66) ALORS
				begin
						diff<-(place-66);
					place:=(66-	diff);
				end;
			FINSI
			SI (place=58)  ALORS
				begin
					place:=1;
					ECRIRE('Vous avez été sur la tete de mort retour case depart :D')
				end
			FINSI
			ECRIRE('votre place est : ', place)
			
			LIRE
	

	JUSQU'A (place=TPlateau)  
	
	SI (place=66) ALORS
		ECRIRE ('Vous avez gagne !')					// condition de victoire 
	FINSI

FIN
}



PROGRAM Jeu_De_Loie;

USES crt, sysutils;


CONST

	TPlateau : INTEGER = 66;
	DMax : INTEGER = 10;

VAR

	place, somme, diff, choix, des1, des2 : INTEGER; 			

BEGIN

	clrscr;

	place:= 1; 

	writeln ('voulez vous utilise le l aleatoire 1 pour oui et 2 pour non ') ;
	readln (choix)  ;																			//Demande le mode de jeu voulue 

	case choix of 
	1: if choix = 1 then


		REPEAT

			Randomize;
			somme:=Random(DMax);
			somme:=(somme+2);
			writeln('vous avez avancee de : ', somme);  												// execute la boucle qui permet de joueur jusqua se que le joueur gagne


			place:=(place + somme);

			if (place=9) then
				place:=(place+somme);

			if (place=18) then
				place:=(place+somme);

			if (place=27) then
				place:=(place+somme);

			if (place=36) then
				place:=(place+somme);

			if (place=45) then
				place:=(place+somme);

			if (place=54) then
				place:=(place+somme);


			if (place>66) then
				begin
						diff:=(place-66);
					place:=(66-	diff);
				end;

			if (place=58) then //Case tete de mort
				begin
					place:=1;
					writeln('Vous avez ete sur la tete de mort retour case depart :)');
				end;

			writeln('votre place est : ', place);
			
			readln;

		UNTIL (place=TPlateau);  //Sortie de la boucle, donc le joueur est arrive place 66.
	2: if choix = 2 then 


		REPEAT
			writeln ('entrer votre premier des');
			readln (des1);
			writeln ('entrer votre deuxieme des');
			readln (des2);																				//demande la saisie des 2 des

			if (des1 <= 6) and (des2 <= 6) then 
			somme:= somme + (des1+des2)
			else 																							// verification de la validité des dés
			somme := 0 ;
			writeln('vous avez avancee de : ', somme); 


			place:=(place + somme);

			if (place=9) then
				place:=(place+somme);

			if (place=18) then
				place:=(place+somme);

			if (place=27) then																							//boucle 2 pour le mode de jeu 2
				place:=(place+somme);

			if (place=36) then
				place:=(place+somme);

			if (place=45) then
				place:=(place+somme);

			if (place=54) then
				place:=(place+somme);


			if (place>66) then
				begin
						diff:=(place-66);
					place:=(66-	diff);
				end;

			if (place=58) then //Case tete de mort
				begin
					place:=1;
					writeln('Vous avez été sur la tete de mort retour case depart :)');
				end;

			writeln('votre place est : ', place);
			
			readln;

		UNTIL (place=TPlateau);
		end;
		if (place=66) then
		writeln('Vous avez gagne !');					// condition de victoire 

	readln;

END.
