Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D57E007C2; Fri, 24 Feb 2017 04:11:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.34.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Feb 2017 04:11:29 PST
Received: from COL004-OMC4S4.hotmail.com (col004-omc4s4.hotmail.com
	[65.55.34.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94882E0049D
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 04:11:29 -0800 (PST)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.55.34.200])
	by COL004-OMC4S4.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 24 Feb 2017 04:10:27 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=8v5xyl2bLk8TEengKDtA9Vj4UxlIfqRrvOVrPamcALU=;
	b=QEzx5mjJ24kwBdP4t7wsQcPvnZ11q6TMqRMKc5I7VMOQ0MJpSOR4l74OFef4FBXF9gb/VlWLIkjMdjg2uRJ1FzIUkVBaTNmtkv+gaEVLrvcTMD+/mMCnbyjMy879OTAoyv/hZ5dkbTr3rcOklAGJKe14yoBt6Q0QuqSjeCTzGnde0/qBym9Xfe1m08WY7NcemtDtlT2oGO4WWJA116xesUrweqwL/vZ/yWNeeFzh/hI92gMEjV0NmElf+0iR8FhxDIFSP2pZYxerkUKo2aTULqNR8Uav8ugo3zAKVeb1NeWtYY4Ij8/XLFyfj+KJRBJtbhyB0TNryR3WFFQ3S1hDRA==
Received: from VE1EUR02FT015.eop-EUR02.prod.protection.outlook.com
	(10.152.12.59) by VE1EUR02HT175.eop-EUR02.prod.protection.outlook.com
	(10.152.13.111) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.919.10;
	Fri, 24 Feb 2017 12:10:24 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM (10.152.12.55) by
	VE1EUR02FT015.mail.protection.outlook.com (10.152.12.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.919.10 via Frontend Transport; Fri, 24 Feb 2017 12:10:24 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) by
	LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) with mapi id
	15.01.0919.018; Fri, 24 Feb 2017 12:10:24 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Intermittent Kernel Boot Hang 4.8/Intel Z5 Atom
Thread-Index: AQHSjoZKjWJAYTKLNk+d7Y0iQ23mwg==
Date: Fri, 24 Feb 2017 12:10:23 +0000
Message-ID: <LO1P123MB14126B59AF50D68E01D73A26DA520@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:B3358F835E1DC5EB94EE76BADC83540E169AF900C91C638E699EA5AFF292E5A9;
	UpperCasedChecksum:9552E3A6A6751C60605E9C8E3D4CBD5BECB5953D6E18D1C13600D45AB94EEBCA;
	SizeAsReceived:7609; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [o3nRTsEfX4/nym6hDI1Eb29JZp3hA5qe]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT175;
	7:0b+9SMlXpPg0vNsuyC+YxvrS/7n4slA1H4NGocUMcYFwtSYol1cLpEwh3fTuTh+NgYYt4GsI53491iG7nP452/1SQzxoX0pL4ppdyS2jKb/+W0xnF9LaXQWgyGai+yeqd90mmwATLszy9CURPttLbSsF4JarzbpwEiUAVpH2TUOv8yBJ39uM20j42QLVrFRuVi0Si6T35BM9ghQRJUFFMeKmW+KLqsjfSMnyQNwxntKYWIwQ7pD7uaXrBv1LsfPQ3Z7Z8P8gE+w6wQuhAa6Lvsu8lFd2nuooZNB++GlDDt4kNQNFcoQnSuLl/KOr2HNzYFXE63mfzWxBLTCxU0mOxQ==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900012);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR02HT175;
	H:LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 3b76f421-7150-437b-6df8-08d45cae1c9b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1601125254)(1701031045);
	SRVR:VE1EUR02HT175; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015087)(444000031); SRVR:VE1EUR02HT175; BCL:0; PCL:0;
	RULEID:; SRVR:VE1EUR02HT175; 
x-forefront-prvs: 0228DDDDD7
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2017 12:10:23.8514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT175
X-OriginalArrivalTime: 24 Feb 2017 12:10:27.0499 (UTC)
	FILETIME=[FC38DFB0:01D28E96]
Subject: Intermittent Kernel Boot Hang 4.8/Intel Z5 Atom
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
X-List-Received-Date: Fri, 24 Feb 2017 12:11:30 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Since switching kernel to 4.8 (Morty) I have noticed that sometimes my Inte=
l Atom hardware (Pokini) doesn't boot Linux.

Specifically, syslinux runs fine and starts the kernel but this then hangs =
immediately after displaying "Booting the kernel.", producing no further ou=
tput.

This is typical output, with one of my attempts to produce more output from=
 the kernel via serial:

> /vmlinuz initrd=3D/initrd LABEL=3Dboot root=3D/dev/ram0  video=3Defifb:of=
f video=3D640x480 console=3DttyS0,115200 verbose

Loading /vmlinuz... ok
Loading /initrd...ok

The issue seem to occur with some probability after powering the hardware b=
ut I've not seen it occur after a reboot.

4.1 and 4.4.36 are reliable and do not have any issues booting.

I've been looking through bugs/issue but not found anything relevant.  Does=
 anyone know of issues that I might not have found that would apply?

I've also been looking at how to get more diagnostics out of the boot.  I'v=
e tried a few suggested kernel boot parameters but nothing has helped so fa=
r.   It seems to go wrong too early.  Do I need to re-build the kernel to p=
roduce more output at the early stage it fails?

Thanks,
Chris=

