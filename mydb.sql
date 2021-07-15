-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-07-15 06:49:37
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
