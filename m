Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AEAFE010BF; Fri,  6 Jul 2018 19:25:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.9.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10820 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Jul 2018 19:25:34 PDT
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-oln040092009061.outbound.protection.outlook.com [40.92.9.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D31C2E0084E
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 19:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=tx5f+IqV9GL2e6N72O1/XNlExX+J7v9IyE2ABqHmDpE=;
	b=Em9rbfFduUqt1EtDLd3pVOSDmAPZJwaD2Aic1aHmyet9jcnwdW0U4UZ3I9/KyT1hLeQNuL/QFizkZXajCUVLf5dwRoSGNcdjPExfh6yVLauDUCvGqHGGULlZxAf2tuHAMX3K2KzO66f392iGFrfM0IlvZu4TCuIh+nT2IeED6Ws24Y0xOfPrH2OcfzNoc/KgwfEBciGLClv+yg3DSEI/hfSxBRxLisaQFS8xnIecGMPncVjFIfwYLNAqHpNz+w15JHUY2RQvWXLZDOx77cy7TddGURDnPKTgY5Y3+zUWsF/9SUJXWPk/6X6TKzR64l/giAVQ27lNIseMs2y/MA4UNg==
Received: from CO1NAM04FT028.eop-NAM04.prod.protection.outlook.com
	(10.152.90.53) by CO1NAM04HT060.eop-NAM04.prod.protection.outlook.com
	(10.152.91.30) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Fri, 6 Jul 2018 21:52:54 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.90.53) by
	CO1NAM04FT028.mail.protection.outlook.com (10.152.90.87) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Fri, 6 Jul 2018 21:52:54 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.016;
	Fri, 6 Jul 2018 21:52:54 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Any  Linux/Yocto Image Installer (for target system)
Thread-Index: AQHUFXOx7sRayNuwSEi1lnlbDNd8Ig==
Date: Fri, 6 Jul 2018 21:52:54 +0000
Message-ID: <MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>,
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EF39FCEC9087A62AA6AB83FAB774901871124AF8708EB75F7546C4B6AA748139;
	UpperCasedChecksum:8DA338012FFB2E8CF0527574FD1F6722DBACC8B888EE9B9C0A0C547A6E3753D0;
	SizeAsReceived:7135; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [vRoA+zhU1Y7t7QlU5NkFqD+4n4P4Mnta]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CO1NAM04HT060;
	7:X6DA+9dkyOiPX7cQCxTp+fq7UiCOXr+kwmUTN70+LiVwO1xN6OQE04mEgW4kaNSp/u85QUYSziAadr6EUSiajOzUjksUMJpgizTHqUGUthrYj1pWf0Se6EU8MZhfMnhFQ1Cyb6lRzPzDIJaCP348/Nyi4v2bUx7d9GsDjhcEh9cTk/hgpEe4cL6vTu6Uyyk4G+8tkrKLlZ1BsOd5A14qCd48nLxwjVq9jdMCYPvuiUOkl/nhTftN+IJ//seh+Pju
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101448)(1701031045);
	SRVR:CO1NAM04HT060; 
x-ms-traffictypediagnostic: CO1NAM04HT060:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CO1NAM04HT060; BCL:0; PCL:0; RULEID:; SRVR:CO1NAM04HT060; 
x-forefront-prvs: 0725D9E8D0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(25786009)(6506007)(5640700003)(82202002)(2900100001)(20460500001)(256004)(55016002)(6606003)(11346002)(6436002)(6916009)(19627405001)(102836004)(7696005)(486006)(33656002)(476003)(76176011)(99286004)(87572001)(73972006)(8936002)(105586002)(14454004)(83332001)(68736007)(446003)(104016004)(1730700003)(81156014)(5660300001)(5250100002)(74316002)(2351001)(54896002)(106356001)(9686003)(8676002)(26005)(97736004)(6346003)(2501003)(86362001)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:CO1NAM04HT060;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: hY/oZOXfTcX3WaSOHNxEpv4tKporWILitp6zWUILdct346YQm8k911hTIrsPEhYQ8ERfvPESToRHF2455YyZX+PBB8vAsqkRookmhoR+q0hAF4vaPfLDACdJ3X1kD40Z4mpsVl8UZwcuCM3QlAavvyJI5J8UyVjvmYwSiG1dWpWvd2appVa/PVSwoi4+eYz5hGtmLJNkLTnDxnPfxbMjTUwUCSMoNvRa1efyQh6DMzo=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: cd25e1f7-8c05-4c42-ac9e-08d5e38ad41f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2018 21:52:54.6170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT060
Subject: Any Linux/Yocto Image Installer (for target system)
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
X-List-Received-Date: Sat, 07 Jul 2018 02:25:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183DC762147A7F8D864EF36C5470MWHPR19MB1183namp_"

--_000_MWHPR19MB1183DC762147A7F8D864EF36C5470MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there any installer that I could download along with the .hddimg (or .is=
o) image to the RAM, invoke the installer, so we could have a bootable imag=
e installed on a SSD?


History:

I can already create USB live image with dd and .hddimg.  I could also dd t=
he .hddimg onto SSD and make it bootable.  The problem is that I need multi=
ple partitions on my 250MB SSD, some reserved for other purposes.


I find that when booting up with USB running SysLinux, I could install GRUB=
, vmlinuz, along with boot.img and core.img under /boot directory, and the =
rootFs under root (i.e. '/') directory.  That's 4 partitions.  I believe I =
could resize the largest partition after installation to do what I want.


Is there a way to do this manually, possibly with a utility or a shell scri=
pt?


Thanks,

Raymond

--_000_MWHPR19MB1183DC762147A7F8D864EF36C5470MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Is there any installer that I cou=
ld download along with the .hddimg (or .iso) image to the RAM, invoke the i=
nstaller, so we could have a bootable image installed on a SSD?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">History:</p>
<p style=3D"margin-top:0;margin-bottom:0">I can already create USB live ima=
ge with dd and .hddimg. &nbsp;I could also dd the .hddimg onto SSD and make=
 it bootable. &nbsp;The problem is that I need multiple partitions on my 25=
0MB SSD, some reserved for other purposes.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I find that when booting up with =
USB running SysLinux, I could install GRUB, vmlinuz, along with boot.img an=
d core.img under /boot directory, and the rootFs under root (i.e. '/') dire=
ctory. &nbsp;That's 4 partitions. &nbsp;I believe
 I could resize the largest partition after installation to do what I want.=
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Is there a way to do this manuall=
y, possibly with a utility or a shell script?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<div style=3D"color: rgb(0, 0, 0);">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0"></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183DC762147A7F8D864EF36C5470MWHPR19MB1183namp_--
