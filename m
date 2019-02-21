Return-Path: <A01630030@itesm.mx>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44F7DE00C1E; Fri, 22 Feb 2019 09:27:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.80.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 83180 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Feb 2019 09:27:51 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-eopbgr800124.outbound.protection.outlook.com [40.107.80.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15DB2E009A0
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 09:27:51 -0800 (PST)
Received: from SN2PR05MB2512.namprd05.prod.outlook.com (10.166.213.21) by
	CO2PR05MB2501.namprd05.prod.outlook.com (10.166.95.147) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.11; Thu, 21 Feb 2019 11:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=itesm.mx; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Ak+gBaSY0Vo5Ir0lonaVBXFt8/VbML9rDLCryvnTvwo=;
	b=uoQizPkssHz2DaKOg3agj61TFOl/Azr4M/0ULNi3PTLWd13P1o7p4PmBxMy/k1lwjg5x/wpxm769yU3ni63C/ZjcsomLFRi1+Mhf7ARvBYEDYhKqnhfxAFc7+ZwrSRGMK7cIPXT2RLBTssQy03FNIEQp7a3vhZKUwOMDVufrgYU=
Received: from SN2PR05MB2782.namprd05.prod.outlook.com (10.167.19.139) by
	SN2PR05MB2512.namprd05.prod.outlook.com (10.166.213.21) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.9; Thu, 21 Feb 2019 08:26:07 +0000
Received: from SN2PR05MB2782.namprd05.prod.outlook.com
	([fe80::e11a:29e6:50f7:b359]) by
	SN2PR05MB2782.namprd05.prod.outlook.com
	([fe80::e11a:29e6:50f7:b359%4]) with mapi id 15.20.1643.012;
	Thu, 21 Feb 2019 08:26:07 +0000
From: Carlos Pozos Ochoa <A01630030@itesm.mx>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ROS support on yocto project
Thread-Index: AQHUyb3x+/MIsWfwPUW2Gq12b65fwg==
Date: Thu, 21 Feb 2019 08:26:07 +0000
Message-ID: <SN2PR05MB27829108D4A8ED36D600A930C17E0@SN2PR05MB2782.namprd05.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=A01630030@itesm.mx; 
x-originating-ip: [189.141.230.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c617c17f-00d1-48ff-b9c5-08d697d63a16
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600110)(711020)(4605104)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:SN2PR05MB2512; 
X-MS-TrafficTypeDiagnostic: SN2PR05MB2512:|SN2PR05MB2512:|CO2PR05MB2501:
x-microsoft-exchange-diagnostics: =?iso-8859-1?Q?1; SN2PR05MB2512;
	23:sL/gI4x6ZTwZlgvvbHpPHzaig8XPV3RSoGVHZTZ?=
	=?iso-8859-1?Q?gsutIyLPU6P8A3KbPeuDNBZ/J0ykonMFtnyBg5Q99RY1wnnT1yplfD0UAQ?=
	=?iso-8859-1?Q?1b1yyQtGAWxIpDE8E1fk1mbmi8i0KGiu+OrfDIEYFnPrHxKK+9pVOwi3nL?=
	=?iso-8859-1?Q?2qlYDeT0dlQ3TsEzzA8VggNXl07Wk4p8IoX3mpDAaCAp7hhfazOL2lhOxV?=
	=?iso-8859-1?Q?0oWZ2+2/a7uvfX9G4zCJJ2MQHoCcpFKEaifTvD5/j6HOpRE/s1t0WA9QVg?=
	=?iso-8859-1?Q?Hxxq1uYXgWJhzVz3be1pcP88MlIxM1AgzoEUh0CbTJKTbnoCiPbhSXswIJ?=
	=?iso-8859-1?Q?JRX9WekCu6YEipU8fz8EQGo651gMsKB3U6xISnS/116vXcMBcUUooFxnQd?=
	=?iso-8859-1?Q?iie+uFG55tzLyydMQpV+9UnIv4/fcBz1+bCMKP3dicpMD3G4DNVDLLIVkB?=
	=?iso-8859-1?Q?nNm31Guq+HYEQjAG8lmJKV7RY12WNkuL2WD46IppxxHmr8Gy9inUiF9AP+?=
	=?iso-8859-1?Q?kjJWv8J6xFKg08o0s+vgHiVB1snmtOFkvmBhM9iyWeuDJk+6ztp7ONIqUK?=
	=?iso-8859-1?Q?1iCNUB6hxLXhfRRdHOVWNYupeB8T59yIFsTK13nesBTd/l2/xMv9Ap/qvQ?=
	=?iso-8859-1?Q?l0b5YHztCzF9R2uZet1AHwsex+BwBaF3EWIUE/MC2la+KVqCGWTb/7UDDi?=
	=?iso-8859-1?Q?Ncbw875CRij2UUDpAXIWmUBVD/p/KMKgbccL9t/oq3wlQc6kyKcmfl9IDg?=
	=?iso-8859-1?Q?0/bAwshDbl+8tzgDVh+WFCz8GYlWSeSwscjFYN39NJnMHaCnFI9IncSEM2?=
	=?iso-8859-1?Q?Agm1ZsU6bFT+mLoA1pBQ7HFd1GJRyS/JUGQMqXQRlIXIn73Ej3+CqX/qMm?=
	=?iso-8859-1?Q?RhSm5juLPUcUTTUmxhQ9CHBWxZKE3Y9tIna+Ma7LVGoeJ7EmkZWW6VHL5O?=
	=?iso-8859-1?Q?FvUu1c6JC6kzmt889jvPJsdXALRrqs/d/38pszQQ9aeI2acAjZHbgUgXA1?=
	=?iso-8859-1?Q?3kP0UwVmIZs5rWSCijJZjGRjjCxEufCLNcu8CsFJrmX/MhQ658u+64g6y6?=
	=?iso-8859-1?Q?xO/uQtCm+d/gQH0EYlt0MtLczbRfpg1TYeVjdXs/qz08SLUHpY/FezhJL4?=
	=?iso-8859-1?Q?CLtL3SxJdslYEC9st0q4/D/eTOR/zngR5FjNXhQo2FZZ1cicuWEPuin2aV?=
	=?iso-8859-1?Q?d7jKHzJQ5B+1dT/LKgN3/QqLn+17qvitiKahXfoQZHhZTuH7JkQEAcgXE/?=
	=?iso-8859-1?Q?QhauieBypMtkvoQhk+KhHC6PcEHKcrlIBgIKHTsDS5yduwB4xvY4TuWSCk?=
	=?iso-8859-1?Q?W4WzLVF3J1amnxiFue5EkiPSwgN5hzxz7SxVoP/UY5ygQ=3D=3D?=
x-microsoft-antispam-prvs: <SN2PR05MB251252916029B18F8097E931C17E0@SN2PR05MB2512.namprd05.prod.outlook.com>
x-forefront-prvs: 09555FB1AD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(786003)(5640700003)(316002)(86362001)(19627405001)(6436002)(7696005)(74316002)(2906002)(66066001)(81166006)(97736004)(53936002)(55016002)(81156014)(14454004)(2501003)(105586002)(478600001)(1730700003)(8676002)(106356001)(99286004)(74482002)(9686003)(6116002)(7736002)(3846002)(54896002)(72206003)(8936002)(71190400001)(71200400001)(2351001)(6916009)(4744005)(5660300002)(6606003)(68736007)(476003)(486006)(25786009)(256004)(186003)(102836004)(33656002)(6506007)(26005)(81782002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN2PR05MB2512;
	H:SN2PR05MB2782.namprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itesm.mx does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +fPdHLHQ54sAZPgvTbvi90GmFz99KdboXI4gp3z2t7WOYFHP7AlSd9MqOU29WrZspyqgIltMwl3LUt1pqzzOLFjhOQQ9Y3MWibqbhAiyWPPJPsRsXvLte3bbYoT3ub4eeggCL8W5WoZeSVMB6Dfdl6jghpi8CnGyQ7w8wOHRhzbXh28IdETLxN6vCdoDEQSv6yf9JUMhXMGJ+YOOznox2+7zooR/DEvaNMHRs548PGAAKxVYP47Q5z0UI0/1ITzjlUHPTWJ50mB20uWFV2Upr04cx6opNjXJvEDk44lh4YoTYaj+X9bwZGxcl6GLzEz4pPZLvVhA8L5wbfX6JUU/HE66dftJFW0bMF+WC9Hj1W1y1uQpzemr6vevw2u2izyWD8jfHvsJdbquGV/Flh4xcDw2gn5PtNJPyAF6ED412VM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c617c17f-00d1-48ff-b9c5-08d697d63a16
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2019 08:26:07.1676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c65a3ea6-0f7c-400b-8934-5a6dc1705645
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR05MB2512
X-Microsoft-Exchange-Diagnostics: 1; CO2PR05MB2501;
	23:rehC9Uergmy/5qNou7stARJL9vUtHMUoMiqWH0KgwdXj0XKRFdrzPMsF0gTVu2wXHh/ss4nZwRbeCzc2n/ANEGCwPqLW8feLIrc2ih64VTwLYwg114B/JoqUsH6JyRU9GadfDh3+LettTODHnC1YHQ==
X-OriginatorOrg: itesm.mx
X-Mailman-Approved-At: Thu, 28 Feb 2019 08:21:22 -0800
Subject: ROS support on yocto project
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
X-List-Received-Date: Fri, 22 Feb 2019 17:27:53 -0000
Content-Language: es-ES
Content-Type: multipart/alternative;
	boundary="_000_SN2PR05MB27829108D4A8ED36D600A930C17E0SN2PR05MB2782namp_"

--_000_SN2PR05MB27829108D4A8ED36D600A930C17E0SN2PR05MB2782namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I recently acquire a Renesas R Car M3 board which runs on an embedded linux=
 image build by means of the Yocto project. We are currently using YOCTO 3.=
9.0. We are looking forward to implement ROS kinetic libraries on this embe=
dded linux. Does the yocto project supports this libraries? In the case it =
does, is there any special process to install and run them? Or is it work a=
s a normal linux distribution?


--_000_SN2PR05MB27829108D4A8ED36D600A930C17E0SN2PR05MB2782namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div>
<p style=3D"margin: 0px 0px 10.66px;"><span lang=3D"EN-US" style=3D"margin:=
 0px; color: rgb(33, 33, 33); line-height: 107%; font-family: &quot;Segoe U=
I&quot;,sans-serif; font-size: 11.5pt;">I recently acquire a Renesas R Car =
M3 board which runs on an embedded linux image build
 by means of the Yocto project. We are currently using YOCTO 3.9.0. We are =
looking forward to implement ROS kinetic libraries on this embedded linux. =
Does the yocto project supports this libraries? In the case it does, is the=
re any special process to install
 and run them? Or is it work as a normal linux distribution?</span><span la=
ng=3D"EN-US" style=3D"margin: 0px;"></span></p>
</div>
<br>
</div>
</body>
</html>

--_000_SN2PR05MB27829108D4A8ED36D600A930C17E0SN2PR05MB2782namp_--
