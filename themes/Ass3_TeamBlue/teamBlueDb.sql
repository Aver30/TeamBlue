-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 26, 2018 at 06:32 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fit3157`
--

-- --------------------------------------------------------

--
-- Table structure for table `teamblue_database`
--

CREATE TABLE `teamblue_database` (
  `event_name` tinytext COLLATE utf8_unicode_ci,
  `event_date` date DEFAULT NULL,
  `event_topic` tinytext COLLATE utf8_unicode_ci,
  `event_type` tinytext COLLATE utf8_unicode_ci,
  `event_image` text COLLATE utf8_unicode_ci,
  `event_city` tinytext COLLATE utf8_unicode_ci,
  `event_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teamblue_database`
--

INSERT INTO `teamblue_database` (`event_name`, `event_date`, `event_topic`, `event_type`, `event_image`, `event_city`, `event_description`) VALUES
('A Woman Captured', '0000-00-00', 'Woman', 'Film', 'a_woman_captured.jpg', 'Syndey', 'Marish has been exploited and abused for more than 10 years by the woman for whom she toils as a housekeeper—entirely unpaid. She even has to hand over the money she earns with an extra job as a cleaner in a factory. She’s forbidden to do anything without permission. Marish’s 18-year-old daughter couldn’t stand it anymore and ran away a couple of years ago, but Marish lives with too much fear in her heart. Can she ever learn to trust people again? She dreams of seeing her daughter again but will she find the courage to take a step forward in her life?'),
('After The Apology', '0000-00-00', 'Conflict', 'Film', 'after_the_apology.jpg', 'Canberra', 'A redemptive documentatry about four grandmothers who start a national movement to place Indigenous children with extended families.'),
('The Song Keepers', '0000-00-00', 'Conflict', 'Film', 'the_song_keepers.jpg', 'Canberra', 'A simple classroom is setting for this complex exploration of the starkly releant topic of mass global immigration'),
('Food Fighter', '0000-00-00', 'Conflict', 'Film', 'food_fighter.jpg', 'Canberra', 'Food Fighter\' is the inspirational story of one OzHarvest CEO Ronni Kahn crusade to save perfectly edible food'),
('Jaha\'s Promise', '0000-00-00', 'Woman Rights', 'Film', 'jahas_promise.jpg', 'Canberra', 'As one of the countless victims of female genital mutilation, aha\'s Promise is not only a commitment to her daugher but also a successful campaign against the relenless female genital mutilation'),
('Border Politics', '0000-00-00', 'Conflict', 'Film', 'border_politics.jpg', 'Canberra', 'Having made its World Premiere at HRAFF, Border Politics questions whether the West has lost its moral compass adopting ideas that rject humanity and undermine democracy.'),
('Last Men In Aleppo', '0000-00-00', 'Conflict', 'Film', 'last_men_in_aleppo.jpg', 'Canberra', 'Through the volunteers from the White Helmets we xperience the daily life, death and struggle in the streets, where they are fighting for sanity in a city wherewar has become the norm'),
('Her Sound Her Story', '0000-00-00', 'Woman Rights', 'Film', 'her_sound_her_story.jpg', 'Canberra', 'Making its world premiere at HRAFF, the film features an intimate conversation with an exclusively female line-up to tell their stories, and look for solutions to ensuing a more inclusive, diverse future'),
('Step', '0000-00-00', 'Woman', 'Film', 'step.jpg', 'Canberra', 'Not only are they a competitive step team headed for a showdown, these girls are also aiming to break barriers as the first graduates of their school'),
('A Woman Captured', '0000-00-00', 'Woman', 'Film', 'a_woman_captured.jpg', 'Syndey', 'Marish has been exploited and abused for more than 10 years by the woman for whom she toils as a housekeeper—entirely unpaid. She even has to hand over the money she earns with an extra job as a cleaner in a factory. She’s forbidden to do anything without permission. Marish’s 18-year-old daughter couldn’t stand it anymore and ran away a couple of years ago, but Marish lives with too much fear in her heart. Can she ever learn to trust people again? She dreams of seeing her daughter again but will she find the courage to take a step forward in her life?'),
('After The Apology', '0000-00-00', 'Conflict', 'Film', 'after_the_apology.jpg', 'Canberra', 'A redemptive documentatry about four grandmothers who start a national movement to place Indigenous children with extended families.'),
('The Song Keepers', '0000-00-00', 'Conflict', 'Film', 'the_song_keepers.jpg', 'Canberra', 'A simple classroom is setting for this complex exploration of the starkly releant topic of mass global immigration'),
('Food Fighter', '0000-00-00', 'Conflict', 'Film', 'food_fighter.jpg', 'Canberra', 'Food Fighter\' is the inspirational story of one OzHarvest CEO Ronni Kahn crusade to save perfectly edible food'),
('Jaha\'s Promise', '0000-00-00', 'Woman Rights', 'Film', 'jahas_promise.jpg', 'Canberra', 'As one of the countless victims of female genital mutilation, aha\'s Promise is not only a commitment to her daugher but also a successful campaign against the relenless female genital mutilation'),
('Border Politics', '0000-00-00', 'Conflict', 'Film', 'border_politics.jpg', 'Canberra', 'Having made its World Premiere at HRAFF, Border Politics questions whether the West has lost its moral compass adopting ideas that rject humanity and undermine democracy.'),
('Last Men In Aleppo', '0000-00-00', 'Conflict', 'Film', 'last_men_in_aleppo.jpg', 'Canberra', 'Through the volunteers from the White Helmets we xperience the daily life, death and struggle in the streets, where they are fighting for sanity in a city wherewar has become the norm'),
('Her Sound Her Story', '0000-00-00', 'Woman Rights', 'Film', 'her_sound_her_story.jpg', 'Canberra', 'Making its world premiere at HRAFF, the film features an intimate conversation with an exclusively female line-up to tell their stories, and look for solutions to ensuing a more inclusive, diverse future'),
('Step', '0000-00-00', 'Woman', 'Film', 'step.jpg', 'Canberra', 'Not only are they a competitive step team headed for a showdown, these girls are also aiming to break barriers as the first graduates of their school');
