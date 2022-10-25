-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2022 at 05:37 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
use salu_ems;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u674363904_salu_ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

--
-- Dumping data for table `batches`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$QdxcdtJGlcUt0hPXM9wGheIzEPw7ydO4IBoBfrf.VEB6DjbL77g02', 'yHnVZR8ElT5wceqBMyaJcpgk7sOIIl11jtrXICVKgHxSNtFdbqliwv3qNJHH', '2022-10-10 06:38:58', '2022-10-10 06:38:58'),
(3, 'ABDUL BASIT', 'ABDULBASIT@gmail.com', NULL, '$2y$10$tZdi7AKHCiIN7fI7DSXlR.da5hXT.iioopMlpFwZkuNXTX6oSpFPW', NULL, '2022-10-12 06:10:16', '2022-10-12 06:10:16'),
(5, 'Aqib hussain', 'aqib1@gamil.com', NULL, '$2y$10$XStMqGNUlIOvCGWcAZ4.cOkdlqw9JEMmTmy4JCGqSanmcRV/C/FOW', NULL, '2022-10-12 06:15:47', '2022-10-14 07:59:54'),
(6, 'Arslan Khan', 'arslan1@gmail.com', NULL, '$2y$10$SFc5uSR3w.igeW9XqpyJEO0Gjw6m31T5bqDCypQyMICF4jM6Lk1Wq', NULL, '2022-10-12 06:19:00', '2022-10-14 08:00:22'),
(7, 'Asif Ali', 'asif1@gmail.com', NULL, '$2y$10$t74Wk2qLf1m0jtpYEc4jRObQznQbmQJ9mO8p6SCwK7L2qZ0sYDTlq', NULL, '2022-10-12 06:22:50', '2022-10-14 08:00:41'),
(8, 'Farhan Ali', 'farhan1@gmail.com', NULL, '$2y$10$0sqH9wTewPEv/vaHBPvcHOGvfs3Uoo6qYdZ9Mi5KqklTRDWNkxEDa', NULL, '2022-10-12 06:26:12', '2022-10-14 08:01:15'),
(9, 'Irshad khatoon', 'irshad@gmail.com', NULL, '$2y$10$RGokGZ2cozCZ0Yg1ZY5WaeryLns.DduK//5OulLsEPRozl667fhqS', NULL, '2022-10-12 06:30:03', '2022-10-12 06:30:03'),
(10, 'Javed Hussain', 'javed1@gmail.com', NULL, '$2y$10$Q1rXCSrmN3/NqAk.QTDON.D4l6YArnvXMZ1NSPyMd4ZxCBEKm1GhC', NULL, '2022-10-12 06:33:55', '2022-10-14 08:01:55'),
(11, 'adnan', 'maqsood11@gmail.com', NULL, '$2y$10$6Uh1qqs3aeOEyXGmvh4jF.Q60OfrXW4WVct.eUv8du5SU83stKnVy', NULL, '2022-10-12 06:36:21', '2022-10-14 08:03:33'),
(17, 'Asif Ali', 'asifali1@gmal.com', NULL, '$2y$10$proUwXEz.0m8XOMPbfJOWOFF03WjFT1X7bqxQ0pC0twfA2qdjohEm', NULL, '2022-10-12 06:53:33', '2022-10-14 07:48:11'),
(19, 'Faisal', 'faisal0@gmail.com', NULL, '$2y$10$cgR/.e87ZV4TN9lN7e0Cx.hFgTI6r9ss99b/wqQvNgexBoTUSL8f.', NULL, '2022-10-12 06:57:28', '2022-10-14 07:48:51'),
(24, 'Waheed', 'waheed1@gmail.com', NULL, '$2y$10$bmwuGPILkCxsjygJo7xWuOmFUugAmKWa6sE1vRqtQHEAWv6pIFubC', NULL, '2022-10-12 07:10:18', '2022-10-14 07:52:37'),
(25, 'Altaf', 'altaf1@gmail.com', NULL, '$2y$10$n2NzKK0Ef1MHvsrWem9MKu.6sO1Pl1BT11hQ3OgSP3vFERLpfOxsq', NULL, '2022-10-12 07:12:50', '2022-10-14 07:53:01'),
(26, 'Abid Hussain', 'abidhussain1@gmail.com', NULL, '$2y$10$ecpgpNo7beNA3wlVTy3C7eVftWxwXyWUMe1hK.iJPqKJCyyZrlwgO', NULL, '2022-10-12 08:17:02', '2022-10-14 07:08:50'),
(27, 'Ghulam sarwnar', 'ghulamsarwnar1@gmail.com', NULL, '$2y$10$NX0/gozEjCPxOlhAVIl0zeo2K6vKDjEtLMjkb82q7zMJwwp1d3ZeS', NULL, '2022-10-12 08:20:29', '2022-10-14 07:53:30'),
(28, 'Waqar', 'waqar3@gmail.com', NULL, '$2y$10$Ygfafwnrd/yYri23kQd/h.b3wnyTSc9MJHj9Fwk2RXuxnNUklfecO', NULL, '2022-10-12 08:22:55', '2022-10-14 07:53:56'),
(30, 'Manzoor', 'manzoor1@gmail.com', NULL, '$2y$10$co/ieYELG9iSGj6To40jruG/0ZnhTYnh65MJ4CnM71of7koO8vZ9K', NULL, '2022-10-12 08:26:43', '2022-10-14 07:54:30'),
(32, 'Wazeer ali', 'wazeeral1i@gmail.com', NULL, '$2y$10$n2WLMsbuh8KYBE1M0AFUZ.XerfPlTZiWqxrq8dS77fqOgH0O0q/8C', NULL, '2022-10-12 08:30:40', '2022-10-14 07:54:58'),
(34, 'Abdul Sattar', 'abdulsattar1@gmail.com', NULL, '$2y$10$Cgk3bvIetf3q2tn247UJ/.uBr21wmlEVZIqgEmguIc148Bf4GiKAq', NULL, '2022-10-12 08:36:29', '2022-10-14 07:55:53'),
(35, 'Ali Raza', 'aliraza1@gmail.com', NULL, '$2y$10$5usCwm/EpjhpuHRNofHZLuuSJhEMmotVB.YFVA5bRVsJmTDbAUOJ6', NULL, '2022-10-12 08:41:14', '2022-10-14 07:57:56'),
(36, 'Amir Ali', 'amirali2@gamil.com', NULL, '$2y$10$wUsiMa3sP/0IV1wA8X.b1OXN5lX5vQpKnFJQWCRlKnNPDGImJg/Ou', NULL, '2022-10-12 08:43:52', '2022-10-14 07:58:27'),
(40, 'kaleemullah', 'kaleemullah@gmail.com', NULL, '$2y$10$1JFd/93vl6rREeUdkmseO.MF.eMRRlGj7I682mZIvN5jUuWpnxXW2', NULL, '2022-10-12 08:56:38', '2022-10-12 08:56:38'),
(41, 'Abdul Haseeb', 'Haseeb@gmail.com', NULL, '$2y$10$lIXW1hXiEe/pZsY2pf.UHepdwEDwRU9xhv7raMOXXPldMl0bPIJBq', NULL, '2022-10-12 09:56:05', '2022-10-12 09:56:05'),
(42, 'Abdul Qudoos', 'Qudoos@gmail.com', NULL, '$2y$10$eFhlCjcjhqSQqF9E6tZ4keuTDsvImEHCdAHmgfju2y2tmPk/Uf93K', NULL, '2022-10-12 10:01:02', '2022-10-12 10:01:02'),
(43, 'Mazhar', 'Mazhar@gmail.com', NULL, '$2y$10$6DLLojsHoHuRfd8Xqv4v4e7J2aSv.ET.9UxtUCy6q6snt6RfjmBfq', NULL, '2022-10-12 10:04:25', '2022-10-12 10:04:25'),
(44, 'Amara', 'Amara@gmail.com', NULL, '$2y$10$wJzEya/KfTmZMfiWdzwuQeLJJGc5NprpbOobL1JXw3EMRo59juG/q', NULL, '2022-10-12 10:08:32', '2022-10-12 10:08:32'),
(45, 'Rafat Farooque', 'Rafat@gmail.com', NULL, '$2y$10$y51LjthuWCbXLZrwk0kW9eg5P2Li2mVAeh3zL2IqiZBgdd66Bq/12', NULL, '2022-10-12 10:12:36', '2022-10-12 10:12:36'),
(46, 'Anisa', 'anisa@gmail.com', NULL, '$2y$10$QDq/UuI7xgz8NXbNDuJH7Oh8jcv.RHLuIGA4lRUCEFp10t04AdUOa', NULL, '2022-10-12 10:17:20', '2022-10-15 05:32:32'),
(47, 'Tanveer Ahmed', 'Tanveer@gmail.com', NULL, '$2y$10$wZY/zlVU4MeSHubQWHZy7un5THkOK/tFJCHws.0nwejGrns5cKFVO', NULL, '2022-10-12 10:21:20', '2022-10-12 10:21:20'),
(49, 'Hira', 'Hira@gmail.com', NULL, '$2y$10$4GbASRNcjSdVg/BaMNrL8uFW3nDUf85oCrBCT5LTBPVn2XY673Zi.', NULL, '2022-10-12 10:30:07', '2022-10-12 10:30:07'),
(50, 'Nasir Ali', 'Nasir@gmail.com', NULL, '$2y$10$0eWaMMkQGh90OImiOF3EH.eDAA1LEy5sWkTmoJUDg1zBcXZSIp4s2', NULL, '2022-10-12 10:33:31', '2022-10-12 10:33:31'),
(51, 'Ali Hassan', 'Ali@gmail.com', NULL, '$2y$10$p0dkQi7pnjG.MSaV1wiJ5uosvmj7jvmypd3yRGGwqXuNUeJ33vq06', NULL, '2022-10-12 10:40:53', '2022-10-12 10:40:53'),
(52, 'Abdul Basit', 'Basit@gmail.com', NULL, '$2y$10$8IhuOi1uPpT/X8ZSz4K78OJbt2EYqmnTZDtCq9R7jwlkGu6IJEQkS', NULL, '2022-10-12 10:44:35', '2022-10-12 10:44:35'),
(53, 'allishan', 'allishan@gmail.com', NULL, '$2y$10$G2M6maiFCu49aJtARrpniOJO66F.y.4jmjqE1QiYqryacilAGcBUO', NULL, '2022-10-12 10:53:13', '2022-10-12 10:53:13'),
(54, 'Kainat', 'Kainat@gmail.com', NULL, '$2y$10$IEDad53o7SkOKcCfPFdIF.CBsHMs4ROaRzD1/z0u8ZE1au9Bhs7k6', NULL, '2022-10-12 10:54:07', '2022-10-12 10:54:07'),
(56, 'Maniza', 'Maniza@gmail.com', NULL, '$2y$10$h5AmPzyLcS./nG7a4L8yJ.vz/GVSOdzhSne.5bKon29ajG/aAKpEO', NULL, '2022-10-12 10:58:15', '2022-10-12 10:58:15'),
(57, 'basit', 'basitk@gmail.com', NULL, '$2y$10$hn8ODfFClC6F6919dCKCDeIBBqJB8zRJMwJE1tPvJUyQNs5c3EsQq', NULL, '2022-10-12 10:58:26', '2022-10-12 10:58:26'),
(59, 'Shahid Hussain', 'Shahid@gmail.com', NULL, '$2y$10$EiUGGB9aGpuFT7nMR8LO4Ok.jPQGh2hTP1fhxizyedGq/QIoP7JaG', NULL, '2022-10-12 11:01:24', '2022-10-12 11:01:24'),
(62, 'Tayaba', 'Tayaba@gmail.com', NULL, '$2y$10$ez/eeKIApjweRhiBxO1HnOhC3XASYXnQhFC1ZYsd0/eMgE6BIgfQy', NULL, '2022-10-12 11:04:22', '2022-10-12 11:04:22'),
(66, 'Saeed Ahmed', 'Saeed@gmail.com', NULL, '$2y$10$FGSJq9AklCu5zqOL8upRkOpW5bIo/3MfsU4OohZFPendKEYjlPiC2', NULL, '2022-10-12 11:10:13', '2022-10-12 11:10:13'),
(68, 'Mujeeb Ali', 'Mujeeb@gmail.com', NULL, '$2y$10$VxjYhmZCeeeqxVvfqv8hp.Y9/CciRfhRipNBx.Z2cRmPm9.yy9tUq', NULL, '2022-10-12 11:13:58', '2022-10-12 11:13:58'),
(70, 'abdul kazak', 'kazak@gmail.com', NULL, '$2y$10$dPQsdyMqy8bXoBpro88EuOcZ7.yeoV7meh9DD6c35KepzvqHCqoW6', NULL, '2022-10-12 11:17:01', '2022-10-12 11:17:01'),
(71, 'Tanzela', 'Tanzela@gmail.com', NULL, '$2y$10$WuUZq636UjJEVG34o4U0L.hhWoB/IxNDtfQ8EZas2q.2sOaFcaACu', NULL, '2022-10-12 11:17:50', '2022-10-12 11:17:50'),
(72, 'abdul samad', 'samad@gmail.com', NULL, '$2y$10$n3XQVulTad6zY010N2IEEeznfqJKvb7XFZB032S4f/zona6AWSR.e', NULL, '2022-10-12 11:18:51', '2022-10-12 11:18:51'),
(74, 'Hina Khatoon', 'Khatoon@gmail.com', NULL, '$2y$10$893h4f7zy849IlEf/j6NC.HSwc2E.L6dTrnQcGE2EVRITD2qkEkZC', NULL, '2022-10-12 11:21:55', '2022-10-12 11:21:55'),
(75, 'Abdul Hakeem', 'Hakeem@gmail.com', NULL, '$2y$10$FLxJ74GSYDv0FGfGBK/CEO/i20LfFjscVb/R7D34sX15fo8jvl35C', NULL, '2022-10-12 11:26:51', '2022-10-12 11:26:51'),
(77, 'ghulam muhammad', 'ghulammuhammad@gmail.com', NULL, '$2y$10$4i2ht31uJnLq.3sADe1mN.i3ePRG7/Cv5hgmdH/Qgt5QDFzTsY1Ry', NULL, '2022-10-12 11:29:58', '2022-10-12 11:29:58'),
(78, 'Abdul Rafeh', 'Rafeh@gmail.com', NULL, '$2y$10$pV399IN1yChbfv4E2yHeUuCUQELBolW4GEdxyPxk8amnpgrzBxUhW', NULL, '2022-10-12 11:31:08', '2022-10-12 11:31:08'),
(80, 'Aina', 'Aina@gmail.com', NULL, '$2y$10$LuHoIHQ2xM2nzLqUhB8K/uC6X6.CxSZo7bcHC/ois5Px4udEFLZfi', NULL, '2022-10-12 11:33:29', '2022-10-12 11:33:29'),
(82, 'Anam Bareerah', 'Anam@gmail.com', NULL, '$2y$10$Rxt3PR1bEmu.QG.aDIwwd.Er849uHDqLkrrW.Zj9Uz0bX382tsyGK', NULL, '2022-10-12 11:36:43', '2022-10-12 11:36:43'),
(83, 'Rao ibrar', 'ibrarrao@gmail.com', NULL, '$2y$10$IMvK2jrQO5QmmRJkurIyCeuzcFKtzFeywx6h2pHFw2UpFRqLyvnei', NULL, '2022-10-12 11:37:09', '2022-10-12 11:37:09'),
(90, 'Ameer Hammza', 'ameerd@gmail.com', NULL, '$2y$10$UVttvtVS.KLKnYPsY7/aGOZ2pofiCfpxXGNfMOU65Z2oc.Imj2MyG', NULL, '2022-10-12 11:49:36', '2022-10-14 13:07:42'),
(91, 'Ali Mehdi', 'Mehdi@gmail.com', NULL, '$2y$10$p1CfmRFzXN.MX9jM1gxM7Or48RBXn1eZoxPDgMHdtjrmJkZ5OOxVy', NULL, '2022-10-12 11:50:56', '2022-10-12 11:50:56'),
(92, 'Ali Raza', 'Raza@gmail.com', NULL, '$2y$10$x0x7bOPYm4nQBWSjQIQ6ruROgRjLCj/N78VeWjlRVumVPm2ltLNUi', NULL, '2022-10-12 11:54:08', '2022-10-12 11:54:08'),
(94, 'Abdul Qadir', 'Abdul@gmail.com', NULL, '$2y$10$J5BcECw5b9.uLR/IrQmwZutT2TBh8L3ELazcQm0h5.MeBGs2l.Iiq', NULL, '2022-10-12 12:01:09', '2022-10-12 12:01:09'),
(95, 'Ali Muhammad', 'Muhammad@gmail.com', NULL, '$2y$10$rvKR6RRoLWzPkphWHsIjNOHdL41zU.547j5nQmh5eCpRWF25aQzPO', NULL, '2022-10-12 12:05:27', '2022-10-12 12:05:27'),
(96, 'Dilshad Ali', 'Dilshad@gmail.com', NULL, '$2y$10$A2xH/Be9hFzafrqpUXIbh.lUB6iei2yvG6oEjdDTpYBiOKFrvBrd2', NULL, '2022-10-12 12:08:10', '2022-10-12 12:08:10'),
(97, 'Fatima Arshad', 'Fatima@gmail.com', NULL, '$2y$10$XVmlCCOCnd9lBgDK/auk5OYn./unWoVi3y5WSBVnGhkZ0gBKkXLpO', NULL, '2022-10-12 12:13:12', '2022-10-12 12:13:12'),
(98, 'Gul Bahar', 'Gul@gmail.com', NULL, '$2y$10$nsyvGkExmyPuKRwMIVSxDuo6N29vwvSeeAxvm3N7Q/y1BTGps4DK6', NULL, '2022-10-12 12:17:20', '2022-10-12 12:17:20'),
(99, 'Allah Wasayo', 'allah@gmail.com', NULL, '$2y$10$2r6XiBEpnOIkKwOiKpai9ucQ9q.bO6DEwvmQc45jyu28OwDp825Ie', NULL, '2022-10-12 12:20:27', '2022-10-12 12:20:27'),
(100, 'Haseebullah', 'haseebullah@gmail.com', NULL, '$2y$10$J5Rq3sEF7h4f4TFwrg/7M.OCiaAynPe1fLktH.JXHGwk5Oaqg33YK', NULL, '2022-10-12 12:24:07', '2022-10-12 12:24:07'),
(101, 'Mansoor Ahmed', 'Mansoor@gmail.com', NULL, '$2y$10$Q1TkWbPmSdLpO2e4Z1s36O89zGE2HC1Tt3eOQprBk/pVKfflqGciK', NULL, '2022-10-12 12:27:10', '2022-10-12 12:27:10'),
(102, 'Aqib Ali', 'Aqib@gmail.com', NULL, '$2y$10$ld6JVcFsudBkprdUAK5WpOay1MLrr1mKTXV0F9ecLO6ieq2I9Xt/q', NULL, '2022-10-12 12:29:25', '2022-10-12 12:29:25'),
(103, 'Afzaal Ahmed', 'Afzal@gmail.com', NULL, '$2y$10$t0E5xraKsgg/iHOoYVkq8uxPpbkj.c4OFd96oR25gopX52TyW96Sm', NULL, '2022-10-12 12:32:11', '2022-10-12 12:32:11'),
(104, 'Abdul Samad', 'A.Samad@gmail.com', NULL, '$2y$10$g2yuCJz2ZgHtXTZW.Rw75eFQ744btdgO8kl49lTIP8/2PwoTC2qMC', NULL, '2022-10-12 12:42:08', '2022-10-12 12:42:08'),
(105, 'Ali Raza', 'Nawaz@gmail.com', NULL, '$2y$10$RWg9WaYbClOg..I/K1lRjuFtGS044Vvu4d7xSnz5USP9ywprrTEHi', NULL, '2022-10-12 12:46:55', '2022-10-12 12:46:55'),
(106, 'Kaleemullah', 'kaleem@gmail.com', NULL, '$2y$10$cTuDMpAvY7zf3sWlr4w90uXEz1inLS88B5cSQyhIJ92MACkGJ..Hm', NULL, '2022-10-12 12:50:27', '2022-10-12 12:50:27'),
(109, 'Hina', 'hini@gmail.com', NULL, '$2y$10$ZsNq.ZjhdRuQHBTWK/han./LGsJqLWrw3KxxUKiQn5RX.JPWpoy2S', NULL, '2022-10-12 12:54:54', '2022-10-12 12:54:54'),
(110, 'Amir Ali', 'Amir@gmail.com', NULL, '$2y$10$87QI4jz9n.PfI1yCTdZ00OcbwBhuNZz2QIAgDuoqn8InZSkpor8su', NULL, '2022-10-12 12:59:11', '2022-10-12 12:59:11'),
(111, 'Khush bhakht', 'khush@gmail.com', NULL, '$2y$10$hk4ENCaHu9P1Trqmr2TYsOcP7e0p1cy4RiTw5QFBKQs8QGz9OiwRK', NULL, '2022-10-12 13:02:12', '2022-10-12 13:02:12'),
(112, 'Kosar', 'Kosar@gmail.com', NULL, '$2y$10$7jCoa6UGJpFgptx4Zug.c.3VOaKzKTXdMi.mMhYNQXBluZbiE4/fe', NULL, '2022-10-12 13:07:11', '2022-10-12 13:07:11'),
(113, 'Sajjad Hussain', 'Sajjad@gmail.com', NULL, '$2y$10$5ILrBGLbVhMM9r6a/KY9U.Ls2XzWhkvq1QAhPxPZh4IL8NRJOdmQK', NULL, '2022-10-12 13:10:08', '2022-10-12 13:10:08'),
(114, 'Nazia Manzoor', 'Nazia@gmail.com', NULL, '$2y$10$MX8dR8VgxJgBg9F68vHQXuhPGbOMGUDy073Glm/RZv4r0a/DXes8C', NULL, '2022-10-12 13:12:41', '2022-10-12 13:12:41'),
(115, 'Sheeraz Ali', 'Sheeraz@gmail.com', NULL, '$2y$10$x2B0mqnQy8S0IbAn7T3XlO5DVsDA6zFB7P4c7bZORBwlhwmhi5XsK', NULL, '2022-10-12 13:15:24', '2022-10-12 13:15:24'),
(116, 'Maria Hassan', 'Maria@gmail.com', NULL, '$2y$10$hux5xtkbT/ZBB8eUD05vzu9xKAjWjAPsu5znx9D7kgOSJiVlF4iL6', NULL, '2022-10-12 13:17:40', '2022-10-12 13:17:40'),
(117, 'Arz Muhammad', 'Arz@gmail.com', NULL, '$2y$10$/bBJY/LZSYunEaULpUwxaePNIKz8FbBV6eFzyX8TvdMGZpa.bBK0C', NULL, '2022-10-12 13:20:57', '2022-10-12 13:20:57'),
(118, 'Farman', 'Farman@gmail.com', NULL, '$2y$10$2OaegU.45NV.plWP5Wj.E.R1RWYvzOhHEVF.tCccfDcsZQbXWGVXG', NULL, '2022-10-12 13:23:50', '2022-10-12 13:23:50'),
(119, 'Tufail Ahmed', 'Tufail@gmail.com', NULL, '$2y$10$R.pTGCeiwt7WEf0yatWIO.R2eArePj9BpERWED1fDVKE1F6trljZ.', NULL, '2022-10-12 13:26:44', '2022-10-12 13:26:44'),
(120, 'Hamid Ali', 'Hamid@gmail.com', NULL, '$2y$10$LxNY6gQMkaDFouqr2kbnQuoHSuSzGnxDLmbIZLhKMeYkI7hqEO2dG', NULL, '2022-10-12 13:30:02', '2022-10-12 13:30:02'),
(125, 'Zainab', 'Zainao@gmail.com', NULL, '$2y$10$th1nIQr8bsWLEHxqroEkm./qlbzk9Gy8LDsOnOt8mglcAiNSloc2y', NULL, '2022-10-12 13:34:52', '2022-10-12 13:34:52'),
(126, 'Zubair Ali', 'Zubair@gmail.com', NULL, '$2y$10$Z11bsoCcKrB7GzLM/XjB..h1Qf50M5gDljKKUiZ8xxFgWyuiCiyry', NULL, '2022-10-12 13:37:58', '2022-10-12 13:37:58'),
(127, 'Faisal Muneer', 'Faisi@gmail.com', NULL, '$2y$10$Y7KarXtGQ9jjKAJbPnOr.Oj9eYCOORPasqSa2qn.ygM/QJSQcTqNK', NULL, '2022-10-12 13:41:21', '2022-10-12 13:41:21'),
(128, 'Naved Ali', 'Naved@gmail.com', NULL, '$2y$10$o/53TYAIA26EvXoSkdCKWeHVXabnRSYPAO9hhvdK.P.C17DOy/.1K', NULL, '2022-10-12 13:43:38', '2022-10-12 13:43:38'),
(129, 'Aamir Ali', 'Aamir@gmail.com', NULL, '$2y$10$AUlt3dnV9Qo2.IfEeKMy4uLLGD8D1BsLVhgqAkMCc/qjLf6l/WaCC', NULL, '2022-10-12 13:46:15', '2022-10-12 13:46:15'),
(130, 'Shazeb', 'SHazeb@gmail.com', NULL, '$2y$10$rYmcCRTa54dd5aTz1/EKhefUxXkYPcHb1GnhgS4jUpaD.cbR0eoXy', NULL, '2022-10-12 13:48:51', '2022-10-12 13:48:51'),
(131, 'Abubakr', 'Abubakr@gmail.com', NULL, '$2y$10$LT.jMU25MvvXWGraOt.yjOsu8oKxGNjs9OMPylRFgj6kHwyP/D6XK', NULL, '2022-10-12 13:51:41', '2022-10-12 13:51:41'),
(132, 'Javeria Arif', 'Javeria@gmail.com', NULL, '$2y$10$2pZE3X4BPXFVBShOpelPwOJDqJdEjWnDVjgruTtskL6x.S3uGypCq', NULL, '2022-10-12 13:54:17', '2022-10-12 13:54:17'),
(134, 'Nida Parveen', 'Nida@gmail.com', NULL, '$2y$10$ErPfL88BuI/gj4jKH7FQwOwCAntdKT7CWR3.8yUWTdfIwn4BgTfUq', NULL, '2022-10-12 13:57:21', '2022-10-12 13:57:21'),
(137, 'Salar', 'Salar@gmail.com', NULL, '$2y$10$CXHPmoN9fGL1c8iEBtPH3OPL272GTJMquMwqqNpMGqzCv5adEvucG', NULL, '2022-10-12 14:01:40', '2022-10-12 14:01:40'),
(139, 'Shabana', 'shabana1@gmail.com', NULL, '$2y$10$zAJCSDkJxeJE8ncXyObtIuC2g1R35cWabnSKhmoy3STI3jWaBiOm6', NULL, '2022-10-12 14:04:12', '2022-10-14 07:14:46'),
(141, 'Shazaman', 'shazamank@gmail.com', NULL, '$2y$10$GPxpiQBvzggRE0ySBj8XjON.n5bGOILMqZ4KzP.S8wwIiOHxAE8vm', NULL, '2022-10-12 14:05:57', '2022-10-14 07:15:24'),
(143, 'Sufian', 'sufian1@gmail.com', NULL, '$2y$10$XiKpzHbeNoRZZmT7AkrV3eTS/jGtneCbKJtRYh76b/hb5sHOkW1Hi', NULL, '2022-10-12 14:08:07', '2022-10-14 07:14:12'),
(144, 'Dua', 'Duai@gmail.com', NULL, '$2y$10$apReDbD8IMr3vwZ0m2eVFO2PaHaitKrg9mTu1xr3U5H8UOFbVcz/e', NULL, '2022-10-12 14:10:03', '2022-10-12 14:10:03'),
(146, 'Mahpara', 'mahpara@gmail.com', NULL, '$2y$10$WQFp7HTGCSdqfu3XRy8iUexmYgnSjyIVxGTRPqGDDIKsVy7qX0.3i', NULL, '2022-10-12 14:12:05', '2022-10-12 14:12:05'),
(148, 'Naeem Ahmed', 'Naeem@gmail.com', NULL, '$2y$10$SAFjAwb/aw2l7UU29Q.uL.ERrQsi8UEgMI50PzPAHRnH3x.OVEAfO', NULL, '2022-10-12 14:15:12', '2022-10-12 14:15:12'),
(149, 'khalique', 'khalique@gmail.com', NULL, '$2y$10$6zWuq/VnbGNFLaZXFKt9o.pRUYKUOsK4sDh4cH4Ifo.v43GYb8ebm', NULL, '2022-10-12 14:15:36', '2022-10-12 14:15:36'),
(150, 'Mujeeb', 'mujeeb0@gmail.com', NULL, '$2y$10$H6sPjTsM7INq3PX6hVfbaO7QNxorAIU1D8GdO.T3.hof0kKKoSfWS', NULL, '2022-10-12 14:17:29', '2022-10-14 07:34:44'),
(151, 'Sumia Babi', 'Sumia@gmail.com', NULL, '$2y$10$y7cH4xaBYLLGbphQyYfv8uRhNHJ17rsTYveFx41PhphZzKXHZyNl.', NULL, '2022-10-12 14:17:52', '2022-10-12 14:17:52'),
(154, 'Adnan', 'adnan0@gmail.com', NULL, '$2y$10$DU6fETkTnvB1yR/HfmZSFeLduLbWCJv/kRwchzXrRHfLThs/pWEdy', NULL, '2022-10-12 14:46:34', '2022-10-14 07:37:02'),
(158, 'Ali Raza', 'raza22@gmail.com', NULL, '$2y$10$w4Jt2RSq/qTP6ScQWo07KOUxJ1WDLBwNbN3CAgp/NL9N3ayomLy0i', NULL, '2022-10-12 14:54:11', '2022-10-14 07:39:14'),
(160, 'Sir sadqat Rok', 'Sadqat@gmail.com', NULL, '$2y$10$/vZISsqroVrOpbrj93XUquNvQ/ZmDfFhxwJk.EylT.QiuL8nqr6fe', NULL, '2022-10-13 01:24:51', '2022-10-15 05:34:38'),
(161, 'Sir Irfan Memon', 'Irfan@gmail.com', NULL, '$2y$10$QAst/8nbyHKgoesKqfMX8OJHzVRfPIyk0Ixd0KQKPpv9x1tVkl3uW', NULL, '2022-10-13 01:26:05', '2022-10-13 01:26:05'),
(162, 'Sir Irfan Memon', 'Irfan@email.com', NULL, '$2y$10$DMg92iSh8WOJbip0WRMR4.R5n.1IBi3d25ZTug0mjxF43UVmOMQIa', NULL, '2022-10-13 01:31:45', '2022-10-13 01:31:45'),
(163, 'Sir badduraddin chachar', 'Badduraddin@email.com', NULL, '$2y$10$Yw1A8DdsgQiFh536J4UEBuVr2O1sD0vfgobZPfni8gTSgOzrvbZ0K', NULL, '2022-10-13 01:35:03', '2022-10-13 01:35:03'),
(164, 'Sir Muhammad Imran Mushtaque', 'Imranmushtaque@email.com', NULL, '$2y$10$hwefUPUHuQ9eysoXAJRHTenFuP2C3nSrzHefgqCL6mqwJM13s5dXS', NULL, '2022-10-13 01:36:29', '2022-10-13 01:36:29'),
(165, 'Sir kasif Arain', 'Kasifarain@email.com', NULL, '$2y$10$otd6Z.bMRYlB7PMaLinu5.Ofa.6MFqurv/KWEmxCYhF8tLi0aebCK', NULL, '2022-10-13 01:37:40', '2022-10-13 01:37:40'),
(166, 'Sir Naseer', 'Naseer@email.com', NULL, '$2y$10$LpwOWJg9VvjB9enIZTsdq.5rww861.J37QRAzBWg1f37RWQSYI76C', NULL, '2022-10-13 01:38:31', '2022-10-13 01:38:31'),
(167, 'Mam saima shoro', 'Saima@email.com', NULL, '$2y$10$aflMJUSSM0aFL9TIZDIP8uRbIZW./Yr7OCyD34rN9PnjD4Ac26PCm', NULL, '2022-10-13 01:39:28', '2022-10-13 01:39:28'),
(168, 'Sir Javed soomro', 'Javed@email.com', NULL, '$2y$10$currnbCQttGJccDLcvCFku8pYyJwQruzl9c3ERKDPvoDHZ9l4dZRO', NULL, '2022-10-13 01:40:34', '2022-10-13 01:40:34'),
(169, 'Sir Abuzar Bhumbhro', 'Abuzar@email.com', NULL, '$2y$10$3/tiCb27izFmM843WVVyvesw7F.6EJSuntlNsV/hV0f95dXnDflJ6', NULL, '2022-10-13 01:41:43', '2022-10-13 01:41:43'),
(170, 'Sir faiza Bhatto', 'Faiza@email.com', NULL, '$2y$10$wTQ9Ti/p03Vw4.xv/NzXeewFN5QeuiK/mA9CmbmZvL20GEfunIsdi', NULL, '2022-10-13 01:42:28', '2022-10-13 01:42:28'),
(171, 'Sir Allah Bux lakhan', 'Allahbux@email.com', NULL, '$2y$10$/cMA4B5SisghSutxeXVrS.T3V04Tr4zYKUgmJCtNvsGngCBdvgQiq', NULL, '2022-10-13 01:43:13', '2022-10-13 01:43:13'),
(172, 'Sir Nawaz seelro', 'Nawaz@email.com', NULL, '$2y$10$jPOiJ8Drm1Jz.7UYyANWcO/9l/k46iN0wlAfv3j1NJgP9vL/224ne', NULL, '2022-10-13 01:43:55', '2022-10-13 01:43:55'),
(173, 'Sir Imran Ali shah', 'Imran@email.com', NULL, '$2y$10$uXUHF9QsVwdpWae3AOTN6OJT35ADAx0HdrerVE8u783ia5Am04pBu', NULL, '2022-10-13 01:44:40', '2022-10-13 01:44:40'),
(174, 'Sir Meer Hasan Ghoto', 'Meer@email.com', NULL, '$2y$10$Cctmk1GjULZYWEda2y0QI.ncczCh/FMYSi/Aaru9qA04jK5p74ciS', NULL, '2022-10-13 01:45:35', '2022-10-13 01:45:35'),
(175, 'Sir Abdul Basit', 'Abdulbasit@email.com', NULL, '$2y$10$FTtpIaJEEE7EFSRyp9hlqOjkGW5cVX.3Lfa7M6j9sdMSS1scd/tQi', NULL, '2022-10-13 01:48:38', '2022-10-13 01:48:38'),
(176, 'Mam Nadia Memon', 'Nadia@email.com', NULL, '$2y$10$xQRr.1l05qO39ubiMKxfIuUil2PZ6TOi36/AJh8LLA/h2aHqulcSi', NULL, '2022-10-13 01:49:12', '2022-10-13 01:49:12'),
(177, 'Sir Mushaid Hussian shah', 'Mushahid@email.com', NULL, '$2y$10$jGgapoDRBYnWL6J5FbpTnedhwvGfbosqWVKQ7BgMg3dqTzZNy4KCi', NULL, '2022-10-13 01:50:08', '2022-10-13 01:50:08'),
(178, 'Sir Ghulam Abbas', 'Abbas@email.com', NULL, '$2y$10$QG.FyqW8cL60DToHbgtflOE.TOTLxQCbj3to/bcO/vU/YqRCJGzEy', NULL, '2022-10-13 01:51:01', '2022-10-13 01:51:01'),
(179, 'Sir Najeebullah Baloch', 'Najeebullah@email.com', NULL, '$2y$10$WwXzsNuCyc8p1T42sA4uVuOhXXYplewMk8tIkE6Qi3f4OxqkbYBz2', NULL, '2022-10-13 01:51:47', '2022-10-13 01:51:47'),
(180, 'Sir Abrahim shaikh', 'Abrahim@email.com', NULL, '$2y$10$lYuPTmCwITx3GvUYMqjQ3u/FLGvbN//.p82ABXYslm6nxprWP1ZcO', NULL, '2022-10-13 01:52:52', '2022-10-13 01:52:52'),
(181, 'Sir Ghulam Muhammad chachar', 'Gm@email.com', NULL, '$2y$10$IIY4Tdq/aOcCCKvH55fXX.wuvBFU0sTDUGQqHCeQSM.QWZsu5RWU2', NULL, '2022-10-13 01:54:00', '2022-10-13 01:54:00'),
(182, 'Sir khuda dino Gopang', 'Kd@email.com', NULL, '$2y$10$MPzthR0sNKYwsvwzyo7MHuXfQUw.tAbMJA8PrYWbl6HTOO.KVGbdu', NULL, '2022-10-13 01:54:38', '2022-10-13 01:54:38'),
(183, 'Sir sajjad', 'Sajjad@email.com', NULL, '$2y$10$lS6slRUVXGtWrLyx393yU.ygpM7tuimjFloia2yloVcEZTkiIHgnO', NULL, '2022-10-13 01:55:21', '2022-10-13 01:55:21'),
(184, 'Mam takhleeq Maria', 'TakhleeqMaria@email.com', NULL, '$2y$10$ah21tX4PrTZkxBy53WHXKePLF8L8VbPI5addnefNel3IHhc5cP36W', NULL, '2022-10-13 01:56:21', '2022-10-13 01:56:21'),
(186, 'Talha Mubeen', 'talhamubeen@gmail.com', NULL, '$2y$10$arW4wkKGx7xVpklrNC/b2OlwyxRZfBXtpHecP16dT19p7JnJUaMbK', NULL, '2022-10-14 07:17:51', '2022-10-14 07:17:51'),
(187, 'Umair Ali', 'Umair1@gmail.com', NULL, '$2y$10$cv9RNT03yXQN9nQPWGRmYOS7TtVwvhqYvqTJ10MOPzXB9GkzeToVS', NULL, '2022-10-14 07:46:44', '2022-10-14 07:46:44'),
(188, 'Adnan', 'maqsood1@gmail.com', NULL, '$2y$10$MTDIgDLUkijg.EfW3rQ9cecb7hdJjvAL9/aXIVBlvQyCVROWS2eQy', NULL, '2022-10-14 08:04:00', '2022-10-14 08:04:00'),
(189, 'Anas', 'Anas@gmail.com', NULL, '$2y$10$wI/CwuRb1cqmqWlPSrUPBetJep0cLn8IIyep80qGs8StgM3LhW.ze', NULL, '2022-10-14 13:06:43', '2022-10-14 13:06:43');


INSERT INTO `batches` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2019', '2022-10-12 06:04:52', '2022-10-12 06:04:52'),
(2, '2020', '2022-10-12 06:05:18', '2022-10-12 06:05:18'),
(3, '2021', '2022-10-12 06:05:32', '2022-10-12 06:05:32'),
(4, '2022', '2022-10-12 06:05:44', '2022-10-12 06:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Computer Science', '2022-10-10 17:17:23', '2022-10-10 17:17:23'),
(2, 'BBA', '2022-10-12 06:05:58', '2022-10-12 06:05:58'),
(3, 'english', '2022-10-12 08:11:49', '2022-10-12 08:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--


-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--


--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_22_131930_create_batches_table', 1),
(6, '2022_04_22_131949_create_departments_table', 1),
(7, '2022_04_22_132010_create_teachers_table', 1),
(8, '2022_04_22_132044_create_students_table', 1),
(9, '2022_04_22_132059_create_subjects_table', 1),
(10, '2022_04_22_132132_create_teacher_subjects_table', 1),
(11, '2022_04_22_132157_create_subject_marks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `students`
--


--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `department_id`, `batch_id`, `father_name`, `surname`, `religion`, `gender`, `nationality`, `roll_no`, `residential_address`, `cnic_no`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 'A HMED DIN SOOMR', 'soomr', 'islam', 'male', 'pakistani', 'GC19-BBA-01', 'mohalla kami', '4510267432638', '2022-10-12 06:10:16', '2022-10-12 06:10:16'),
(3, 5, 2, 1, 'abid hussain', 'soomr', 'islam', 'male', 'pakistani', 'GC19-BBA-03', 'mohalla delawar', '4510272362783', '2022-10-12 06:15:47', '2022-10-14 07:59:54'),
(4, 6, 2, 1, 'mumtaz ali', 'soomro', 'islam', 'male', 'pakistani', 'GC19-BBA-04', 'mohalaqadar', '45102763731', '2022-10-12 06:19:00', '2022-10-14 08:00:22'),
(5, 7, 2, 1, 'abdul wahab', 'kalwar', 'islam', 'male', 'pakistani', 'GC19-BBA-05', 'mohallashamsha bad', '451026666741', '2022-10-12 06:22:50', '2022-10-14 08:00:41'),
(6, 8, 2, 1, 'niaz muhammad', 'abro', 'islam', 'male', 'pakistani', 'GC19-BBA-06', 'mohalla haseja mahar', '54102875754', '2022-10-12 06:26:12', '2022-10-14 08:01:15'),
(7, 9, 2, 1, 'abdul razaque', 'lakhan', 'islam', 'male', 'pakistani', 'GC19-BBA-07', 'haseja mahar', '54102762582', '2022-10-12 06:30:03', '2022-10-12 06:30:03'),
(8, 10, 2, 1, 'm adial', 'kalwar', 'islam', 'male', 'pakistani', 'GC19-BBA-08', 'mohalla haseja mahr', '4510276735231', '2022-10-12 06:33:55', '2022-10-14 08:01:55'),
(9, 11, 2, 1, 'gulam akbar', 'kalwar', 'islam', 'male', 'pakistani', 'GC19-BBA-09', 'mohalla gulam abas', '4510276527767', '2022-10-12 06:36:21', '2022-10-14 08:03:33'),
(15, 17, 2, 4, 'qurban ali', 'soomro', 'islam', 'male', 'pakistani', 'GC22-BBA-05', 'muhalla niyamat bad', '451026555272', '2022-10-12 06:53:33', '2022-10-14 07:48:11'),
(17, 19, 2, 4, 'ali', 'kalwar', 'islam', 'male', 'pakistani', 'GC22-BBA-07', 'hussaina bad', '54102626562', '2022-10-12 06:57:28', '2022-10-14 07:48:51'),
(22, 24, 2, 3, 'abdullah', 'mahar', 'islam', 'male', 'pakistani', 'GC21-BBA-02', 'hasejamahar', '45102755428786', '2022-10-12 07:10:18', '2022-10-14 07:52:37'),
(23, 25, 2, 4, 'husaain', 'kalwar', 'islam', 'male', 'pakistani', 'GC21-BBA-03', 'haseeja mahar', '4510263673572', '2022-10-12 07:12:50', '2022-10-14 07:53:01'),
(24, 26, 2, 3, 'Akhtiar Ahmed', 'kalwar', 'islam', 'male', 'pakistani', 'CG21-BBA-04', 'muhalla kayam', '451027635780', '2022-10-12 08:17:02', '2022-10-14 07:08:50'),
(25, 27, 2, 3, 'arz muhammad', 'mahar', 'islam', 'male', 'pakistani', 'GC21-BBA-05', 'muhalla kayam', '4510273457278', '2022-10-12 08:20:29', '2022-10-14 07:53:30'),
(26, 28, 2, 3, 'asadulah', 'kalwar', 'islam', 'male', 'pakistani', 'GC21-BBA-06', 'muhalla yari nagar', '45102763764', '2022-10-12 08:22:55', '2022-10-14 07:53:56'),
(28, 30, 2, 3, 'ahmed', 'lakho', 'islam', 'male', 'pakistani', 'GC21-BBA-08', 'jakmadab', '451026654788', '2022-10-12 08:26:43', '2022-10-14 07:54:30'),
(30, 32, 2, 3, 'muhammad ali', 'kalwar', 'islam', 'male', 'pakistani', 'GC21-BBA-10', 'muhalla kayam', '454146756443', '2022-10-12 08:30:40', '2022-10-14 07:54:58'),
(32, 34, 2, 2, 'hatiz jabir', 'kalhoro', 'islam', 'male', 'pakistani', 'GC20-BBA-03', 'faz nagar', '4510277456788', '2022-10-12 08:36:29', '2022-10-14 07:55:53'),
(33, 35, 2, 2, 'ali nawaz', 'maher', 'islam', 'male', 'pakistani', 'GC20-BBA-04', 'muhalla yari nagar', '4510273426581', '2022-10-12 08:41:14', '2022-10-14 07:57:56'),
(34, 36, 2, 2, 'gul hassan', 'abro', 'islam', 'male', 'pakistani', 'GC20-BBA-05', 'jakmadab', '451027857867', '2022-10-12 08:43:52', '2022-10-14 07:58:27'),
(38, 40, 2, 2, 'allan dad', 'mahar', 'islam', 'male', 'pakistani', 'GC20-BBA-10', 'jakmadab', '45102736563', '2022-10-12 08:56:38', '2022-10-12 08:56:38'),
(39, 41, 1, 1, 'Abdul Majeed', 'Malik', 'Islam', 'male', 'Pakistani', 'GC19-BSCS-01', 'Mehran Colony Ghotki', '45102-5673421-8', '2022-10-12 09:56:05', '2022-10-12 09:56:05'),
(40, 42, 1, 1, 'Siraj ul Haq', 'Gadani', 'Islam', 'male', 'Pakistani', 'GC19-BSCS-02', 'Kalama Choke Ghotki', '45102-8769043-6', '2022-10-12 10:01:02', '2022-10-12 10:01:02'),
(41, 43, 1, 1, 'Dilawar', 'Mahar', 'Islam', 'male', 'Pakistani', 'GC19-BSCS-07', 'Maripur Mathelo', '45102-5248900-3', '2022-10-12 10:04:25', '2022-10-12 10:04:25'),
(42, 44, 1, 1, 'Qutubuddin', 'Mahar', 'Islam', 'female', 'Pakistani', 'GC19-BSCS-04', 'Lakhan Colony Ghotki', '45102-9976334-1', '2022-10-12 10:08:32', '2022-10-12 10:08:32'),
(43, 45, 1, 1, 'Farooque Ali', 'Kalwar', 'Islam', 'female', 'Pakistani', 'GC19-BSCS-10', 'Ghotta Market Ghotki', '45102-8342190-5', '2022-10-12 10:12:36', '2022-10-12 10:12:36'),
(44, 46, 1, 1, 'Ghulam Sarwar', 'Rajput', 'Islam', 'female', 'Pakistani', 'GC19-BSCS-20', 'Bismillah Bakery ghotki', '45102-2135489-3', '2022-10-12 10:17:20', '2022-10-15 05:32:32'),
(45, 47, 1, 1, 'Eijaz Ali', 'Kalwar', 'Islam', 'male', 'Pakistani', 'GC19-BSCS-16', 'kanpur Mahar', '45102-4476582-1', '2022-10-12 10:21:20', '2022-10-12 10:21:20'),
(47, 49, 1, 1, 'Saleem Ahmed', 'Malik', 'Islam', 'female', 'Pakistani', 'GC19-BSCS-24', 'Anwarabad Ghotki', '45102-4155355-8', '2022-10-12 10:30:07', '2022-10-12 10:30:07'),
(48, 50, 1, 1, 'Sabir Ali', 'Kalwar', 'Islam', 'male', 'Pakistani', 'GC19-BSCS-26', 'Rehmowali', '45102-1334461-7', '2022-10-12 10:33:31', '2022-10-12 10:33:31'),
(49, 51, 1, 2, 'Ali Anwar', 'Chachar', 'Islam', 'male', 'Pakistani', 'GC20-BSCS-06', 'Bhatti Nagar Ghotki', '45102-4790055-8', '2022-10-12 10:40:53', '2022-10-12 10:40:53'),
(50, 52, 1, 2, 'Abdul Rauf', 'Channa', 'Islam', 'male', 'Pakistani', 'GC20-BSCS-01', 'Shanti Nagar', '45102-8889999-3', '2022-10-12 10:44:35', '2022-10-12 10:44:35'),
(51, 53, 1, 4, 'mumtaz', 'kalhoro', 'islam', 'male', 'pakistani', 'GC22-BCSC-01', 'muhalla yari nagar', '451027495667', '2022-10-12 10:53:13', '2022-10-12 10:53:13'),
(52, 54, 1, 2, 'Abdul Latif', 'Arain', 'Islam', 'female', 'Pakistani', 'GC20-BSCS-15', 'Taghar Colony Ghotki', '45102-2345671-2', '2022-10-12 10:54:07', '2022-10-12 10:54:07'),
(54, 56, 1, 2, 'Altaf Hussain Shahzad', 'Arain', 'Islam', 'female', 'Pakistani', 'GC20-BSCS-18', 'Benazir Colony Ghotki', '45102-3555766-5', '2022-10-12 10:58:15', '2022-10-12 10:58:15'),
(55, 57, 1, 4, 'shahzad', 'mahar', 'islam', 'male', 'pakistani', 'GC22-BCSC-03', 'latifabad', '4510285868435', '2022-10-12 10:58:26', '2022-10-12 10:58:26'),
(57, 59, 1, 2, 'Laiqat Ali', 'Mirani', 'Islam', 'male', 'Pakistani', 'GC20-BSCS-30', 'Odhar Wali Ghotki', '45102-7888544-6', '2022-10-12 11:01:24', '2022-10-12 11:01:24'),
(60, 62, 1, 2, 'Muhammad Hanif', 'Arain', 'Islam', 'female', 'Pakistani', 'GC20-BSCS-34', 'Purani Mandhi Ghotki', '45102-4466723-4', '2022-10-12 11:04:22', '2022-10-12 11:04:22'),
(64, 66, 1, 2, 'Muhammad Haneef', 'Kalwar', 'Islam', 'male', 'Pakistani', 'GC20-BSCS-26', 'Mohalla Mehbob Ali Ghotki', '45102-6677559-0', '2022-10-12 11:10:13', '2022-10-12 11:10:13'),
(66, 68, 1, 2, 'Allah Jeewayou', 'Magsi', 'Islam', 'male', 'Pakistani', 'GC20-BSCS-23', 'Ladies Market Ghotki', '45102-2348955-7', '2022-10-12 11:13:58', '2022-10-12 11:13:58'),
(68, 70, 1, 2, 'abdul hakeem', 'bhutto', 'islam', 'male', 'pakistani', 'GC20-BSCS-02', 'muhalla kayam', '45103585468454', '2022-10-12 11:17:01', '2022-10-12 11:17:01'),
(69, 71, 1, 2, 'Rabnwaz', 'Korai', 'Islam', 'female', 'Pakistani', 'GC20-BSCS-33', 'Benazir Colony', '45102-2134568-9', '2022-10-12 11:17:50', '2022-10-12 11:17:50'),
(70, 72, 1, 2, 'hassan', 'gadani', 'islam', 'male', 'pakistani', 'GC20-BSCS-03', 'muhalla yari nagar', '451023684958', '2022-10-12 11:18:51', '2022-10-12 11:18:51'),
(72, 74, 1, 2, 'Abdul Haleem', 'Soomro', 'Islam', 'female', 'Pakistani', 'GC20-BSCS-41', 'Mohalla fakhuruddin shah', '45102-3311007-9', '2022-10-12 11:21:55', '2022-10-12 11:21:55'),
(73, 75, 1, 3, 'Nizam -U-Din', 'Gadani', 'Islam', 'male', 'Pakistani', 'GC21-BSCS-001', 'Ghotta Market Ghotki', '45102-6534219-2', '2022-10-12 11:26:51', '2022-10-12 11:26:51'),
(75, 77, 1, 2, 'ihsan ali', 'kalwar', 'islam', 'male', 'pakistani', 'GC20BSCS-07', 'latifabad', '54158942547216', '2022-10-12 11:29:58', '2022-10-12 11:29:58'),
(76, 78, 1, 3, 'Javed Ali', 'Shah', 'Islam', 'male', 'Pakistani', 'GC21-BSCS-005', 'ladies market Ghotki', '45102-5281931-9', '2022-10-12 11:31:08', '2022-10-12 11:31:08'),
(78, 80, 1, 3, 'Muhammad Jameel', 'Gadani', 'Islam', 'female', 'Pakistani', 'GC21-BSCS-008', 'Anwarabad Ghotki', '45102-8899743-6', '2022-10-12 11:33:29', '2022-10-12 11:33:29'),
(80, 82, 1, 3, 'Iftikhar Ahmed', 'Kolachi', 'Islam', 'female', 'Pakistani', 'GC21-BSCS-012', 'Kalama Choke Ghotki', '45102-5265581-7', '2022-10-12 11:36:43', '2022-10-12 11:36:43'),
(81, 83, 1, 2, 'ariq rajput', 'rajput', 'islam', 'male', 'pakistani', 'GC20BSCS-10', 'jakmadab', '4510236549484', '2022-10-12 11:37:09', '2022-10-12 11:37:09'),
(88, 90, 1, 1, 'Sanaullah', 'soomro', 'islam', 'male', 'pakistani', 'GC19-BSCS-05', 'muhalla kayam', '45102695641', '2022-10-12 11:49:36', '2022-10-14 13:07:42'),
(89, 91, 1, 3, 'Zahid Hussain', 'Shaikh', 'Islam', 'male', 'Pakistani', 'GC21-BSCS-010', 'Aregasion Colony Ghotki', '45102-6678953-1', '2022-10-12 11:50:56', '2022-10-12 11:50:56'),
(90, 92, 1, 3, 'Shamasuddin', 'Shah', 'Islam', 'male', 'Pakistani', 'GC21-BSCS-011', 'Aregasion Colony Ghotki', '45102-4365781-2', '2022-10-12 11:54:08', '2022-10-12 11:54:08'),
(92, 94, 1, 4, 'Abdul Rasheed', 'Rajput', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-05', 'odharwali Ghotki', '45102-8343190-5', '2022-10-12 12:01:09', '2022-10-12 12:01:09'),
(93, 95, 1, 4, 'Abdul Razak', 'Ghoto', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-10', 'Near Public school Ghotki', '45102-4759825-5', '2022-10-12 12:05:27', '2022-10-12 12:05:27'),
(94, 96, 1, 4, 'Laiquat Ali', 'Merani', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-15', 'Kalama Choke', '45102-9765198-9', '2022-10-12 12:08:10', '2022-10-12 12:08:10'),
(95, 97, 1, 4, 'Arshad Mahmood', 'seehar', 'Islam', 'female', 'Pakistani', 'GC22-BSCS-16', 'sarkaribag Ghotki', '45102-9711226-1', '2022-10-12 12:13:12', '2022-10-12 12:13:12'),
(96, 98, 1, 4, 'Gulzar Ahmed', 'Soomro', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-18', 'Ammara school ghotki', '45102-9876456-5', '2022-10-12 12:17:20', '2022-10-12 12:17:20'),
(97, 99, 1, 4, 'Gul Meer', 'Malik', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-12', 'purani sabzi mandi', '45102-9768123-2', '2022-10-12 12:20:27', '2022-10-12 12:20:27'),
(98, 100, 1, 4, 'Muhammad Aslam', 'Malik', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-20', 'railway station ghotki', '45102-4457595-5', '2022-10-12 12:24:07', '2022-10-12 12:24:07'),
(99, 101, 1, 4, 'Manzoor Ahmed', 'kolachi', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-21', 'purani sabzi mandi', '45102-2050480-3', '2022-10-12 12:27:10', '2022-10-12 12:27:10'),
(100, 102, 1, 4, 'Muhammad saddique', 'Mahar', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-13', 'Ammara school ghotki', '45102-1237934-1', '2022-10-12 12:29:25', '2022-10-12 12:29:25'),
(101, 103, 1, 4, 'Imam uddin', 'Kalwar', 'Islam', 'male', 'Pakistani', 'GC22-BSCS-08', 'Bismillah Bakery ghotki', '45102-5277891-1', '2022-10-12 12:32:11', '2022-10-12 12:32:11'),
(102, 104, 2, 2, 'Gul Hassan', 'kolachi', 'Islam', 'male', 'Pakistani', 'GC20-BBA-02', 'shamshahbad ghotki', '45102-6667778-9', '2022-10-12 12:42:08', '2022-10-12 12:42:08'),
(103, 105, 2, 2, 'Ali Nawaz', 'Mahar', 'Islam', 'male', 'Pakistani', 'GC20-BBA-06', 'Chandrou Ram Colony', '45102-5985436-1', '2022-10-12 12:46:55', '2022-10-12 12:46:55'),
(104, 106, 2, 2, 'Allah Dad', 'Malik', 'Islam', 'male', 'Pakistani', 'GC20-BBA-17', 'New bus stand ghotki', '45102-8341111-1', '2022-10-12 12:50:27', '2022-10-12 12:50:27'),
(107, 109, 2, 2, 'Zahoor Ahmed', 'Chachar', 'Islam', 'female', 'Pakistani', 'GC20-BBA-14', 'anwarabad ghotki', '45102-8448744-9', '2022-10-12 12:54:54', '2022-10-12 12:54:54'),
(108, 110, 2, 2, 'Gul Hassan', 'Abro', 'Islam', 'male', 'Pakistani', 'GC20-BBA-08', 'aregassion colony', '45102-6000500-1', '2022-10-12 12:59:11', '2022-10-12 12:59:11'),
(109, 111, 2, 2, 'Laiquat Ali', 'Bhutto', 'Islam', 'female', 'Pakistani', 'GC20-BBA-19', 'New bus stand ghotki', '45102-5400059-0', '2022-10-12 13:02:12', '2022-10-12 13:02:12'),
(110, 112, 2, 2, 'Muhammad Yousif', 'Chachar', 'Islam', 'female', 'Pakistani', 'GC20-BBA-20', 'aadalpur', '45102-8311140-5', '2022-10-12 13:07:11', '2022-10-12 13:07:11'),
(111, 113, 2, 2, 'Wahid bux', 'khuharo', 'Islam', 'male', 'Pakistani', 'GC20-BBA-34', 'peer ghot', '45102-4121318-9', '2022-10-12 13:10:08', '2022-10-12 13:10:08'),
(112, 114, 2, 2, 'Manzoor Ahmed', 'Mahar', 'Islam', 'female', 'Pakistani', 'GC20-BBA-31', 'Ammara school ghotki', '45102-4788888-8', '2022-10-12 13:12:41', '2022-10-12 13:12:41'),
(113, 115, 2, 2, 'Meer Hazar', 'Arbani', 'Islam', 'male', 'Pakistani', 'GC20-BBA-35', 'Tando allahyar', '45102-8654896-1', '2022-10-12 13:15:24', '2022-10-12 13:15:24'),
(114, 116, 2, 2, 'Manzoor Ahmed', 'Soomro', 'Islam', 'female', 'Pakistani', 'GC20-BBA-23', 'mehran colony', '45102-5600053-8', '2022-10-12 13:17:40', '2022-10-12 13:17:40'),
(115, 117, 2, 3, 'waqar Hussain', 'Malik', 'Islam', 'male', 'Pakistani', 'GC21-BBA-07', 'mohallah mehbob ali shah', '45102-524777-7', '2022-10-12 13:20:57', '2022-10-12 13:20:57'),
(116, 118, 2, 3, 'Dhani bux', 'Arain', 'Islam', 'male', 'Pakistani', 'GC21-BBA-11', 'peer ghot', '45102-5300900-3', '2022-10-12 13:23:50', '2022-10-12 13:23:50'),
(117, 119, 2, 3, 'Shamasul Hassan', 'Chachar', 'Islam', 'male', 'Pakistani', 'GC21-BBA-28', 'maripur mathelo', '45102-524777-1', '2022-10-12 13:26:44', '2022-10-12 13:26:44'),
(118, 120, 2, 3, 'Mumtaz Ali', 'kolachi', 'Islam', 'male', 'Pakistani', 'GC21-BBA-13', 'qadarpur', '45102-5233331-7', '2022-10-12 13:30:02', '2022-10-12 13:30:02'),
(122, 125, 2, 3, 'Abdul salam', 'mugal', 'Islam', 'female', 'Pakistani', 'GC21-BBA-33', 'khanpur Mahar', '45102-4155540-5', '2022-10-12 13:34:52', '2022-10-12 13:34:52'),
(123, 126, 2, 3, 'Zulfiqar Ali', 'Shah', 'Islam', 'male', 'Pakistani', 'GC21-BBA-36', 'Benazir Colony', '45102-4666666-8', '2022-10-12 13:37:58', '2022-10-12 13:37:58'),
(124, 127, 2, 3, 'Muneer Ahmed', 'Mahar', 'Islam', 'male', 'Pakistani', 'GC21-BBA-09', 'maripur mathelo', '45102-6050893-1', '2022-10-12 13:41:21', '2022-10-12 13:41:21'),
(125, 128, 2, 3, 'Rehmat Ali', 'Mughal', 'Islam', 'male', 'Pakistani', 'GC21-BBA-20', 'purani sabzi mandi', '45102-4366577-9', '2022-10-12 13:43:38', '2022-10-12 13:43:38'),
(126, 129, 2, 3, 'Mohammad Waris', 'Chachar', 'Islam', 'male', 'Pakistani', 'GC21-BBA-38', 'Qazi Badal', '45102-8377890-1', '2022-10-12 13:46:15', '2022-10-12 13:46:15'),
(127, 130, 2, 3, 'Roshan ali', 'Kalwar', 'Islam', 'male', 'Pakistani', 'GC21-BBA-24', 'salhey Mahar', '45102-5233700-0', '2022-10-12 13:48:51', '2022-10-12 13:48:51'),
(128, 131, 2, 4, 'Hafiz Muhammad Bux', 'Arain', 'Islam', 'male', 'Pakistani', 'GC22-BBA-02', 'salhey mahar', '45102-6000773-1', '2022-10-12 13:51:41', '2022-10-12 13:51:41'),
(129, 132, 2, 4, 'Muhammad Arif', 'Arain', 'Islam', 'female', 'Pakistani', 'GC22-BBA-12', 'Ali mahar', '45102-8310027-1', '2022-10-12 13:54:17', '2022-10-12 13:54:17'),
(131, 134, 2, 4, 'Dilshad Ahmed', 'Arain', 'Islam', 'female', 'Pakistani', 'GC22-BBA-24', 'sarhad', '45102-8333337-8', '2022-10-12 13:57:21', '2022-10-12 13:57:21'),
(134, 137, 2, 4, 'Ali Nawaz', 'Soomro', 'Islam', 'male', 'Pakistani', 'GC22-BBA-27', 'ammara school', '45102-6677909-3', '2022-10-12 14:01:40', '2022-10-12 14:01:40'),
(136, 139, 1, 1, 'Shahzado', 'kalwar', 'islam', 'female', 'pakistani', 'GC19-BSCS-11', 'chaglani', '451029884554', '2022-10-12 14:04:12', '2022-10-14 07:14:46'),
(138, 141, 1, 1, 'Asif ali', 'pathan', 'islam', 'male', 'pakistani', 'GC19-BSCS-12', 'ladies markit', '4510269785611', '2022-10-12 14:05:57', '2022-10-14 07:15:24'),
(140, 143, 1, 1, 'Fatah', 'soomro', 'islam', 'male', 'pakistani', 'GC19-BSCS-13', 'asgar shah park', '4510269845960', '2022-10-12 14:08:07', '2022-10-14 07:14:12'),
(141, 144, 2, 4, 'Safdar Ali', 'Malik', 'Islam', 'female', 'Pakistani', 'GC22-BBA-06', 'geemrou', '45102-5873299-8', '2022-10-12 14:10:03', '2022-10-12 14:10:03'),
(143, 146, 2, 4, 'Amanullah', 'Chachar', 'Islam', 'female', 'Pakistani', 'GC22-BBA-16', 'hussain bali', '45102-4755441-5', '2022-10-12 14:12:05', '2022-10-12 14:12:05'),
(145, 148, 2, 4, 'Khair Muhammad', 'Memon', 'Islam', 'male', 'Pakistani', 'GC22-BBA-22', 'shohabdar khawar', '45102-6888885-1', '2022-10-12 14:15:12', '2022-10-12 14:15:12'),
(146, 149, 1, 3, 'akram', 'dino', 'islam', 'male', 'pakistani', 'GC21-BSCS-02', 'moro', '451029745255', '2022-10-12 14:15:36', '2022-10-12 14:15:36'),
(147, 150, 1, 3, 'javed', 'soomro', 'islam', 'male', 'pakistani', 'GC21-BSCS-03', 'kadarpur', '45102694594', '2022-10-12 14:17:29', '2022-10-14 07:34:44'),
(148, 151, 2, 4, 'Muhammad Ishaque', 'Kalwar', 'Islam', 'female', 'Pakistani', 'GC22-BBA-31', 'Rees ibharim Chachar', '45102-8999999-5', '2022-10-12 14:17:52', '2022-10-12 14:17:52'),
(151, 154, 1, 3, 'abdul rasheed', 'kalwar', 'islam', 'male', 'pakistani', 'GC21-BSCS-06', 'sukkur', '451029854655', '2022-10-12 14:46:34', '2022-10-14 07:37:02'),
(155, 158, 1, 3, 'shamasuddin', 'shah', 'islam', 'male', 'pakistani', 'GC21-BSCS-09', 'shantinagar', '451023697856', '2022-10-12 14:54:11', '2022-10-14 07:39:14'),
(158, 186, 1, 1, 'Abdul Mubeen', 'Rajput', 'islam', 'male', 'pakistani', 'GC19-BSCS15', 'mohalla laifabad', '45109726557', '2022-10-14 07:17:51', '2022-10-14 07:17:51'),
(159, 187, 2, 4, 'Muhammad Amin', 'Malik', 'Islam', 'male', 'Pakistani', 'GC22-BBA-33', 'Dahri', '45102-4111115-6', '2022-10-14 07:46:44', '2022-10-14 07:46:44'),
(160, 188, 2, 1, 'gulam akbar', 'kalwar', 'islam', 'male', 'pakistani', 'GC19-BBA-09', 'mohalla gulam abas', '451027652776', '2022-10-14 08:04:00', '2022-10-14 08:04:00'),
(161, 189, 1, 1, 'Sanaullah', 'chana', 'islam', 'male', 'pakistani', 'GC19-BSCS-08', 'shantinagar', '451023694584', '2022-10-14 13:06:43', '2022-10-14 13:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--



--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `semester`, `subject_type`, `credit_hours`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 'Discrete structures', '2', 'theory', '0.3', 1, '2022-10-12 06:37:17', '2022-10-12 06:37:17'),
(2, 'object orineted progrmaing', '2', 'theory', '3.1', 1, '2022-10-12 06:40:35', '2022-10-12 06:40:35'),
(3, 'Pakistan studies', '2', 'theory', '3.0', 1, '2022-10-12 06:41:27', '2022-10-12 06:41:27'),
(4, 'Basic electronics', '2', 'theory', '3.0', 1, '2022-10-12 06:42:25', '2022-10-12 06:42:25'),
(5, 'Calcules& Analytical Geometry', '2', 'theory', '3.0', 1, '2022-10-12 06:44:26', '2022-10-14 13:02:41'),
(6, 'technical &report writing', '2', 'theory', '3.0', 1, '2022-10-12 06:45:48', '2022-10-12 06:45:48'),
(7, 'Computer Communication &', '4', 'theory', '3.0', 1, '2022-10-12 06:47:45', '2022-10-14 13:04:48'),
(8, 'operating Systems', '4', 'theory', '3.1', 1, '2022-10-12 06:50:26', '2022-10-12 06:50:26'),
(9, 'information Systems', '4', 'theory', '3.0', 1, '2022-10-12 06:51:27', '2022-10-12 06:51:27'),
(10, 'database Systems', '4', 'theory', '3.0', 1, '2022-10-12 06:53:18', '2022-10-12 06:53:18'),
(11, 'differential Equations', '4', 'theory', '3.0', 1, '2022-10-12 06:55:12', '2022-10-12 06:55:12'),
(12, 'probability & Statistics', '4', 'theory', '3.0', 1, '2022-10-12 06:56:04', '2022-10-12 06:56:04'),
(13, 'Compiler Construction', '6', 'theory', '3.0', 1, '2022-10-12 06:57:08', '2022-10-14 13:04:09'),
(14, 'design & Analysis Of Algorithms', '6', 'theory', '3.0', 1, '2022-10-12 06:58:18', '2022-10-12 06:58:18'),
(15, 'Computer Architecture', '6', 'theory', '3.0', 1, '2022-10-12 06:59:26', '2022-10-14 13:04:27'),
(16, 'Assembly Language', '6', 'theory', '3.0', 1, '2022-10-12 07:01:01', '2022-10-13 05:27:17'),
(17, 'human Computer Interaction', '6', 'theory', '3.0', 1, '2022-10-12 07:01:46', '2022-10-12 07:01:46'),
(18, 'fYP II', '8', 'practical', '3.0', 1, '2022-10-12 07:03:28', '2022-10-12 07:03:28'),
(19, 'digitial Image Processing', '8', 'theory', '3.0', 1, '2022-10-12 07:04:56', '2022-10-12 07:04:56'),
(20, 'web service', '8', 'theory', '3.0', 1, '2022-10-12 07:05:38', '2022-10-12 07:05:38'),
(21, 'Communication Systems &', '8', 'theory', '3.0', 1, '2022-10-12 07:06:41', '2022-10-14 13:03:43'),
(22, 'Morphology and Syntax', '2', 'theory', '3.0', 3, '2022-10-12 08:12:28', '2022-10-12 08:12:28'),
(23, 'literary Forms and Movements', '2', 'theory', '3.0', 3, '2022-10-12 08:13:38', '2022-10-12 08:13:38'),
(24, 'pakistan studies', '2', 'theory', '3.0', 3, '2022-10-12 08:14:27', '2022-10-12 08:14:27'),
(25, 'socialagy', '2', 'theory', '3.0', 3, '2022-10-12 08:16:31', '2022-10-12 08:16:31'),
(26, 'Islamic History & Culture', '2', 'theory', '3.0', 3, '2022-10-12 08:17:55', '2022-10-12 08:17:55'),
(27, 'english II: Composition Writing', '2', 'theory', '3.0', 3, '2022-10-12 08:19:15', '2022-10-12 08:19:15'),
(28, 'english IV: Advanced Academic reading and Writing', '4', 'theory', '3.0', 3, '2022-10-12 08:21:17', '2022-10-12 08:21:17'),
(29, 'human Rights and Citizenship', '4', 'theory', '3.0', 3, '2022-10-12 08:22:37', '2022-10-12 08:22:37'),
(30, 'introduction to literature IV: Prose', '4', 'theory', '3.0', 3, '2022-10-12 08:23:52', '2022-10-12 08:23:52'),
(31, 'introduction to Linguistics IV: SOE', '4', 'theory', '3.0', 3, '2022-10-12 08:24:40', '2022-10-12 08:24:40'),
(32, 'political Science', '4', 'theory', '3.0', 3, '2022-10-12 08:25:55', '2022-10-12 08:25:55'),
(33, 'geography II', '4', 'theory', '3.0', 3, '2022-10-12 08:26:46', '2022-10-12 08:26:46'),
(34, 'geography', '4', 'theory', '3.0', 3, '2022-10-12 08:27:12', '2022-10-12 08:27:12'),
(35, 'major Literary Movements', '6', 'theory', '3.0', 3, '2022-10-12 08:28:22', '2022-10-12 08:28:22'),
(36, 'literary Criticism II', '6', 'theory', '3.0', 3, '2022-10-12 08:30:23', '2022-10-12 08:30:23'),
(37, 'Clasic in Drama', '6', 'theory', '3.0', 3, '2022-10-12 08:31:50', '2022-10-14 13:03:08'),
(38, 'discours Analysis', '6', 'theory', '3.0', 3, '2022-10-12 08:32:38', '2022-10-12 08:32:38'),
(39, 'pakistani Literature in English', '6', 'theory', '3.0', 3, '2022-10-12 08:33:31', '2022-10-12 08:33:31'),
(40, 'lexical Studies and Semantics', '6', 'theory', '3.0', 3, '2022-10-12 08:34:19', '2022-10-12 08:34:19'),
(41, 'modern Novel', '8', 'theory', '3.0', 3, '2022-10-12 08:35:02', '2022-10-12 08:35:02'),
(42, 'lit. Discourse & Journalistic Writing', '8', 'theory', '3.0', 3, '2022-10-12 08:35:39', '2022-10-12 08:35:39'),
(43, 'teaching of literature', '8', 'theory', '3.0', 3, '2022-10-12 08:36:20', '2022-10-12 08:36:20'),
(44, 'leaching of literature', '8', 'theory', '3.0', 3, '2022-10-12 08:37:02', '2022-10-12 08:37:02'),
(45, 'modern Poetry', '8', 'theory', '3.0', 3, '2022-10-12 08:37:59', '2022-10-12 08:37:59'),
(46, 'pakistan studies', '2', 'theory', '3.0', 2, '2022-10-12 08:40:55', '2022-10-12 08:40:55'),
(47, 'socilogy', '2', 'theory', '3.0', 2, '2022-10-12 08:41:58', '2022-10-12 08:41:58'),
(48, 'Business Cominucation', '2', 'theory', '3.0', 2, '2022-10-12 08:43:07', '2022-10-14 13:00:25'),
(49, 'finacial accounting', '2', 'theory', '3.0', 2, '2022-10-12 08:43:53', '2022-10-12 08:43:53'),
(50, 'Business Math', '2', 'theory', '3.0', 2, '2022-10-12 08:44:33', '2022-10-14 13:01:42'),
(51, 'micro econmics', '2', 'theory', '3.0', 2, '2022-10-12 08:45:31', '2022-10-12 08:45:31'),
(52, 'Business Finace', '4', 'theory', '3.0', 2, '2022-10-12 08:46:36', '2022-10-14 13:00:48'),
(53, 'Business Law', '4', 'theory', '3.0', 2, '2022-10-12 08:47:11', '2022-10-14 13:01:08'),
(54, 'economy of pakistan', '4', 'theory', '3.0', 2, '2022-10-12 08:47:55', '2022-10-12 08:47:55'),
(55, 'sociology', '4', 'theory', '3.0', 2, '2022-10-12 08:48:42', '2022-10-12 08:48:42'),
(56, 'human behaviour', '4', 'theory', '3.0', 2, '2022-10-12 08:49:22', '2022-10-12 08:49:22'),
(57, 'managerial accounting', '4', 'theory', '3.0', 2, '2022-10-12 08:50:18', '2022-10-12 08:50:18'),
(58, 'e-business', '6', 'theory', '3.0', 2, '2022-10-12 08:51:54', '2022-10-12 08:51:54'),
(59, 'Business Resurch Method', '6', 'theory', '3.0', 2, '2022-10-12 08:52:29', '2022-10-14 13:02:10'),
(60, 'project managment', '6', 'theory', '3.0', 2, '2022-10-12 08:53:08', '2022-10-12 08:53:08'),
(61, 'sales&retail', '6', 'theory', '3.0', 2, '2022-10-12 08:53:56', '2022-10-12 08:53:56'),
(62, 'fim', '6', 'theory', '3.0', 2, '2022-10-12 08:54:37', '2022-10-12 08:54:37'),
(63, 'elective finance marketing', '6', 'theory', '3.0', 2, '2022-10-12 08:55:19', '2022-10-12 08:55:19'),
(64, 'intren ship managment', '8', 'theory', '3.0', 2, '2022-10-12 08:56:04', '2022-10-12 08:56:04'),
(65, 'entrepreneurship', '8', 'theory', '3.0', 2, '2022-10-12 08:56:50', '2022-10-12 08:56:50'),
(66, 'strategic mangment', '8', 'theory', '3.0', 2, '2022-10-12 08:57:31', '2022-10-12 08:57:31'),
(67, 'Brand Managment', '8', 'theory', '3.0', 2, '2022-10-12 08:58:09', '2022-10-14 13:00:04'),
(68, 'persnoal saling', '8', 'theory', '3.0', 2, '2022-10-12 08:58:48', '2022-10-12 08:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `subject_marks`


--
-- Dumping data for table `subject_marks`
--

INSERT INTO `teachers` (`id`, `user_id`, `department_id`, `created_at`, `updated_at`) VALUES
(2, 160, 1, '2022-10-13 01:24:51', '2022-10-13 01:24:51'),
(3, 161, 1, '2022-10-13 01:26:05', '2022-10-13 01:26:05'),
(4, 162, 1, '2022-10-13 01:31:45', '2022-10-13 01:31:45'),
(5, 163, 1, '2022-10-13 01:35:03', '2022-10-13 01:35:03'),
(6, 164, 1, '2022-10-13 01:36:29', '2022-10-13 01:36:29'),
(7, 165, 1, '2022-10-13 01:37:40', '2022-10-13 01:37:40'),
(8, 166, 1, '2022-10-13 01:38:31', '2022-10-13 01:38:31'),
(9, 167, 1, '2022-10-13 01:39:28', '2022-10-13 01:39:28'),
(10, 168, 2, '2022-10-13 01:40:34', '2022-10-13 01:40:34'),
(11, 169, 2, '2022-10-13 01:41:43', '2022-10-13 01:41:43'),
(12, 170, 2, '2022-10-13 01:42:28', '2022-10-13 01:42:28'),
(13, 171, 2, '2022-10-13 01:43:13', '2022-10-13 01:43:13'),
(14, 172, 2, '2022-10-13 01:43:55', '2022-10-13 01:43:55'),
(15, 173, 2, '2022-10-13 01:44:40', '2022-10-13 01:44:40'),
(16, 174, 2, '2022-10-13 01:45:35', '2022-10-13 01:45:35'),
(17, 175, 2, '2022-10-13 01:48:38', '2022-10-13 01:48:38'),
(18, 176, 2, '2022-10-13 01:49:12', '2022-10-13 01:49:12'),
(19, 177, 3, '2022-10-13 01:50:08', '2022-10-13 01:50:08'),
(20, 178, 3, '2022-10-13 01:51:01', '2022-10-13 01:51:01'),
(21, 179, 3, '2022-10-13 01:51:47', '2022-10-13 01:51:47'),
(22, 180, 3, '2022-10-13 01:52:52', '2022-10-13 01:52:52'),
(23, 181, 3, '2022-10-13 01:54:00', '2022-10-13 01:54:00'),
(24, 182, 2, '2022-10-13 01:54:38', '2022-10-13 01:54:38'),
(25, 183, 3, '2022-10-13 01:55:22', '2022-10-13 01:55:22'),
(26, 184, 3, '2022-10-13 01:56:21', '2022-10-13 01:56:21');


INSERT INTO `teacher_subjects` (`id`, `subject_id`, `batch_id`, `teacher_id`, `year`, `semester`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 2, '2022', 'fall', '2022-10-15 05:34:01', '2022-10-15 05:34:01');

INSERT INTO `subject_marks` (`id`, `student_id`, `teacher_subjects_id`, `mid_marks`, `sessional_marks`, `practical_marks`, `final_marks`, `locked`, `is_fresher`, `is_improver`, `is_failure`, `created_at`, `updated_at`) VALUES
(1, 39, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(2, 40, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(3, 41, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(4, 42, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(5, 43, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(6, 44, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(7, 45, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(8, 47, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(9, 48, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(10, 88, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(11, 136, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(12, 138, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(13, 140, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(15, 158, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01'),
(16, 161, 1, NULL, NULL, NULL, NULL, 0, 1, 0, 0, '2022-10-15 05:34:01', '2022-10-15 05:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

--
-- Dumping data for table `teachers`
--


-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--



--
-- Dumping data for table `teacher_subjects`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--


--
-- Dumping data for table `users`
--

--
-- Indexes for dumped tables
--
