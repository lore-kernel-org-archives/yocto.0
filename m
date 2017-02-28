Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E04EE0074B; Tue, 28 Feb 2017 03:56:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.90.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Feb 2017 03:56:46 PST
Received: from SNT004-OMC1S14.hotmail.com (snt004-omc1s14.hotmail.com
	[65.55.90.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 196DDE0050B
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 03:56:46 -0800 (PST)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.55.90.9]) by
	SNT004-OMC1S14.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 28 Feb 2017 03:55:38 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=PWfazMjQrVgiDl+ix5M99BHaejgLewpXkEnOaVyGDus=;
	b=D/blrB1PlAtAXBdO1HscUdkF+msGnPhlwC2vdJi2tBeGJ3dQX2JLteW0J4qm7Xp9vtkKovDkMjMbJDev/Cv3Upyq799HsTJXOm3njMUsS5kGoQFZ6rRVwh6ebe27mdDSssTyHgxCOX1jnWVhJv3uD/wouP0SWsXuPbxjK3jm4v8HBl8haKuCfVObaAJz6m10DNHPBcXeGPhxJACxzaX2CC1tv/oIwsS1UPeUKlP3/DCo1NrH+LarQMfEehqXobRjyb8GXv9xn+wVtRTBNuRSH5ISs5Lr0KerwuLAlX4lsOhmFhA7txQ/fEZS7FiMtLjfGy41Bqnnu0KCgD27xnYYlg==
Received: from HE1EUR02FT048.eop-EUR02.prod.protection.outlook.com
	(10.152.10.58) by HE1EUR02HT099.eop-EUR02.prod.protection.outlook.com
	(10.152.11.239) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.919.10;
	Tue, 28 Feb 2017 11:55:33 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM (10.152.10.58) by
	HE1EUR02FT048.mail.protection.outlook.com (10.152.10.243) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.933.11 via Frontend Transport; Tue, 28 Feb 2017 11:55:32 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) by
	LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) with mapi id
	15.01.0933.020; Tue, 28 Feb 2017 11:55:32 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Intermittent Kernel Boot Hang 4.8/Intel Z5 Atom
Thread-Index: AQHSjoZKjWJAYTKLNk+d7Y0iQ23mwqF+UMdC
Date: Tue, 28 Feb 2017 11:55:32 +0000
Message-ID: <LO1P123MB14126A29E1FE6706120D8B4FDA560@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
References: <LO1P123MB14126B59AF50D68E01D73A26DA520@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LO1P123MB14126B59AF50D68E01D73A26DA520@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:D19B168D75F8A40F82454012ADD47862097D26F812DAE16ACA3A39FB645C164E;
	UpperCasedChecksum:123858658EFAE6A65824A28139FCD744286A1E4C175DD128F87135DFDEA61147;
	SizeAsReceived:7791; Count:39
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [7IkZS3q1NXasM9EJxti3t9FlIJbNEady]
x-incomingheadercount: 39
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT099;
	5:HRIayku84CGpfoJfQ3TNGtzXK2+/x0HNSs01h3gx3VICTtJo9KzU6I7E/b0Gftooz3o5lEOq6D066ypsjY9rKB2btagCMXhmpbKzN25oJomgj1U4e5qW9t1oUZ5ENrL86cAQm2JGjhr9NvEoeLOWMw==;
	24:khx+dS9M/6HN9UbTuCeRd7Yt96mjucUqW2eL/hvJilH7ZRKJofEtbSiCLkCd0H0j87M/ItdqS0rlrc2XTc2w0GB3PiKsF/A4GtAK5iLz+Vo=;
	7:H3CqTfkoRM4kuuVTThesRC1bDBR6qRUQppjoMyGcFteJw5rA74yUo3bbXmUhKtveAL1Wr6GHl96LC/n8FKA5IczQzuCH2DEfs/YaVeBCtOGS7F9X9jRd5V9logLw5gRWwt6igOwo37x12T/6dBnDaXmfMCukTdL4qYlmGidkjeyzaull9byPpBqsQ5EN93OKkm7VvdQ4Xk1QAx2UOpHywntnvHJRspHw/8W6ZfUW6IvDHSxSafjRHMstQHBQ/ArTk4aMlfCglEPlQccJdROKGbqYAP8GuUdtokQEdVGz7JZrCKCQmyWLIAU/hvhmoQvj
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900012);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR02HT099;
	H:LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: f0f406b1-eb0d-490c-210e-08d45fd0b2d0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(1601125254)(1603101448)(1701031045);
	SRVR:HE1EUR02HT099; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(432015087)(444000031); SRVR:HE1EUR02HT099; BCL:0; PCL:0;
	RULEID:; SRVR:HE1EUR02HT099; 
x-forefront-prvs: 0232B30BBC
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2017 11:55:32.2965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT099
X-OriginalArrivalTime: 28 Feb 2017 11:55:38.0563 (UTC)
	FILETIME=[94070130:01D291B9]
Subject: Re: Intermittent Kernel Boot Hang 4.8/Intel Z5 Atom
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
X-List-Received-Date: Tue, 28 Feb 2017 11:56:49 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Advice on how to proceed with this?

Current Yocto (morty) kernels include 4.1, 4.4 that work and 4.8 that doesn=
't.

Intermittent hang during power-on kernel boots before/without any diagnosti=
c output.  Can I compile the kernel to output more than boot options allow?

I could fix this BSP to 4.4 (if that will hang around) and this is old hard=
ware so it won't hang around for more than a few years.

I can't find anything that appears related to this on the web.  Not sure ab=
out going through intermediate kernel versions with yocto other than going =
back to older versions of poky for ones that are missing.  I thought about =
the Linux kernel site but nothing in bugzilla or archives and this may not =
be of sufficient interest without more information.

Thanks,
Chris

From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Chris Trobridge <christrobridge@hotmail.com>
Sent: 24 February 2017 12:10
To: Yocto List
Subject: [yocto] Intermittent Kernel Boot Hang 4.8/Intel Z5 Atom
=A0  =20
Since switching kernel to 4.8 (Morty) I have noticed that sometimes my Inte=
l Atom hardware (Pokini) doesn't boot Linux.

Specifically, syslinux runs fine and starts the kernel but this then hangs =
immediately after displaying "Booting the kernel.", producing no further ou=
tput.

This is typical output, with one of my attempts to produce more output from=
 the kernel via serial:

> /vmlinuz initrd=3D/initrd LABEL=3Dboot root=3D/dev/ram0=A0 video=3Defifb:=
off video=3D640x480 console=3DttyS0,115200 verbose

Loading /vmlinuz... ok
Loading /initrd...ok

The issue seem to occur with some probability after powering the hardware b=
ut I've not seen it occur after a reboot.

4.1 and 4.4.36 are reliable and do not have any issues booting.

I've been looking through bugs/issue but not found anything relevant.=A0 Do=
es anyone know of issues that I might not have found that would apply?

I've also been looking at how to get more diagnostics out of the boot.=A0 I=
've tried a few suggested kernel boot parameters but nothing has helped so =
far.=A0=A0 It seems to go wrong too early.=A0 Do I need to re-build the ker=
nel to produce more output at the early  stage it fails?

Thanks,
Chris
--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


yocto Info Page
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.

    =

