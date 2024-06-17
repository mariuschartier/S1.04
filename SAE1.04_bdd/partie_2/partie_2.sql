/*drop schema if exists S104;
create schema S104;
set schema 'S104'*/
create table
    Activites (
        lib_activite text primary key,
        releve_de text references Competences (lib_competence)
    );

create table
    Competences (lib_competence text primary key);

create table
    UE (
        code_UE text primary key,
        est_realisee_dans text references UE (code_UE),
        dans text references Semestre (num_sem)
    );

create table
    Semestre (num_sem text primary key);

create table
    Parcours (
        code_P text primary key,
        libelle_parcours text not null,
        nbre_gpe_TD_P int not null,
        nbre_gpe_TP_P int not null
    );

cREaTe table
    Ressources (
        code_R text primary key,
        lib_R text not null,
        nb_h_TD_PN int not null,
        nb_h_TP_PN INT not null,
        nb_h_CM_PN int not null,
        quand text references Semestre (num_sem)
    );

cREaTe table
    SAE (
        code_SAE text primary key,
        lib_SAE text not null,
        nb_h_TD_enc int not null,
        nb_h_TD_projet_autonomie int not null
    )