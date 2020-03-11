create table Knp_of_main_Resistors
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    VP real,
    OS real
);

INSERT INTO Knp_of_main_Resistors (VP, OS)
VALUES (1, 0.3);
create table Kp_Resistors_Especial_Stable
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.44, 0.46, 0.49, 0.52, 0.57, 0.62, 0.69, 0.77, 0.87, 0.99);
INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.51, 0.53, 0.56, 0.61, 0.66, 0.73, 0.81, 0.9, 1.02, 1.17);
INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.59, 0.62, 0.66, 0.71, 0.77, 0.85, 0.95, 1.07, 1.21, 1.39);
INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.7, 0.73, 0.78, 0.84, 0.92, 1.02, 1.14, 1.28, 1.46, 1.67);
INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.84, 0.88, 0.93, 1.01, 1.11, 1.22, 1.37, 1.55, 1.77, 2.04);
INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 1.01, 1.06, 1.13, 1.22, 1.34, 1.49, 1.68, 1.9, 2.18, 2.52);
INSERT INTO Kp_Resistors_Especial_Stable (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 1.24, 1.3, 1.39, 1.51, 1.66, 1.84, 2.08, 2.37, 2.72, 3.16);
create table Kp_Resistors_Foil
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.42, 0.47, 0.52, 0.59, 0.66, 0.74, 0.83, 0.94, 1.06, 1.2);
INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.51, 0.56, 0.63, 0.7, 0.79, 0.89, 1, 1.13, 1.27, 1.44);
INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.61, 0.67, 0.75, 0.84, 0.94, 1.06, 1.2, 1.35, 1.53, 1.73);
INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.73, 0.8, 0.9, 1, 1.13, 1.27, 1.43, 1.62, 1.83, 2.07);
INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.87, 0.96, 1.07, 1.2, 1.35, 1.52, 1.71, 1.93, 2.19, 2.48);
INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 1.03, 1.15, 1.28, 1.43, 1.61, 1.81, 2.05, 2.31, 2.62, 2.97);
INSERT INTO Kp_Resistors_Foil (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 1.23, 1.37, 1.53, 1.71, 1.92, 2.17, 2.44, 2.76, 3.13, 3.54);
create table Kp_Resistors_Komposition_Plenka
(
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.27, 0.33, 0.39, 0.45, 0.52, 0.6, 0.68, 0.77, 0.88, 0.99);
INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.29, 0.35, 0.41, 0.48, 0.56, 0.64, 0.74, 0.84, 0.95, 1.08);
INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.31, 0.37, 0.44, 0.52, 0.6, 0.69, 0.79, 0.91, 1.03, 1.17);
INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.33, 0.4, 0.47, 0.56, 0.65, 0.75, 0.86, 0.98, 1.12, 1.27);
INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.35, 0.43, 0.51, 0.6, 0.7, 0.81, 0.93, 1.07, 1.22, 1.39);
INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 0.38, 0.46, 0.55, 0.65, 0.76, 0.88, 1.01, 1.17, 1.33, 1.52);
INSERT INTO Kp_Resistors_Komposition_Plenka (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 0.4, 0.5, 0.59, 0.7, 0.82, 0.96, 1.11, 1.27, 1.46, 1.67);
create table Kp_Resistors_Komposition_Volume
(
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.44, 0.47, 0.5, 0.54, 0.59, 0.65, 0.72, 0.8, 0.89, 1);
INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.46, 0.49, 0.53, 0.57, 0.63, 0.69, 0.77, 0.85, 0.95, 1.07);
INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.49, 0.52, 0.56, 0.61, 0.67, 0.74, 0.82, 0.91, 1.03, 1.16);
INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.52, 0.55, 0.59, 0.65, 0.71, 0.79, 0.88, 0.98, 1.11, 1.25);
INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.55, 0.58, 0.63, 0.69, 0.76, 0.84, 0.94, 1.06, 1.19, 1.36);
INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 0.58, 0.62, 0.67, 0.73, 0.81, 0.9, 1.01, 1.14, 1.29, 1.47);
INSERT INTO Kp_Resistors_Komposition_Volume (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 0.61, 0.65, 0.71, 0.78, 0.86, 0.96, 1.08, 1.22, 1.39, 1.59);
create table Kp_Resistors_Loading
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.14, 0.17, 0.21, 0.26, 0.32, 0.4, 0.5, 0.62, 0.79, 1);
INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.15, 0.18, 0.22, 0.27, 0.34, 0.42, 0.53, 0.67, 0.85, 1.09);
INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.16, 0.19, 0.23, 0.29, 0.36, 0.46, 0.58, 0.73, 0.93, 1.18);
INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.16, 0.2, 0.25, 0.31, 0.39, 0.49, 0.62, 0.79, 1.01, 1.29);
INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.17, 0.21, 0.26, 0.33, 0.41, 0.53, 0.67, 0.86, 1.1, 1.42);
INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 0.18, 0.22, 0.28, 0.35, 0.44, 0.57, 0.72, 0.93, 1.2, 1.55);
INSERT INTO Kp_Resistors_Loading (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 0.19, 0.24, 0.3, 0.37, 0.48, 0.61, 0.78, 1.01, 1.31, 1.7);
create table Kp_Resistors_Metallization
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.35, 0.4, 0.45, 0.51, 0.58, 0.65, 0.72, 0.81, 0.9, 1);
INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.36, 0.41, 0.47, 0.53, 0.59, 0.67, 0.75, 0.84, 0.94, 1.05);
INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.37, 0.42, 0.48, 0.55, 0.62, 0.69, 0.78, 0.87, 0.98, 1.09);
INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.38, 0.44, 0.5, 0.57, 0.64, 0.72, 0.81, 0.91, 1.02, 1.15);
INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.4, 0.46, 0.52, 0.59, 0.67, 0.76, 0.85, 0.96, 1.08, 1.21);
INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 0.41, 0.48, 0.54, 0.62, 0.7, 0.8, 0.9, 1.01, 1.14, 1.28);
INSERT INTO Kp_Resistors_Metallization (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 0.43, 0.5, 0.57, 0.65, 0.74, 0.84, 0.95, 1.07, 1.21, 1.36);
create table Kp_Resistors_Precise
(
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    Temperature integer,
    A           real,
    B           real,
    C           real,
    D           real,
    E           real,
    F           real,
    G           real,
    M           real,
    L           real,
    P           real
);

INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (25, 0.12, 0.15, 0.18, 0.23, 0.29, 0.37, 0.47, 0.6, 0.78, 1.01);
INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (30, 0.12, 0.15, 0.19, 0.24, 0.3, 0.39, 0.5, 0.64, 0.83, 1.08);
INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (35, 0.13, 0.16, 0.19, 0.25, 0.31, 0.4, 0.52, 0.68, 0.89, 1.17);
INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (40, 0.13, 0.16, 0.2, 0.25, 0.33, 0.42, 0.55, 0.73, 0.96, 1.27);
INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (45, 0.13, 0.16, 0.21, 0.26, 0.34, 0.45, 0.59, 0.77, 1.03, 1.37);
INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (50, 0.13, 0.17, 0.21, 0.27, 0.36, 0.47, 0.62, 0.83, 1.11, 1.49);
INSERT INTO Kp_Resistors_Precise (Temperature, A, B, C, D, E, F, G, M, L, P)
VALUES (55, 0.14, 0.17, 0.22, 0.29, 0.38, 0.5, 0.66, 0.89, 1.2, 1.63);
create table Kr_for_Metallization
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    Condition text,
    Value     real
);

INSERT INTO Kr_for_Metallization (Condition, Value)
VALUES ('<1000', 1);
INSERT INTO Kr_for_Metallization (Condition, Value)
VALUES ('>=1000 <100000', 0.7);
INSERT INTO Kr_for_Metallization (Condition, Value)
VALUES ('>=100000 <1000000', 2);
INSERT INTO Kr_for_Metallization (Condition, Value)
VALUES ('>=1000000', 0.6);
create table Kr_for_Resistors_Especial_Stable_Foil_Precize
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    Condition text,
    Value     real
);

INSERT INTO Kr_for_Resistors_Especial_Stable_Foil_Precize (Condition, Value, id)
VALUES ('<=1000', 1.6, null);
INSERT INTO Kr_for_Resistors_Especial_Stable_Foil_Precize (Condition, Value, id)
VALUES ('>1000 <=10000', 0.6, null);
INSERT INTO Kr_for_Resistors_Especial_Stable_Foil_Precize (Condition, Value, id)
VALUES ('>10000 <=100000', 0.4, null);
INSERT INTO Kr_for_Resistors_Especial_Stable_Foil_Precize (Condition, Value, id)
VALUES ('>100000', 1, null);
create table Kr_for_Resistors_Komposition_Plenka
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    Condition text,
    Value     real
);

INSERT INTO Kr_for_Resistors_Komposition_Plenka (Condition, Value)
VALUES ('<=10000000', 0.6);
INSERT INTO Kr_for_Resistors_Komposition_Plenka (Condition, Value)
VALUES ('>10000000', 1.6);
create table Kr_for_Resistors_Komposition_Volume
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    Condition text,
    Value     real
);

INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('<=150', 0.9);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('>150 <=10000', 1.5);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('>10000 <=1000000', 0.7);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('2', 2);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('23', 23);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('123', 123);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 123);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('123123', 123123);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
INSERT INTO Kr_for_Resistors_Komposition_Volume (Condition, Value)
VALUES ('12', 12);
create table Kr_for_Resistors_Loading
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    Condition text,
    Value     real
);

INSERT INTO Kr_for_Resistors_Loading (Condition, Value)
VALUES ('<=1000', 1.3);
INSERT INTO Kr_for_Resistors_Loading (Condition, Value)
VALUES ('>1000 <=10000', 0.8);
INSERT INTO Kr_for_Resistors_Loading (Condition, Value)
VALUES ('>10000 <=100000', 1.5);
create table Resistors
(
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    Model         text,
    Class         text,
    Group_Model   text,
    Type          text,
    lambda        integer,
    Nominal_Power real,
    Knp           text,
    Kr            text,
    Kp            text
);

INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C6-2', 'Резисторы', 'Резисторы постоянные непроволочные', 'Металлизированные', 0.037, 0.25,
        'Knp_of_main_Resistors', 'Kr_for_Metallization', 'Kp_Resistors_Metallization');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C6-7', 'Резисторы', 'Резисторы постоянные непроволочные', 'Металлизированные', 0.037, 0.25,
        'Knp_of_main_Resistors', 'Kr_for_Metallization', 'Kp_Resistors_Metallization');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C3-12', 'Резисторы', 'Резисторы постоянные непроволочные', 'Композиционные плёночные', 0.03, 0.25,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Komposition_Plenka', 'Kp_Resistors_Komposition_Plenka');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C3-15', 'Резисторы', 'Резисторы постоянные непроволочные', 'Композиционные плёночные', 0.03, 0.25,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Komposition_Plenka', 'Kp_Resistors_Komposition_Plenka');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C4-2', 'Резисторы', 'Резисторы постоянные непроволочные', 'Композиционные объёмные', 0.035, 0.25,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Komposition_Volume', 'Kp_Resistors_Komposition_Volume');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C4-3', 'Резисторы', 'Резисторы постоянные непроволочные', 'Композиционные объёмные', 0.035, 0.25,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Komposition_Volume', 'Kp_Resistors_Komposition_Volume');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C5-43', 'Резисторы', 'Резисторы постоянные проволочные и фольговые', 'Нагрузочные', 0.01, 10,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Loading', 'Kp_Resistors_Loading ');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C5-47', 'Резисторы', 'Резисторы постоянные проволочные и фольговые', 'Нагрузочные', 0.01, 10,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Loading', 'Kp_Resistors_Loading ');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C5-5', 'Резисторы', 'Резисторы постоянные проволочные и фольговые', 'Презиционные', 0.032, 1,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Especial_Stable_Foil_Precize', 'Kp_Resistors_Precise');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C5-17', 'Резисторы', 'Резисторы постоянные проволочные и фольговые', 'Презиционные', 0.013, 0.125,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Especial_Stable_Foil_Precize', 'Kp_Resistors_Precise');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C5-54', 'Резисторы', 'Резисторы постоянные проволочные и фольговые', 'Особостабильные', 0.075, 0.125,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Especial_Stable_Foil_Precize', 'Kp_Resistors_Espacial_Stable');
INSERT INTO Resistors (Model, Class, Group_Model, Type, lambda, Nominal_Power, Knp, Kr, Kp)
VALUES ('C5-60Б', 'Резисторы', 'Резисторы постоянные проволочные и фольговые', 'Фольговые', 0.075, 0.05,
        'Knp_of_main_Resistors', 'Kr_for_Resistors_Especial_Stable_Foil_Precize', 'Kp_Resistors_Foil');