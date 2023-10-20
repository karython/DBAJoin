create database nomeados;

use nomeados;

CREATE TABLE nomeado (
    nomeado_id INT PRIMARY KEY AUTO_INCREMENT ,
    artista VARCHAR(255),
    titulo VARCHAR(255),
    youtube VARCHAR(255),
    credito text,
    fk_categoria_categoria_id int,
   foreign key (fk_categoria_categoria_id) references categorias(categoria_id) on delete cascade
);

SELECT nomeado.*, categorias.nome_categoria
FROM nomeado
INNER JOIN categorias ON nomeado.fk_categoria_categoria_id = categorias.categoria_id;


UPDATE nomeado SET fk_categoria_categoria_id = 1 WHERE nomeado_id = 1;
UPDATE nomeado SET fk_categoria_categoria_id = 2 WHERE nomeado_id = 2;
UPDATE nomeado SET fk_categoria_categoria_id = 3 WHERE nomeado_id = 3;
UPDATE nomeado SET fk_categoria_categoria_id = 4 WHERE nomeado_id = 4;
UPDATE nomeado SET fk_categoria_categoria_id = 5 WHERE nomeado_id = 5;
UPDATE nomeado SET fk_categoria_categoria_id = 6 WHERE nomeado_id = 6;
UPDATE nomeado SET fk_categoria_categoria_id = 7 WHERE nomeado_id = 7;
UPDATE nomeado SET fk_categoria_categoria_id = 8 WHERE nomeado_id = 8;
UPDATE nomeado SET fk_categoria_categoria_id = 9 WHERE nomeado_id = 9;
UPDATE nomeado SET fk_categoria_categoria_id = 10 WHERE nomeado_id = 10;
UPDATE nomeado SET fk_categoria_categoria_id = 11 WHERE nomeado_id = 11;
UPDATE nomeado SET fk_categoria_categoria_id = 12 WHERE nomeado_id = 12;
UPDATE nomeado SET fk_categoria_categoria_id = 13 WHERE nomeado_id = 13;
UPDATE nomeado SET fk_categoria_categoria_id = 14 WHERE nomeado_id = 14;
UPDATE nomeado SET fk_categoria_categoria_id = 15 WHERE nomeado_id = 15;
UPDATE nomeado SET fk_categoria_categoria_id = 16 WHERE nomeado_id = 16;
UPDATE nomeado SET fk_categoria_categoria_id = 17 WHERE nomeado_id = 17;
UPDATE nomeado SET fk_categoria_categoria_id = 18 WHERE nomeado_id = 18;
UPDATE nomeado SET fk_categoria_categoria_id = 19 WHERE nomeado_id = 19;

select*from nomeado;
desc nomeado;
select * from nomeado;
insert into nomeado(artista,titulo,youtube,credito) values
("Lecrae","Church Clothes 4","https://www.youtube.com/watch?v=ost_5Wu47zI","(Producers) Juberlee, Lasanna Harris, DrumGod, Slikk Muzik, theBeatbreaker, WEARETHEGOOD, Alex Goose, Connor Back, JuanRa, Simbo, DudeClayy, Sims Cashion, Jaden Eli, KelbyOnTheTrack, Jake Rooman, Matt Zara, Andy Mineo, Dylan Hyde, Leslie Johnson, Curious George, Joel McNeill, Carvello, Cubeatz, Vinnyforgood, Lyle Leduff, Don Cannon, NIq Maximus, Andrew Prim"),
("Limoblaze","Sunday In Lagos","https://www.youtube.com/watch?v=m6q4Sqs1sqM&list=OLAK5uy_mWrlFeW_cD2CeFrD3x13QtCvqzobiuzqU","(Producers) Limoblaze, Happi, Hillsplay, ItsNyceman, KDaGreat, Carvello, Dj Tag, Caleb Bryant, Darko, Tbabz, Dunnie, Tronome"),
("Social Club Misfits","Everyone Loves A Comeback Story","https://www.youtube.com/watch?v=yAemkeG38eo","(Producers) Grant Lapointe, Elxjah, Dave James, Carvello, Martin Santiago, Andy Mineo, Enzo Gran, Samuel ASH, Sajan Nauriyal, JuiceBangers, Ben Lopez, Isaiah LaRoi, David Frank, Josh Cumbee, Rey King, Avxp, Zach Paradis, Gabe Payne"),
("Steven Malcolm","Tree","https://www.youtube.com/watch?v=quOZPTIH8Po&list=OLAK5uy_kVJxRpW54nXnFS5NLhwGdxHm483oowmno","(Producers) BoogzDaBeast, FNZ, Dayme, Scootie, Ryghteous Ryan, Michael Foster, Pyro Da God, Anton Göransson, Street Symphony, Dirty Rice, Kamron Robinson, Steven Malcolm, Sango, Umoore, Cardec, Track or Die, Anthony Jones, Joseph Prielozny"),
("WHATUPRG","NEW HOLLYWOOD","https://www.youtube.com/watch?v=5PldsgPrLQc&list=PL8ko0DOLqMHniPZ13g7s24Q4fRRv22ZPy","(Producers) Enzo Gran, Al Cres, Blake$ale, Mario, LNK, Hayes, Dave James, Lasanna Harris, Elxjah, WHATUPRG, Abe Parker, JuiceBangers, Taylor Hill, Killawatts, Caleb Bryant, BNYX, Carvello, Dirty Rice, Caleb Cruise, Joel McNeill, Mu Lean"),
("August Burns Red","Death Below","https://www.youtube.com/watch?v=OSkyrKp8oHo","(Producers) Carson Slovak, Grant McFarland"),
("Gable Price and Friends","The Consequence Of Being Alive","https://www.youtube.com/watch?v=lDb021kP9Bo&list=OLAK5uy_mQiLHvmmFq7wutdLc61a-1-67w30chIy0","(Producers) Scott Mills, Aaron Brohman, The Foreman Brothers"),
("Memphis May Fire","Remade In Misery","https://www.youtube.com/watch?v=Giy7jogUkG8&list=OLAK5uy_kCLlVEWEX4XSZkUkh-EkLUTNAJUwXaa_U","(Producers) Kellen McGregor"),
("Skillet","Dominion: Day of Destiny","https://www.youtube.com/watch?v=uvIQZU_PwoY&list=OLAK5uy_memVuo6G06XMgnsNj442-rBFmGNiD_KqM","(Producers) Kane Churko, Kevin Churko, Seth Mosley, Michael O'Connor, Bernard James Perry, Tyler Smith"),
("Stryper","The Final Battle","https://www.youtube.com/watch?v=ZqD7C-FkckE&list=OLAK5uy_kNsZJeqkQk04jxY3I2o0eCX-lSjahcI1Q","(Producers) Michael Sweet"),
("Blessing Offor","My Tribe","https://www.youtube.com/watch?v=pIfcs3nLnwU","(Producers) Cleve Baby, Hank Bentley, Sam Ellis, Todd Clark, Maxwell Stark, Jordan Sapp, Josh Ronen, Jamie Kenney, Mike Robinson, Ryan Tutton, Dan Muckala"),
("Katy Nichole","Jesus Changed My Life","https://www.youtube.com/watch?v=ihrUIPfvTh8&list=OLAK5uy_k5HbhNUhZqyZ-NvuCib9x_-azsJXyzj-k","(Producers) Jeff Pardo, Jonathan Smith, David Leonard, Brad King, Ben Glover, Jeff Sojka"),
("MercyMe","Always Only Jesus","https://www.youtube.com/watch?v=rxPaU630fOg&list=OLAK5uy_n6_bGJr9Vj5efDpdRvhrENTueV7wPq3H8","(Producers) Jordan Mohilowski, Brown Bannister, Tedd Tjornhom"),
("TobyMac","Life After Death","https://www.youtube.com/watch?v=9YBCqdbuKrQ&list=OLAK5uy_nodTRs-OPD7WkS2XK8afM8pphvFSOcHWU","(Producers) Micah Kuiper, Toby McKeehan, Bryan Fowler, Kyle Williams, Tommee Profitt, Jon Reddick, Dave Lubben, Cole Walowac, Reske"),
("Zach Williams","A Hundred Highways","https://www.youtube.com/watch?v=iwTghNCYRwY&list=PL6-B652C0OuKvUYXWT5jmSG4ToM63Znst","(Producer) Jonathan Smith"),
("Brooklyn Tabernacle","A Night of Worship","https://www.youtube.com/watch?v=K47fSoW7SXs&list=OLAK5uy_kK5uPydo8n7Np7ukWmUJadU7sjOifkgMs","(Producers) Carol Cymbala, J. Daniel Smith"),
("Keith & Kristyn Getty","Christ Our Hope in Life and Death","https://www.youtube.com/watch?v=5XYeDpNndR0&list=PL0ONU3wVC9D0BwWBj_MQM9BxVn2knpR4N","(Producers) Keith & Kristyn Getty, Ben Shive, Bryan Fowler, Nathan Nockels, Michael Farren, Fionan Debarra, David Rodgers"),
("Point Of Grace","Turn Your Eyes, Vol II","https://www.youtube.com/watch?v=tsGoCX0El3Y&list=RDtsGoCX0El3Y&start_radio=1","(Producers) Cindy Morgan, Stephen Lieweke"),
("Sarah Kroger","The London Sessions","https://www.youtube.com/watch?v=Az8r6IAYvbo&list=PLem5kqXf_aX0ETdzWIbPyurO_o4wvgMcm","(Producers) Zorin McGuire, Sarah Kroger"),
("Selah","Greatest Hymns, Vol III","https://www.youtube.com/watch?v=ro5qDZQYIxA&list=PLJmydLnQHZoomyb3dHwDhnvnw17QLrfdT","(Producer) Jason Kyle Saetveit")
; 


CREATE TABLE categorias (
    categoria_id INT primary key auto_increment,
    nome_categoria VARCHAR(255),
    premiado tinyint default 0
);
drop database nomeados;


select * from categorias;

insert into categorias(nome_categoria) values
("Rap/Hip Hop Album of the Year"),
("Rap/Hip Hop Album of the Year"),
("Rap/Hip Hop Album of the Year"),
("Rap/Hip Hop Album of the Year"),
("Rock/Contemporary Album of the Year"),
("Rock/Contemporary Album of the Year"),
("Rock/Contemporary Album of the Year"),
("Rock/Contemporary Album of the Year"),
("Pop/Contemporary Album of the Year"),
("Pop/Contemporary Album of the Year"),
("Pop/Contemporary Album of the Year"),
("Pop/Contemporary Album of the Year"),
("Pop/Contemporary Album of the Year"),
("Inspirational Album of the Year"),
("Inspirational Album of the Year"),
("Inspirational Album of the Year"),
("Inspirational Album of the Year"),
("Inspirational Album of the Year"),
("Inspirational Album of the Year")
;
 
ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_categoria_id)
    REFERENCES categoria (categoria_id)
    ON DELETE CASCADE;