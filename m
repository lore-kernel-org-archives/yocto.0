Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A74E00C44; Fri, 13 May 2016 02:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,T_FILL_THIS_FORM_SHORT autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0136.outbound.protection.outlook.com [157.56.111.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC166E00C1E
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 02:02:39 -0700 (PDT)
Received: from DM2PR07CA0034.namprd07.prod.outlook.com (10.141.52.162) by
	BN4PR07MB2114.namprd07.prod.outlook.com (10.164.62.156) with Microsoft
	SMTP Server (TLS) id 15.1.497.12; Fri, 13 May 2016 09:02:37 +0000
Received: from BN1AFFO11FD023.protection.gbl (2a01:111:f400:7c10::127) by
	DM2PR07CA0034.outlook.office365.com (2a01:111:e400:2414::34) with
	Microsoft SMTP Server (TLS) id 15.1.492.11 via Frontend Transport;
	Fri, 13 May 2016 09:02:38 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.153)
	smtp.mailfrom=Honeywell.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.153 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1025.honeywell.com (199.61.26.153) by
	BN1AFFO11FD023.mail.protection.outlook.com (10.58.52.83) with Microsoft
	SMTP Server (TLS) id 15.1.492.8 via Frontend Transport;
	Fri, 13 May 2016 09:02:37 +0000
Received: from de08ex5001.global.ds.honeywell.com (10.216.34.42) by
	DE08W1025.honeywell.com (10.221.248.36) with Microsoft SMTP Server id
	14.3.266.1; Fri, 13 May 2016 05:02:23 -0400
Received: from DE08W1319.global.ds.honeywell.com (10.216.14.121) by
	DE08EX5001.global.ds.honeywell.com (10.216.14.56) with Microsoft SMTP
	Server (TLS) id 14.3.266.1; Fri, 13 May 2016 05:02:23 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.182]) by
	DE08W1319.global.ds.honeywell.com ([10.216.14.121]) with mapi id
	14.03.0266.001; Fri, 13 May 2016 05:02:23 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Antwort: Re: [yocto] How to build a simple kernel modul
Thread-Index: AQHRqnenGPmnMGEomUms56IT7dc7tZ+x83iggAOSWICAAQqSYA==
Date: Fri, 13 May 2016 09:02:22 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253EEC5D@DE08W1305.global.ds.honeywell.com>
References: <OFC4AEB901.A588C143-ONC1257FAE.0051F9D2-C1257FAE.0053090F@esa-grimma.de>
	<06a1adbdf434d7992e40e72f452cedae@technux.se>
	<F6CD090A69E64C4289DC608E1C5D2024253EE36B@DE08W1305.global.ds.honeywell.com>
	<OF10297354.2BABFD75-ONC1257FB1.0040E8DE-C1257FB1.0045E035@esa-grimma.de>
In-Reply-To: <OF10297354.2BABFD75-ONC1257FB1.0040E8DE-C1257FB1.0045E035@esa-grimma.de>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.138.38.25]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.153; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(2980300002)(129404003)(199003)(189002)(51914003)(377424004)(252514010)(9170700003)(77096005)(93886004)(106466001)(33656002)(55846006)(19625215002)(2950100001)(76176999)(50986999)(2351001)(54356999)(66066001)(5003600100002)(16236675004)(19617315012)(105586002)(106116001)(586003)(11100500001)(84326002)(5004730100002)(6116002)(102836003)(790700001)(6806005)(2906002)(15974865002)(3846002)(19300405004)(19580395003)(19580405001)(512934002)(1220700001)(5008740100001)(8676002)(85806002)(87936001)(2501003)(2920100001)(8936002)(92566002)(1730700003)(81166006)(2900100001)(5640700001)(86362001)(15975445007)(107886002)(110136002)(450100001)(189998001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN4PR07MB2114;
	H:DE08W1025.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD023;
	1:BSjijnLbgKliCUMIwgLFTR8nxbKb1yTjtUbfLdVV41vPFQumSuyhc42gnxRwef9SOtB4k2rcWJGsLq3JvBg9SkmIJESGlZUOksko6Au3lgrEWfdE2r9PssaWBZPsmdcKGVilbi+YGOSZ74M5UMPRp3iWb72ItS+FepBYq+3ukBWLk6DmAvPLZle/RKEuNibktVuArEpMW3RR+7Ldnyrhi8oj0nGKCySgJE0NocgUEZp2RGrGRdiDX0ebbif7jx3ZIqzFEzs3aZDyZ7vHmjq8chmgXZ3lHim+uqjuHvNAdnuCOAh7ieQ6/KjOAMbG3AExCanzloIO1ZERMikTrSz86ggWyf1jtoD5i1L9lYJzvEZVQitPy7RWhRlI9UTengEtFv2JSqXjOx+jFPZQDjM/zeFIKQpvTq1H/egfy+mcvNcPGeMYLx7kmOP6aNmjcdJ+IoxanrKlAMwnL+L0PbgnCHGoX4EigxsAlpqvnSB0BmtuXWShQT6eYnhaLyK5fXMa
X-MS-Office365-Filtering-Correlation-Id: cfd539ed-a837-4289-4c21-08d37b0d54ac
X-Microsoft-Exchange-Diagnostics: 1; BN4PR07MB2114;
	2:AKTZZ8diCYYdWgsE7tfyrRbRnPPKoAlHk9TO9O2J+UIUJuWo4znrfgSeD16FGGVHGENBivgKqkZQ0VfBVQfjWms3p0baK++DSBfIHAnUaDD1XkleXj+sFm//JFSAF5JCu483AsQKT981Ukup5oUUabMmfiJ/yPGbKsiSPUiS2SKn57f6iCHr0Ewa6Ra12ULn;
	3:Mvp+z1b5fA2u8SJ42U5FzLRjMUAVqcxhL6xaUI61VFUEn2p+wrnq32/0IthmgiQPilZKXQ5kVcmIw+33gmm7tTPHyMlAAODT/RNI09gJ5hvB4abr3Ms3P2jYucebfSbpzk66O9FgMI31/ySj51JllAt5lnDJvlTIafthjF5KHsZGIPaFx9pOqju4Ghew+13LeZd5G04EFY8hmju2Bks78/KE1UmhoYfM/B8fsmgYwUo=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN4PR07MB2114;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BN4PR07MB2114;
	25:k+NmEOGKpBbLOLgmKeKLJtjzBeEnpPpDTwHqn+rXy?=
	=?us-ascii?Q?ArZeRCSCUfvc3X1XMKFxpo609hbF4oP1ULLwvubJVWkvuCR8OJE+UUgP41M8?=
	=?us-ascii?Q?EoPotRe6MuiQhKgXY2c8iitmL0A+ZJViv/WsUWlaqZkxzSzf+cCiMUyt8Kgc?=
	=?us-ascii?Q?sXqGQobTGzgp2YKSIi2Ftv0cfYRkrUYEiSR2Iy2XyADYwwGWNA/8ua8Zj3ve?=
	=?us-ascii?Q?A9+HDdLCJDBVsg/2oQRPpmPp6flQwj5tcgZzlqf3GEZ/ZooDB4iRxaqoYRM6?=
	=?us-ascii?Q?UQUn741+7G2jxxxPt2OfJPQ9HhOlzgb4CO0fMt66BmGWXa0fkZGAZBkNIy6/?=
	=?us-ascii?Q?1Bz0sUBvkT+BnbWjpNEY9chNZ4ta3e9BhKbDj4EqAkSU794I4BW4F+1ddw+h?=
	=?us-ascii?Q?nwpuuddkkLWIii+q+By91fWwIDTfc3hD4SotJWZLbCZ1HYII9AY7PkzlOMk5?=
	=?us-ascii?Q?vazOb/TR6sSA3E/GeZHNxy6ZcHWQH9eVqyOd33S1CPEZf3V5yo23qi1dLWTW?=
	=?us-ascii?Q?cyOsgtu9RqxbXMuLgrvP8IUfcezVB8W1PY1YNZFSBDiINZvH10fRN3hTXAAg?=
	=?us-ascii?Q?rAm5fMFwlBm8iJ5uBPx8XkpvUKH7cREkEAAUTvctSfubsIKxcW7Xzhz2cpIT?=
	=?us-ascii?Q?qABxyfIfco62VJk//dVDrvtJuKYFBuEVrdCNCJgb7suOwkiXTMizlV/KT081?=
	=?us-ascii?Q?ZEe2VfUoSkqLSQG1JFMhBvysQgEJgm6ruU5LdU3+A37uNAWrn+Y8N2v1AZjD?=
	=?us-ascii?Q?YP4zbhsRQ2ENJgyH6icsZ336BFLbeO3BjubUcI+YWeKaeZ2DMuk6UlHhIwPN?=
	=?us-ascii?Q?h0j+WQ93kDlAj+Ips0hYvhbg+ncHtgwBSsXOyMhIO/wNL1ctJcJZ0dMYxcuB?=
	=?us-ascii?Q?dADDJgJrE0yyZXNLrb7aJm2zk+MGN3lJAVNcKBmTxwJU5DoUsi1CGXhlinrN?=
	=?us-ascii?Q?cS6Gmup8nGpXwxHXPqIK8fln1Yvfllh1SRAqiP0VWnCnh5jq7/AcfS42k43e?=
	=?us-ascii?Q?Hbj2/SD0mi6wf7nyc0p/VBYWXpfnbRRbqLbw+nNK8c5lg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN4PR07MB2114;
	20:9pQedTB2tjTaAsM6GN8/qZ1IJyR2bLfkjKCYUJ9gHF/apmVn2d5s0ukb5MjVM6e/HcL+IehjQjZeSnWCTuEpOv8L6bgd4SHg1NR/hG752vzqTsnWy4j7PifVFtQnEJV0QA6rKDr9SjhxGNCxE9SbPW3ntpIyk/9eNqLUaeICLWZU6iUzYs/uIypNYmIbo0USAOOcBC7Xiggu5lZFHZyNvWG9eySwnst/p01KPnR2NpMiKEg4NDH9hqMKRjSSUQ2btcmJ9/SDFLgmoQhu24EYqzmRkZNAXZCjmSRs1fjNmKsJoGYHRsGjiUULNGiXQRc48pmZ1vl7fVC5WKdslfUb+kJ5yMxdqMCKn5HgDi+IDeC34LbfBm4bl8a13kjw3RV54JzaN9CFx6gRJTeePCJuZQYrLi3G3jUccH2RCs3oXQCGlksA8iMCDIptK/WNtZerhGhu5pMsi0BEF3md0rUvRk9xaXXh0Y4/xB5Ffkbv2t0oQhPYHkaKP78jrL9SWN6x
X-Microsoft-Antispam-PRVS: <BN4PR07MB2114EDE06821440C647CE8B596740@BN4PR07MB2114.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13018025)(13017025)(13024025)(13023025)(13015025)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:BN4PR07MB2114; BCL:0; PCL:0; RULEID:; SRVR:BN4PR07MB2114; 
X-Microsoft-Exchange-Diagnostics: 1; BN4PR07MB2114;
	4:n9WJH8zUHLtI9BDNv22ZvqisyI7+/R81zRSPXkpYdZOjDV4E8RyAg04hJtEFmDidLC8i+ICOfxTWLs9+uyzc4zhFuG0XCk4+wwb+wtW3/H8I/atN/B+3lzv1W5daWbbmt6uEafK6ARKnRF5VPkcifIiQhDlGMCrSCI5vKXy6S4Sr6Yu1fB52CVnZQdwVXy1MTQ4T5x99moJ1RheQd6HPVXyxF2WePcGR3rsPWi4yjfzuvPD6Lpeh2g+TSBiCnp3gjinlhkFKFw0tqDJLodBCJq/2o1lDwdUV2MgG8ejc9tBjVp6CBq2xl0sGmnEZYW7s9tEZ6NkWsZ1JgHjAsxjVQvbvdrWv90G462nyT+mNvinXh23g9+RXoTXslg65PC2D0wZe1jBClyyvuViHlXABxPQL1emAMa6Cg1TNmI1Pxx0Buy1nNbQPEzEhNJaSamePu1BYCP6f9jZ28HFH505IR2JahvDJYd/Dmx/3w1GsC0U=
X-Forefront-PRVS: 0941B96580
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BN4PR07MB2114;
	23:mKyoFNeoTI6id0lHHUiYMqmcUOGe2JaODpYqu0RDr?=
	=?us-ascii?Q?kmacHYhbbBkUGek9/eyBVhS6nEABJNjQLPgrclcwklr4+NLfJZNpGx7J6W9T?=
	=?us-ascii?Q?pukOAnEzhfBAeNYA9Gn8K3km/kClFvggKEaPnu2+fgHlgyuGmcsJGQ7Cdi3p?=
	=?us-ascii?Q?9cMgIv/uIC/YtoA/R6QYkT/e/I0nU38rpZ1QrgEtECSHGlQYDeer2Qr8xsSH?=
	=?us-ascii?Q?E5AY6GlmoJqVb2hek6pFeFHTobkw0bm0kT2icn8v+6FwHbJ9wVJd4caOkPLi?=
	=?us-ascii?Q?1kLql+V0RstZEu7pHKlN7hF7URm1Mex+RR1Dk/0N3fRRPqyaEUi2ioSw9ai0?=
	=?us-ascii?Q?v7OwyNDX1q8ZYeZ5mEla0aAz20nkm4D+K/GqGSXnRNwiEwX6KbvOt4ZQtGSI?=
	=?us-ascii?Q?oih938501nVsLhltNrXFpDY5EbVUTkLMa+aQomfYZtK0pxVQ5z4aqZ6YtuLE?=
	=?us-ascii?Q?IcGmixxt+mPOakHoW/TcviXfVIx20Rr2mmCHkycq52DljDomQghA2Rxvc6wW?=
	=?us-ascii?Q?fLFv7DfE/2WNSgR8ReDQPN5ySB81JNXZE5tH1j7NM8xqBE552e2bgMzczJkp?=
	=?us-ascii?Q?6y40ekpChtZIbZZ7cZ6EV+Sugr2MicLUtxWxX7GQXBSzE98r+aVjB/EV2IR/?=
	=?us-ascii?Q?njhFkkAuejOCbxfy0YTjugfnuLwpcld4k8XIPVsEYTwNESUMI8GCD8I3Zoe3?=
	=?us-ascii?Q?gWdlERsIJy1U6YQ1220hrhLYD5cnyFmyvlfLIYrHJfEorxVxNRMAop2DyJy2?=
	=?us-ascii?Q?zYp6m9l8qOebpF+CJQRicTlFZy6vGYAkXh9vCXPKcaH3XMTANOiHtuZgYNTn?=
	=?us-ascii?Q?QJa0sGvTGgqQugaH6OhSCZwbM3jmHh+I3jHFqTTKrQImIrltwjMhSO5U+dE9?=
	=?us-ascii?Q?cCwuh6CWQ5LRNi8WPqAhCOZFNAXkR5gNMMIENQbem93h0H4hbPQzZg3d602K?=
	=?us-ascii?Q?my3rRufW2sALWah6l7zZIPwNKiskSSfYiFYoXEvfi3CHEzyeqNt/Lo/qd3kD?=
	=?us-ascii?Q?3q32ChEAAPlLouaPAYggRsS9pV1yC4+1PjOFeHXnY6XPp2Avmx18u/ib891O?=
	=?us-ascii?Q?DUeFo+VP54inMDXYq3E6ZFr9GvYuOX16tUmuLa6S+DXRHallr4Tbgg3XVw0E?=
	=?us-ascii?Q?J/0/p8GLpRwwyFZr0IJdnsHDYJoULi2eO35BoSRaV5DesCubT+LEcxIMolLs?=
	=?us-ascii?Q?JhOJaSyzLMEkKmAAI1SFC8BNK03pTk1TxMH6tgZL0xDSdPLPZDuFxd69ON+S?=
	=?us-ascii?Q?spJeiUNzajDl/EzB7O/HVcIbOv8C7bkl0CbSkXCq9ZWVE40giCJ7C9M46Dv6?=
	=?us-ascii?Q?SnzkPRcABdSFg3nhSMW9bziu2AKKDzdk4gUWoIFRazKnQYnzFy9AEdsqCw/A?=
	=?us-ascii?Q?d9rPvVSRroemX5pU0m8O2EZ7ro2zggTY+1OVuyeiy1Pjji/przpLlRTwGxsH?=
	=?us-ascii?Q?2olKAvXmcSqFX09MzTRpeMrv7pycX/WvfTrAfKDSjeSlnBTzR/sGN7ZbE4f6?=
	=?us-ascii?Q?aA5FvvnUBeA/pGtnagLHvPjRzbYZLKb/PGfuEjjWOfseKvOeingtCgA?=
X-Microsoft-Exchange-Diagnostics: 1; BN4PR07MB2114;
	5:U4dxwQnnR2uLBgkPRZBTtNkPraqjGkiiL4ctdmCT9iM2n2KrEnUU49Kzg0VlMbEI1Pf+ZYI5VwNq+ddfp4mj5Y+f/yV7NkqkhO8iAppVYpQazj6ihIHDctU471oyypB/JiatLPrv3RaBnwYtZ6dlLw==;
	24:YVfszDmIk1En2X/JZklBVIQEEZ8ZlkzyKlLUukYeAXgv7PRzAHImF7FrCHMP12oLBsAZKlw3RvodMX6DZcHLSyZBn305yzSbMd0yozcB1qw=;
	7:JDmeXlCZ5gCxbJmlQQU2J7oA84t2n5Sof+Nee0MOFpwzO6Ajz/T90dDH+EDaSK1wMWSJ2vlG1qb4qUiCqaiDHINnAPKMXf0wfbUdTQHKDwfiyi9nflwtrpPcKSNxHK8LZKDtRHqVZUgw0uRnCP9yZWyzr6SMd9kBiSb9Q5b7TasZrIxorm9fXtjbPu3hD3/+
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2016 09:02:37.2557 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.153]; Helo=[DE08W1025.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN4PR07MB2114
Subject: Re: Antwort: Re: How to build a simple kernel modul
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 May 2016 09:02:47 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024253EEC5DDE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024253EEC5DDE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I guess you forgot to add your module to the image recipe:

IMAGE_INSTALL_append =3D " ledmodule"

If you are working on your module code, you may prefer to copy your module =
with ssh to the target system and load it dynamically with commands like th=
is:
$ scp $BUILDDIR/tmp/work/<machine>-poky-linux-gnueabi/ledmodule/0.1-r0/ledm=
odule.ko <system address>:/lib/modules/<kernel version>/kernel/drivers/<sub=
folder>
$ ssh <system address> /sbin/depmod -a
$ ssh <system address> /sbin/modprobe ledmodule

Hope this helps !

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions


De : S.Jaritz@esa-grimma.de [mailto:S.Jaritz@esa-grimma.de]
Envoy=E9 : jeudi 12 mai 2016 14:43
=C0 : Esponde, Joel
Objet : Antwort: Re: [yocto] How to build a simple kernel modul

Hej Joel,

Thanks for the template. But could it be that the recipe creates an empty o=
r non working package?

I call my modul "ledmodul". The compilation works fine. The object and ko f=
iles are created. Under the kernel the ledmodule/0.1-r0 dir is created. The=
 "deploy-rpms" dir contains 4 rpm packages. The "kernel-module-ledmodule-..=
." contains the ko file. I think this is fine.

I don't know how to include this modul. I found that the "local.conf" has t=
o be extended by:

KERNEL_MODULE_AUTOLOAD +=3D "ledmodule"

By doing it nothings happens. My driver is not loaded. Seems my new modul i=
s not installed into the system.  Maybe you can tell me how to include a dr=
iver right into the system?

Regards from Germany!

Stefan Jaritz

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de<mailto:s.jaritz@esa-grimma.de>
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are
not the intended recipient (or have received this e-mail in error) please
notify the sender immediately and destroy this e-mail. Any unauthorized
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.



Von:        "Esponde, Joel" <Joel.Esponde@Honeywell.com<mailto:Joel.Esponde=
@Honeywell.com>>
An:        "petter@technux.se<mailto:petter@technux.se>" <petter@technux.se=
<mailto:petter@technux.se>>, "yocto@yoctoproject.org<mailto:yocto@yoctoproj=
ect.org>" <yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>>
Datum:        10.05.2016 12:30
Betreff:        Re: [yocto] How to build a simple kernel modul
Gesendet von:        yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yo=
ctoproject.org>
________________________________



Hi,

And here is a hello world module example:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-k=
ernel/hello-mod

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org] De la part de Petter Mab=E4cker
Envoy=E9 : mardi 10 mai 2016 06:51
=C0 : yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Objet : Re: [yocto] How to build a simple kernel modul


2016-05-09 17:06 skrev S.Jaritz@esa-grimma.de<mailto:S.Jaritz@esa-grimma.de=
>:
Hej,

I want to build a recipe for a simple GPIO Module. I found no tutorial at t=
he documentation. What is the comon way to build a simple kernel module?

The Makefile looks like:
#########
obj-m +=3D ledmodule.o

SRC :=3D $(shell pwd)

all: modules

modules:
       $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules

modules_install:
       $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install

clean:
       rm -rf *.o *.ko *.mod.c
#########
The recipe contains:
#########
SUMMARY =3D "ledmodule"
SECTION =3D ""
LICENSE =3D "CLOSED"

inherit module

SRC_URI =3D "file://ledmodule.c<file:///\\sek4_ledmodule.c\> \
       file://Makefile<file:///\\Makefile\> \
       "
S =3D "${WORKDIR}/ledmodule-0.1"
#########

Regards

Stefan Jaritz
Entwickler

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de<mailto:s.jaritz@esa-grimma.de>
Internet: www.esa-grimma.de<http://www.esa-grimma.de/>


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are
not the intended recipient (or have received this e-mail in error) please
notify the sender immediately and destroy this e-mail. Any unauthorized
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

Hi,

There are actually some guides for this, see lab4 in:
https://www.yoctoproject.org/sites/default/files/kernel-lab-2.1_0.pdf

But to simply build a module using bitbake, you can just do:

$ bitbake ledmodule

then you will find your recipe and the module in the ./tmp/work/ structure =
(assuming you are not inheriting 'rm_work' in local.conf...).



if you just want to compile it, you can run:

$ bitbake ledmodule -c compile



BR Petter
Petter Mab=E4cker

Technux <petter@technux.se<mailto:petter@technux.se>>
www.technux.se<http://www.technux.se/>--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_F6CD090A69E64C4289DC608E1C5D2024253EEC5DDE08W1305global_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
tt
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">I guess you forgot to add your module to the image recipe:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US">IM=
AGE_INSTALL_append =3D &quot;
</span><span style=3D"font-size:10.0pt;font-family:Consolas">ledmodule</spa=
n><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:Consolas;mso-f=
areast-language:EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">If you are working on your module code, you may prefer to copy your mo=
dule with ssh to the target system and load it dynamically
 with commands like this:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US">$ =
scp $BUILDDIR/tmp/work/&lt;machine&gt;-poky-linux-gnueabi/ledmodule/0.1-r0/=
ledmodule.ko &lt;system address&gt;:/lib/modules/&lt;kernel
 version&gt;/kernel/drivers/&lt;subfolder&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US">$ =
ssh &lt;system address&gt; /sbin/depmod &#8211;a<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US">$ =
ssh &lt;system address&gt; /sbin/modprobe ledmodule<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Hope this helps !<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#707070">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">| Sensing and Productivity Solutions<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">De&nbsp;:</span></b><span lang=3D=
"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f"> S.Jaritz@esa-grimma.de [mailto:S.Jaritz@esa-grimma.de]
<br>
<b>Envoy=E9&nbsp;:</b> jeudi 12 mai 2016 14:43<br>
<b>=C0&nbsp;:</b> Esponde, Joel<br>
<b>Objet&nbsp;:</b> Antwort: Re: [yocto] How to build a simple kernel modul=
<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Hej Joel,</span><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Thanks for the template. But could it be that the reci=
pe creates an empty or non working package?</span><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">I call my modul &quot;ledmodul&quot;. The compilation =
works fine. The object and ko files are created. Under the kernel the ledmo=
dule/0.1-r0 dir is created. The &quot;deploy-rpms&quot; dir contains
 4 rpm packages. The &quot;kernel-module-ledmodule-...&quot; contains the k=
o file. I think this is fine.</span><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">I don't know how to include this modul. I found that t=
he &quot;local.conf&quot; has to be extended by:</span><span lang=3D"EN-US"=
>
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">KERNEL_MODULE_AUTOLOAD &#43;=3D &quot;ledmodule&quot;<=
/span><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">By doing it nothings happens. My driver is not loaded.=
 Seems my new modul is not installed into the system. &nbsp;Maybe you can t=
ell me how to include a driver right into the system?</span><span lang=3D"E=
N-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Regards from Germany!<br>
<br>
Stefan Jaritz<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: &#43;49 3437 9211 176<br>
Telefax: &#43;49 3437 9211 26<br>
E-Mail: </span><a href=3D"mailto:s.jaritz@esa-grimma.de"><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">s.ja=
ritz@esa-grimma.de</span></a><span lang=3D"EN-US" style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,sans-serif"><br>
Internet: </span><a href=3D"www.esa-grimma.de"><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">www.esa-grim=
ma.de</span></a><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. <br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese <b=
r>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are <br>
not the intended recipient (or have received this e-mail in error) please <=
br>
notify the sender immediately and destroy this e-mail. Any unauthorized <br=
>
copying, disclosure or distribution of the material in this e-mail is stric=
tly <br>
forbidden.</span><span lang=3D"EN-US"> <br>
<br>
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#5F5F5F">Von: &nbsp; &nbsp; &nbsp; &nbsp;</span><s=
pan lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,s=
ans-serif">&quot;Esponde, Joel&quot; &lt;</span><a href=3D"mailto:Joel.Espo=
nde@Honeywell.com"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-famil=
y:&quot;Arial&quot;,sans-serif">Joel.Esponde@Honeywell.com</span></a><span =
lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-=
serif">&gt;</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#5F5F5F">An: &nbsp; &nbsp; &nbsp; &nbsp;</span><sp=
an lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sa=
ns-serif">&quot;</span><a href=3D"mailto:petter@technux.se"><span lang=3D"E=
N-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">pe=
tter@technux.se</span></a><span lang=3D"EN-US" style=3D"font-size:7.5pt;fon=
t-family:&quot;Arial&quot;,sans-serif">&quot;
 &lt;</span><a href=3D"mailto:petter@technux.se"><span lang=3D"EN-US" style=
=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">petter@technu=
x.se</span></a><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&q=
uot;Arial&quot;,sans-serif">&gt;, &quot;</span><a href=3D"mailto:yocto@yoct=
oproject.org"><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&qu=
ot;Arial&quot;,sans-serif">yocto@yoctoproject.org</span></a><span lang=3D"E=
N-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">&q=
uot;
 &lt;</span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" =
style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">yocto@yo=
ctoproject.org</span></a><span lang=3D"EN-US" style=3D"font-size:7.5pt;font=
-family:&quot;Arial&quot;,sans-serif">&gt;</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#5F5F5F">Datum: &nbsp; &nbsp; &nbsp; &nbsp;</span>=
<span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;=
,sans-serif">10.05.2016 12:30</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#5F5F5F">Betreff: &nbsp; &nbsp; &nbsp; &nbsp;</spa=
n><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Arial&quo=
t;,sans-serif">Re: [yocto] How to build a simple kernel modul</span><span l=
ang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-size:7.5pt;font-family:&quot;Aria=
l&quot;,sans-serif;color:#5F5F5F">Gesendet von: &nbsp; &nbsp; &nbsp; &nbsp;=
</span><a href=3D"mailto:yocto-bounces@yoctoproject.org"><span lang=3D"EN-U=
S" style=3D"font-size:7.5pt;font-family:&quot;Arial&quot;,sans-serif">yocto=
-bounces@yoctoproject.org</span></a>
<span lang=3D"EN-US"><o:p></o:p></span></p>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" noshade=3D"" style=3D"color:#A0A0A0" align=3D=
"center">
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:#400000">Hi,</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:#400000">&nbsp;</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:#400000">And here is a hello world module example:</span><span l=
ang=3D"EN-US">
<br>
</span><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-=
skeleton/recipes-kernel/hello-mod"><span lang=3D"EN-US" style=3D"font-famil=
y:&quot;Calibri&quot;,sans-serif">http://git.yoctoproject.org/cgit/cgit.cgi=
/poky/tree/meta-skeleton/recipes-kernel/hello-mod</span></a><span lang=3D"E=
N-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif;color:#400000">&nbsp;</span><span lang=3D"EN-US">
<br>
</span><b><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-=
serif;color:gray">Jo=EBl Esponde</span></b><span lang=3D"EN-US">
<br>
</span><b><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-=
serif;color:gray">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans=
-serif;color:gray">| Sensing and Productivity Solutions</span><span lang=3D=
"EN-US">
<br>
&nbsp; <br>
</span><b><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,san=
s-serif">De :</span></b><span lang=3D"EN-US" style=3D"font-family:&quot;Cal=
ibri&quot;,sans-serif">
</span><a href=3D"mailto:yocto-bounces@yoctoproject.org"><span lang=3D"EN-U=
S" style=3D"font-family:&quot;Calibri&quot;,sans-serif">yocto-bounces@yocto=
project.org</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calib=
ri&quot;,sans-serif"> [</span><a href=3D"mailto:yocto-bounces@yoctoproject.=
org"><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-ser=
if">mailto:yocto-bounces@yoctoproject.org</span></a><span lang=3D"EN-US" st=
yle=3D"font-family:&quot;Calibri&quot;,sans-serif">]
<b>De la part de</b> Petter Mab=E4cker<b><br>
Envoy=E9 :</b> mardi 10 mai 2016 06:51<b><br>
=C0 :</b> </span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN=
-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoprojec=
t.org</span></a><b><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&=
quot;,sans-serif"><br>
Objet :</span></b><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif"> Re: [yocto] How to build a simple kernel modul</span><spa=
n lang=3D"EN-US">
<br>
&nbsp; <o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
2016-05-09 17:06 skrev
</span><a href=3D"mailto:S.Jaritz@esa-grimma.de"><span lang=3D"EN-US" style=
=3D"font-family:&quot;Arial&quot;,sans-serif">S.Jaritz@esa-grimma.de</span>=
</a><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif"=
>:</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-ser=
if">Hej, <br>
<br>
I want to build a recipe for a simple GPIO Module. I found no tutorial at t=
he documentation. What is the comon way to build a simple kernel module?
<br>
<br>
The Makefile looks like: <br>
######### <br>
obj-m &#43;=3D ledmodule.o <br>
<br>
SRC :=3D $(shell pwd) <br>
<br>
all: modules <br>
<br>
modules: <br>
&nbsp; &nbsp; &nbsp; &nbsp;$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules <br>
<br>
modules_install: <br>
&nbsp; &nbsp; &nbsp; &nbsp;$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_inst=
all <br>
<br>
clean: <br>
&nbsp; &nbsp; &nbsp; &nbsp;rm -rf *.o *.ko *.mod.c <br>
######### <br>
The recipe contains: <br>
######### <br>
SUMMARY =3D &quot;ledmodule&quot; <br>
SECTION =3D &quot;&quot; <br>
LICENSE =3D &quot;CLOSED&quot; <br>
<br>
inherit module <br>
<br>
SRC_URI =3D &quot;</span><a href=3D"file:///\\sek4_ledmodule.c\"><span lang=
=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">file://ledmod=
ule.c</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;=
,sans-serif"> \
<br>
&nbsp; &nbsp; &nbsp; &nbsp;</span><a href=3D"file:///\\Makefile\"><span lan=
g=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">file://Makef=
ile</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,s=
ans-serif"> \
<br>
&nbsp; &nbsp; &nbsp; &nbsp;&quot; <br>
S =3D &quot;${WORKDIR}/ledmodule-0.1&quot; <br>
######### <br>
<br>
Regards<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: &#43;49 3437 9211 176<br>
Telefax: &#43;49 3437 9211 26<br>
E-Mail: </span><a href=3D"mailto:s.jaritz@esa-grimma.de"><span lang=3D"EN-U=
S" style=3D"font-family:&quot;Arial&quot;,sans-serif">s.jaritz@esa-grimma.d=
e</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,san=
s-serif"><br>
Internet: </span><a href=3D"http://www.esa-grimma.de/"><span lang=3D"EN-US"=
 style=3D"font-family:&quot;Arial&quot;,sans-serif">www.esa-grimma.de</span=
></a><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif=
"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. <br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese <b=
r>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are <br>
not the intended recipient (or have received this e-mail in error) please <=
br>
notify the sender immediately and destroy this e-mail. Any unauthorized <br=
>
copying, disclosure or distribution of the material in this e-mail is stric=
tly <br>
forbidden.</span><span lang=3D"EN-US"> <o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
Hi,</span><span lang=3D"EN-US">
<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
<br>
There are actually some guides for this, see lab4 in:<u><span style=3D"colo=
r:blue"><br>
</span></u></span><a href=3D"https://www.yoctoproject.org/sites/default/fil=
es/kernel-lab-2.1_0.pdf"><span lang=3D"EN-US" style=3D"font-family:&quot;Ar=
ial&quot;,sans-serif">https://www.yoctoproject.org/sites/default/files/kern=
el-lab-2.1_0.pdf</span></a>
<span lang=3D"EN-US"><o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
But to simply build a module using bitbake, you can just do:</span><span la=
ng=3D"EN-US">
<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
$ bitbake ledmodule</span><span lang=3D"EN-US">
<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
then you will find your recipe and the module in the ./tmp/work/ structure =
(assuming you are not inheriting 'rm_work' in local.conf...).</span><span l=
ang=3D"EN-US">
<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
&nbsp;</span><span lang=3D"EN-US">
<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-family:&quot;Arial&quot;,sans-serif">=
if you just want to compile it, you can run:</span><span lang=3D"EN-US">
<o:p></o:p></span></p>
<p><span style=3D"font-family:&quot;Arial&quot;,sans-serif">$ bitbake ledmo=
dule -c compile</span>
<o:p></o:p></p>
<p><span style=3D"font-family:&quot;Arial&quot;,sans-serif">&nbsp;</span> <=
o:p></o:p></p>
<p style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US" style=3D"font-family=
:&quot;Arial&quot;,sans-serif">BR Petter</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">P=
etter Mab=E4cker</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">&=
nbsp;</span><span lang=3D"EN-US">
<br>
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">T=
echnux &lt;</span><a href=3D"mailto:petter@technux.se"><span lang=3D"EN-US"=
 style=3D"font-family:&quot;Courier New&quot;">petter@technux.se</span></a>=
<span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">&gt;</sp=
an><span lang=3D"EN-US">
<br>
</span><a href=3D"http://www.technux.se/"><span lang=3D"EN-US" style=3D"fon=
t-family:&quot;Courier New&quot;">www.technux.se</span></a><tt><span lang=
=3D"EN-US" style=3D"font-size:10.0pt">--
</span></tt><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quo=
t;Courier New&quot;"><br>
<tt>_______________________________________________</tt><br>
<tt>yocto mailing list</tt><br>
</span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">yocto@yoctoprojec=
t.org</span></a><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:=
&quot;Courier New&quot;"><br>
</span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto"><tt><span =
lang=3D"EN-US" style=3D"font-size:10.0pt">https://lists.yoctoproject.org/li=
stinfo/yocto</span></tt></a><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024253EEC5DDE08W1305global_--
