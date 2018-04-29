create table NIVEAU(NOMNIV char(30) not null,
					primary key (NOMNIV));

create table SALLE(	NOMSALLE	char(30) not null,
					primary key (NOMSALLE));

create table ENSEIGNANT(NOMENSEIGNANT	char(30) not null,
						primary key (NOMENSEIGNANT));

create table TYPECOURS(	NOMTYPE char(30) not null,
						primary key (NOMTYPE));

create table MATIERE(	NOMMATIERE char(30) not null,
						primary key (NOMMATIERE));

create table JOUR(	NOMJOUR char(30) not null,
						primary key (NOMJOUR));

create table PLANNING(NOMJOUR char(30) not null,
						HEUREDEBUT char(5) not null,
						HEUREFIN char(5) not null,
						primary key (NOMJOUR,HEUREDEBUT,HEUREFIN),
						foreign key(HEUREDEBUT) references TRANCHEHORAIRE(HEUREDEBUT),
						foreign key(HEUREFIN) references TRANCHEHORAIRE(HEUREFIN));


create table TRANCHEHORAIRE(HEUREDEBUT char(5) not null,
							HEUREFIN char(5) not null,
							primary key (HEUREDEBUT,HEUREFIN));
				
create table ENSEIGNEMENT(NOMMATIERE char(30) not null,
						  NOMENSEIGNANT char(30) not null,
						  primary key (NOMMATIERE,NOMENSEIGNANT),
						  foreign key (NOMMATIERE) references MATIERE(NOMMATIERE),
						  foreign key (NOMENSEIGNANT) references ENSEIGNANT(NOMENSEIGNANT));

create table CLASSE(NOMCLASSE char(30) not null,
					NOMNIV char(30) not null,
					primary key (NOMCLASSE,NOMNIV),
					foreign key (NOMNIV) references NIVEAU(NOMNIV));

create table ELEVE(NOMETUDIANT char(30) not null,
					PRENOMETUDIANT char(30) not null,
					NOMCLASSE char(30),
					primary key (NOMETUDIANT,PRENOMETUDIANT),
					foreign key (NOMCLASSE) references CLASSE(NOMCLASSE));

create table COURS(NOMCOURS char(30) not null,
					NOMSALLE char(30) not null,
					NOMMATIERE char(30) not null,
					NOMENSEIGNANT char(30) not null,
					NOMCLASSE char(30) not null,
					NOMNIV char(30) not null,
					NOMTYPE char(30) not null,
					NOMJOUR char(30) not null,
					HEUREDEBUT char(5) not null,
					HEUREFIN char(5) not null,
					primary key (NOMCOURS,NOMSALLE,NOMMATIERE,NOMENSEIGNANT,NOMCLASSE,NOMNIV,NOMTYPE,NOMJOUR,HEUREDEBUT,HEUREFIN),
					foreign key (NOMCOURS) references COURS(NOMCOURS),
					foreign key (NOMMATIERE) references MATIERE(NOMMATIERE),
					foreign key (NOMENSEIGNANT) references ENSEIGNANT(NOMENSEIGNANT),
					foreign key (NOMCLASSE) references CLASSE(NOMCLASSE),
					foreign key (NOMNIV) references NIVEAU(NOMNIV),
					foreign key (NOMTYPE) references TYPECOURS(NOMTYPE),
					foreign key	(NOMJOUR) references JOUR(NOMJOUR),
					foreign key (HEUREDEBUT) references TRANCHEHORAIRE(HEUREDEBUT),
					foreign key (HEUREFIN) references TRANCHEHORAIRE(HEUREFIN));

