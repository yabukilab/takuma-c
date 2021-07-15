-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-07-15 08:32:46
-- サーバのバージョン： 10.4.18-MariaDB
-- PHP のバージョン: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- テーブルの構造 `hour`
--

CREATE TABLE `hour` (
  `id` int(11) NOT NULL,
  `hourfrom` varchar(10) NOT NULL,
  `hourto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `hour`
--

INSERT INTO `hour` (`id`, `hourfrom`, `hourto`) VALUES
(1, '0', '5'),
(2, '5', '12'),
(3, '12', '24');

-- --------------------------------------------------------

--
-- テーブルの構造 `music_data`
--

CREATE TABLE `music_data` (
  `id` int(11) NOT NULL,
  `musicID` varchar(100) NOT NULL,
  `musicname` varchar(100) NOT NULL,
  `arthist` varchar(100) NOT NULL,
  `musicURL` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `feeling` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `music_data`
--

INSERT INTO `music_data` (`id`, `musicID`, `musicname`, `arthist`, `musicURL`, `time`, `feeling`) VALUES
(1, '1', '地球ネコ', '平沢進', 'https://www.youtube.com/watch?v=n3lyySuFlI4', '朝', '喜'),
(2, '2', 'バラライカ', '月島きらり', 'https://www.youtube.com/watch?v=SYLWe09cOjc', '朝', '喜'),
(3, '3', '青春狂走曲', 'サニーデイサービス', 'https://www.youtube.com/watch?v=Mq_Ib-3mdtI&list=RDMq_Ib-3mdtI&start_radio=1', '朝', '喜'),
(4, '4', '後悔', '柴田聡子', 'https://www.youtube.com/watch?v=6q1iLrWULMk', '朝', '喜'),
(5, '5', 'あまりいかない喫茶店で', 'never young beach', 'https://www.youtube.com/watch?v=62R6acSJZ3M', '朝', '喜'),
(6, '6', 'アーケード', 'カネコアヤノ', 'https://www.youtube.com/watch?v=r8BB8wQhtd8', '朝', '喜'),
(7, '7', '視界良好', 'スカート', 'https://www.youtube.com/watch?v=13lyT8Um_0o', '朝', '喜'),
(8, '8', 'peppermint', 'basi', 'https://www.youtube.com/watch?v=lKRq7z-FrIQ', '朝', '喜'),
(9, '9', 'evisbeats', '笑み', 'https://www.youtube.com/watch?v=bP8WID9JYFI', '朝', '喜'),
(10, '10', 'Grim　spanky', '怒りをくれよ', 'https://www.youtube.com/watch?v=OKeFoFFwYJM', '朝', '怒'),
(11, '11', 'Lose Yourself', 'Eminem', 'https://www.youtube.com/watch?v=_Yhyp-_hX2s', '朝', '怒'),
(12, '12', 'Boss Bitch', 'Doja cat', 'https://www.youtube.com/watch?v=RsW66teC0BQ', '朝', '怒'),
(13, '13', 'Scatman', 'Scatman John', 'https://www.youtube.com/watch?v=pVHKp6ffURY', '朝', '怒'),
(14, '14', 'BLOODY STREAM', 'Coda', 'https://www.youtube.com/watch?v=hmpJqJLsR48', '朝', '怒'),
(15, '15', 'Sundown(feat.KID FRESINO)', 'C.O.S.A.', 'https://www.youtube.com/watch?v=5VyONBMZphQ', '朝', '怒'),
(16, '16', 'ピエロスタイル', 'Juswanna', 'https://www.youtube.com/watch?v=Ns8FmLZeANI', '朝', '怒'),
(17, '17', 'Black Box', 'Juswanna', 'https://www.youtube.com/watch?v=ElN1MS0w4DU', '朝', '怒'),
(18, '18', 'Till I Die', 'kandytown', 'https://www.youtube.com/watch?v=eTOoRei4QXY', '朝', '怒'),
(19, '19', 'WARninPt.2', 'MOUJU&Kojoe', 'https://www.youtube.com/watch?v=MBkXfzW4bgA', '朝', '怒'),
(20, '20', 'OINUKASU', 'MonyHorse', 'https://www.youtube.com/watch?v=STnsPQMLBRc', '朝', '怒'),
(21, '21', 'Dream Chaser', 'kzm', 'https://www.youtube.com/watch?v=fXihCnAWhAs', '朝', '哀'),
(22, '22', 'summer time', 'KEIJU', 'https://www.youtube.com/watch?v=65XJb342Eow', '朝', '哀'),
(23, '23', 'Yuki Nakajo', 'kzm', 'https://www.youtube.com/watch?v=rvM2EX4JiKI', '朝', '哀'),
(24, '24', 'Blue(feat.Jin Dogg)', 'PETZ', 'https://www.youtube.com/watch?v=MQBedLiRrmo', '朝', '哀'),
(25, '25', 'Darlin feat.jjj', '仙人掌', 'https://www.youtube.com/watch?v=wucv6RoQgGk', '朝', '哀'),
(26, '26', 'First Thing First', 'Young juju', 'https://www.youtube.com/watch?v=KmvWPMW0fns', '朝', '哀'),
(27, '27', 'Angel Dust', 'Young juju', 'https://www.youtube.com/watch?v=4KS9VRU0Jps', '朝', '哀'),
(28, '28', 'Love', 'C.O.S.A, KID FRESINO', 'https://www.youtube.com/watch?v=4TRM3cps2Jo', '朝', '哀'),
(29, '29', 'All in One(Remix)', 'Ryohu', 'https://www.youtube.com/watch?v=ew4sIdxfA6c', '朝', '哀'),
(30, '30', 'Worldpeace', 'Young juju', 'https://www.youtube.com/watch?v=lNu6pAXBTFo', '朝', '哀'),
(31, '31', 'きみのためなら死ねる', '不明', 'https://www.youtube.com/watch?v=RiO8a9ErCBg', '朝', '楽'),
(32, '32', 'alien me', 'seeda', 'https://www.youtube.com/watch?v=8mHqOcPFrUY', '朝', '楽'),
(33, '33', 'Never Gonna Give You Up', 'Rick Astley', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ', '朝', '楽'),
(34, '34', 'Livin', 'seeda', 'https://www.youtube.com/watch?v=hCzhFMauoC0', '朝', '楽'),
(35, '35', 'Free', 'MIKI', 'https://www.youtube.com/watch?v=CTqICsHXxM4', '朝', '楽'),
(36, '36', 'Aint No Holding Back', 'kandytown', 'https://www.youtube.com/watch?v=UhqOHh_E_oM', '朝', '楽'),
(37, '37', 'Cats&Dogs(feat.カネコアヤノ)', 'KID FRESINO', 'https://www.youtube.com/watch?v=zNSi6hijc_c', '朝', '楽'),
(38, '38', '風を集めて', 'ハッピーエンド', 'https://www.youtube.com/watch?v=PfFEPtJE0D4', '朝', '楽'),
(39, '39', '恋は桃色', '細野晴臣', 'https://www.youtube.com/watch?v=Y9xMzctntfk', '朝', '楽'),
(40, '40', 'ようこそジャパリパークへ', 'どうぶつビスケッツ×PPP', 'https://www.youtube.com/watch?v=qTOCm1pFuFM', '朝', '楽'),
(41, '41', 'Great Days', '青木カレン', 'https://www.youtube.com/watch?v=UztXN2rKQNc', '昼', '喜'),
(42, '42', 'うまぴょい伝説', '本田晃弘', 'https://www.youtube.com/watch?v=gNp4VNr44hg', '昼', '喜'),
(43, '43', 'GIRLS LEGEND U', '本田晃弘', 'https://www.youtube.com/watch?v=nRxd2lSg5Ug', '昼', '喜'),
(44, '44', 'Presence Remix', 'STUTS&松たか子', 'https://www.youtube.com/watch?v=pyi7KdQQ8T0', '昼', '喜'),
(45, '45', 'Special Radio', 'KID FRESINO', 'https://www.youtube.com/watch?v=q2u9Vf4Um9M&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=27', '昼', '喜'),
(46, '46', 'CHAMPION', 'Leon Fanourakis', 'https://www.youtube.com/watch?v=AKr_KVPXiFg&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=28', '昼', '喜'),
(47, '47', 'Drive', 'kandytown', 'https://www.youtube.com/watch?v=nE-L_lFmCds&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=41', '昼', '喜'),
(48, '48', 'Friends', 'BAD HOP', 'https://www.youtube.com/watch?v=XJCW_mj-DYU&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=26', '昼', '喜'),
(49, '49', 'Neon Step', 'gottz', 'https://www.youtube.com/watch?v=RC1Ohcgvmos&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=26', '昼', '喜'),
(50, '50', 'HOT LIMIT', '西川貴教', 'https://www.youtube.com/watch?v=vBmU5v2EyxM', '昼', '怒'),
(51, '51', 'Death By Glamour', 'Toby-Fox', 'https://www.youtube.com/watch?v=Q9kDr4na0ls', '昼', '怒'),
(52, '52', 'こんなのおかしくない？', 'ドミコ', 'https://www.youtube.com/watch?v=-ruw_5i7h_Y', '昼', '怒'),
(53, '53', 'ペーパーロスタ', 'ドミコ', 'https://www.youtube.com/watch?v=pFw7ynGT6xM', '昼', '怒'),
(54, '54', 'クジラの巣', 'ドミコ', 'https://www.youtube.com/watch?v=ZQPIAl5egXo', '昼', '怒'),
(55, '55', '95.south', 'J.Cole', 'https://www.youtube.com/watch?v=g3mVwt0B6G4', '昼', '怒'),
(56, '56', 'BUSSIN', 'seeda,junkman,kzm', 'https://www.youtube.com/watch?v=drwha7bpD4o', '昼', '怒'),
(57, '57', 'Srkeen', '8otto', 'https://www.youtube.com/watch?v=8hlX_n6AYiY', '昼', '怒'),
(58, '58', 'see off', 'Brahman', 'https://www.youtube.com/watch?v=8s6zvaCGd_8', '昼', '怒'),
(59, '59', 'stay gold', 'Hi-standard', 'https://www.youtube.com/watch?v=scqDV8X5-Xk', '昼', '怒'),
(60, '60', '虎', 'ハンバートハンバート', 'https://www.youtube.com/watch?v=1-aD6iPdmKg', '昼', '哀'),
(61, '61', '痛いよ', '清竜人', 'https://www.youtube.com/watch?v=iSEU7jqBmOw', '昼', '哀'),
(62, '62', '君がだれかの彼女になりくさっても', '天才バンド', 'https://www.youtube.com/watch?v=Eog86HbSSQw', '昼', '哀'),
(63, '63', '外が寒いから', '東京60Watts', 'https://www.youtube.com/watch?v=BJvQ2-CRgkc', '昼', '哀'),
(64, '64', 'untitled', 'kandytown', 'https://www.youtube.com/watch?v=YTh8YawwT6c&list=RDMM2-SPnE0Y20k&index=2', '昼', '哀'),
(65, '65', 'んoon', 'Gum', 'https://www.youtube.com/watch?v=BSf6f6qE754', '昼', '哀'),
(66, '66', 'Bound For Glory', 'KEIJU', 'https://www.youtube.com/watch?v=CQgPmYw2ugs&list=RDMM2-SPnE0Y20k&index=13', '昼', '哀'),
(67, '67', 'Hood Gospel', 'BAD HOP', 'https://www.youtube.com/watch?v=-o-zH8hn1kQ&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=3', '昼', '哀'),
(68, '68', 'Suicide Remix', 'BAD HOP', 'https://www.youtube.com/watch?v=QhTCHikzdo8&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=9', '昼', '哀'),
(69, '69', 'Someday', 'Young juju,IO', 'https://www.youtube.com/watch?v=o3z2iR50LvM&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=12', '昼', '哀'),
(70, '70', 'Bill', 'IO', 'https://www.youtube.com/watch?v=wQ0oxMvOR2c&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=28', '昼', '哀'),
(71, '71', '美術館であった人だろ', 'P-MODE', 'https://www.youtube.com/watch?v=d6lyxXJtWDE', '昼', '楽'),
(72, '72', 'パプリカ', '平沢進', 'https://www.youtube.com/watch?v=Mr86_f-kLSQ', '昼', '楽'),
(73, '73', '何でも言うことを聞いてくれるアカネチャン', 'GYARI', 'https://www.youtube.com/watch?v=OVuYIMa5XBw', '昼', '楽'),
(74, '74', 'DADDY!DADDY!DO!', '鈴木雅之', 'https://www.youtube.com/watch?v=qIBWRPqJcGQ', '昼', '楽'),
(75, '75', 'Spider Dance', 'Toby-Fox', 'https://www.youtube.com/watch?v=NH-GAwLAO30', '昼', '楽'),
(76, '76', 'エスパー', 'ミツメ', 'https://www.youtube.com/watch?v=6lKTQbrM9RI', '昼', '楽'),
(77, '77', 'Come With ME(feat.KEIJU&IO)', 'DJ CHARI', 'https://www.youtube.com/watch?v=8CmcOdFXbbw', '昼', '楽'),
(78, '78', 'The Moment', 'Ryohu', 'https://www.youtube.com/watch?v=FvpV1hYufEA', '昼', '楽'),
(79, '79', 'Sunday Drive', 'kandytown', 'https://www.youtube.com/watch?v=1D7je-3w1rQ', '昼', '楽'),
(80, '80', 'JET MODE(feat.Tyson,MonyHorse)', 'DJ CHARI&DJ TATSUKI', 'https://www.youtube.com/watch?v=Efw6LCQCQsU', '昼', '楽'),
(81, '81', 'キムチ', 'basi', 'https://www.youtube.com/watch?v=rtFIB0u-L0o', '晩', '喜'),
(82, '82', 'たのしい夜更かしをしよう', '浪漫革命', 'https://www.youtube.com/watch?v=FZOmkLbm66I', '晩', '喜'),
(83, '83', 'あんなつぁ', '浪漫革命', 'https://www.youtube.com/watch?v=lMYSptBzSFE', '晩', '喜'),
(84, '84', 'Buddy', 'BIM', 'https://www.youtube.com/watch?v=b3_ax_7_3JQ', '晩', '喜'),
(85, '85', 'on my way', 'in-d', 'https://www.youtube.com/watch?v=aSrnjDSZFp0', '晩', '喜'),
(86, '86', '今夜はブギーバック', '小沢健二', 'https://www.youtube.com/watch?v=6lKTQbrM9RI', '晩', '喜'),
(87, '87', 'a lot(feat.J.Cole)', '21savege', 'https://www.youtube.com/watch?v=DmWWqogr_r8', '晩', '喜'),
(88, '88', 'Arcades', 'KID FRESINO', 'https://www.youtube.com/watch?v=QLUt7dH7hbQ&list=RDMM2-SPnE0Y20k&index=7', '晩', '喜'),
(89, '89', 'METHOD', 'kandytown', 'https://www.youtube.com/watch?v=Qw9NVffwXJA&list=RDMM2-SPnE0Y20k&index=8', '晩', '喜'),
(90, '90', 'Swing at somewhere', 'KID FRESINO', 'https://www.youtube.com/watch?v=8VzneQnyMPY&list=RDMM2-SPnE0Y20k&index=10', '晩', '喜'),
(91, '91', 'il vento d’oro', '菅野祐悟', 'https://www.youtube.com/watch?v=C0e6itSjAkc', '晩', '怒'),
(92, '92', 'MELTY BLOOD', '来兔', 'https://www.youtube.com/watch?v=9xZ8HTB6PJE', '晩', '怒'),
(93, '93', 'omoide in my head', 'Number girl', 'https://www.youtube.com/watch?v=Q7LplMNdr9I', '晩', '怒'),
(94, '94', 'MEGALOVANIA', 'Toby-Fox', 'https://www.youtube.com/watch?v=0FCvzsVlXpQ', '晩', '怒'),
(95, '95', 'Battle Against A True Hero', 'Toby-Fox', 'https://www.youtube.com/watch?v=DcERQHg3iy8', '晩', '怒'),
(96, '96', 'Adrenalin', 'gottz&MUD', 'https://www.youtube.com/watch?v=Hm3U8lDEHf0', '晩', '怒'),
(97, '97', 'get paid', 'KEIJU', 'https://www.youtube.com/watch?v=GllUZOQAojA', '晩', '怒'),
(98, '98', '深夜高速', 'フラワーカンパニーズ', 'https://www.youtube.com/watch?v=uAXibMc74oY', '晩', '怒'),
(99, '99', 'Lost boy', 'SEAMO', 'https://www.youtube.com/watch?v=EHjlx2R2AUc', '晩', '怒'),
(100, '100', '夜明けのビート', 'フジファブリック', 'https://www.youtube.com/watch?v=3cupbrwhNp0', '晩', '怒'),
(101, '101', '魂のルフラン', '高橋洋子', 'https://www.youtube.com/watch?v=VpI0NZhgI9Y', '晩', '哀'),
(102, '102', 'One Last Kiss', '宇多田ヒカル', 'https://www.youtube.com/watch?v=0Uhh62MUEic', '晩', '哀'),
(103, '103', 'Beautiful world', '宇多田ヒカル', 'https://www.youtube.com/watch?v=epESCAQyAPU', '晩', '哀'),
(104, '104', 'Bohemian Rhapsody', 'QUEEN', 'https://www.youtube.com/watch?v=fJ9rUzIMcZQ', '晩', '哀'),
(105, '105', 'ばかみたい', '福山光晴', 'https://www.youtube.com/watch?v=g3jCAyPai2Y', '晩', '哀'),
(106, '106', 'テレ東', '相対性理論', 'https://www.youtube.com/watch?v=9mslsN2bvA8', '晩', '哀'),
(107, '107', 'いかれたbaby', 'fishmans', 'https://www.youtube.com/watch?v=Z75tKpsG8oI', '晩', '哀'),
(108, '108', 'Killer Queen', 'QUEEN', 'https://www.youtube.com/watch?v=2ZBtPf7FOoM', '晩', '哀'),
(109, '109', '神保町哀歌', '邪神ちゃん', 'https://www.youtube.com/watch?v=v9PszLIs1-k', '晩', '哀'),
(110, '110', 'Hand Down(feat.IO&ZEUS)', 'DJ BEERT', 'https://www.youtube.com/watch?v=9YFuOCT2meY', '晩', '哀'),
(111, '111', 'Shamisen Rap(feat.Shurkn Pap)', 'gottz', 'https://www.youtube.com/watch?v=Fvf1FV24uLY', '晩', '楽'),
(112, '112', 'Tears', 'KEIJU', 'https://www.youtube.com/watch?v=7Qan_Pw1vS4&list=RDMM2-SPnE0Y20k&index=11', '晩', '楽'),
(113, '113', '君は最高', 'jabba da football club', 'https://www.youtube.com/watch?v=HuYbt8tPEyA', '晩', '楽'),
(114, '114', 'In Need', 'kandytown', 'https://www.youtube.com/watch?v=AFuVLq27I8Q&list=RDGMEMHDXYb1_DDSgDsobPsOFxpAVMYTh8YawwT6c&index=26', '晩', '楽'),
(115, '115', 'One More Dance', 'kandytown', 'https://www.youtube.com/watch?v=iY340Z3BTdA&list=RDMM2-SPnE0Y20k&index=15', '晩', '楽'),
(116, '116', 'Let Me Know', 'KEIJU', 'https://www.youtube.com/watch?v=gJVjcXHryWo&list=RDMM2-SPnE0Y20k&index=14', '晩', '楽'),
(117, '117', 'Paper Chase', 'kandytown', 'https://www.youtube.com/watch?v=QU7K7qw0yso&list=RDMM2-SPnE0Y20k&index=20', '晩', '楽'),
(118, '118', 'R.T.N', 'kandytown', 'https://www.youtube.com/watch?v=kIXrGAaSZNo&list=RDMM2-SPnE0Y20k&index=21', '晩', '楽'),
(119, '119', 'Hold You Down', 'KEIJU', 'https://www.youtube.com/watch?v=-bU3-FXJY2Y&list=RDMM2-SPnE0Y20k&index=26', '晩', '楽'),
(120, '120', '早口バカ', 'J-REXXX', 'https://www.youtube.com/watch?v=jqj397ktEmI', '晩', '楽');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_data`
--

CREATE TABLE `user_data` (
  `id` int(16) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `user_data`
--

INSERT INTO `user_data` (`id`, `username`, `passwd`) VALUES
(1, 'kikuti', 'pass1'),
(2, 'kaneda', 'pass2'),
(3, 'morii', 'pass3'),
(16, 'ki', 'k'),
(17, 'd', 'da'),
(18, 'kikuti1', 'a');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hour`
--
ALTER TABLE `hour`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `music_data`
--
ALTER TABLE `music_data`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `hour`
--
ALTER TABLE `hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `music_data`
--
ALTER TABLE `music_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- テーブルの AUTO_INCREMENT `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- データベース: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- テーブルのデータのダンプ `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mydb\",\"table\":\"user_data\"},{\"db\":\"mydb\",\"table\":\"music_data\"},{\"db\":\"mydb\",\"table\":\"hour\"},{\"db\":\"takumac\",\"table\":\"user_data\"},{\"db\":\"takumac\",\"table\":\"music_data\"},{\"db\":\"takumac\",\"table\":\"hour\"},{\"db\":\"takumac\",\"table\":\"log_data\"},{\"db\":\"mysql\",\"table\":\"db\"},{\"db\":\"takuma\",\"table\":\"test_login\"},{\"db\":\"mydb\",\"table\":\"productinfo\"}]');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- テーブルのデータのダンプ `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-07-15 06:09:36', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ja\",\"NavigationWidth\":194}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- テーブルのインデックス `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- テーブルのインデックス `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- テーブルのインデックス `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- テーブルのインデックス `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- テーブルのインデックス `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- テーブルのインデックス `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- テーブルのインデックス `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- テーブルのインデックス `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- テーブルのインデックス `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- テーブルのインデックス `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- データベース: `takuma`
--
CREATE DATABASE IF NOT EXISTS `takuma` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `takuma`;

-- --------------------------------------------------------

--
-- テーブルの構造 `test_login`
--

CREATE TABLE `test_login` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `test_login`
--

INSERT INTO `test_login` (`id`, `name`, `pass`) VALUES
(1, 'kikuti', 'pass1'),
(2, 'kaneda', 'pass2'),
(3, 'morii', 'pass3');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `test_login`
--
ALTER TABLE `test_login`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `test_login`
--
ALTER TABLE `test_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- データベース: `takumac`
--
CREATE DATABASE IF NOT EXISTS `takumac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `takumac`;
--
-- データベース: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
