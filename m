Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6904E009DF; Fri,  4 May 2018 15:25:41 -0700 (PDT)
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
	no *      trust
	*      [40.92.7.107 listed in list.dnswl.org]
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
X-Greylist: delayed 39716 seconds by postgrey-1.32 at yocto-www;
	Fri, 04 May 2018 15:25:40 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007107.outbound.protection.outlook.com [40.92.7.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4F05E009DF
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 15:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=9BtNcfXqGlWjDrkW601xSEaUt6khbMW4lyvb6WW4q8U=;
	b=Kiopoe9d2f5t9q1n2qwzh7eUPVN7p/UsTvEGQHA0pkDSkuRKweII0kDNCxaMr3SV8y2tE4mJY0mLg55t4HrVpKzqf33rjbZIw+co8m2Vju10uUeDSnTtslGe+nt5WxK/KY2cIE2xdt4whrrkiDZfTat5Zfj6R4GCvyqih/bxECUTl7b+bkfdov+NkM2gG01foSlC+GgdC/BlDF1kf7ACgmAwaeUbUDRa5rrw5BHAxrBhi1jaXB2mspjBwfZRqk22h3UnSiT03YaYJx3nTqI05BK7dFpMii6vlogNT1xRgZgRx2LSvFE5d4GII7k+XNBkn4Y24XbjY+3ob8mmvWLDTg==
Received: from CO1NAM03FT010.eop-NAM03.prod.protection.outlook.com
	(10.152.80.51) by CO1NAM03HT167.eop-NAM03.prod.protection.outlook.com
	(10.152.81.122) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.715.13;
	Fri, 4 May 2018 02:50:32 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.80.54) by
	CO1NAM03FT010.mail.protection.outlook.com (10.152.80.104) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.13 via Frontend Transport; Fri, 4 May 2018 02:50:32 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0715.024;
	Fri, 4 May 2018 02:50:32 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to locate this yocto git rep?
Thread-Index: AQHT41Kr8K3pmrry5km8VifGfNl59g==
Date: Fri, 4 May 2018 02:50:32 +0000
Message-ID: <MWHPR19MB118308C44C6A00516B5A0339C5860@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB118333915F5E542DE68C340EC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB118333915F5E542DE68C340EC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:4EAEC08CD8B9DB6E7C8463F6DE5A9FD0E2ED760853BDE799897445C0759827B7;
	UpperCasedChecksum:2A035921B96D69AC0E4D888E7DBE43351E6375A47329D4358650B33198FDEC8F;
	SizeAsReceived:7176; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [oEIZAepr9BZdaZ440EeJe4m59CpeywQh]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CO1NAM03HT167;
	7:ZerCeRwC5sklcl8yN6LrgRZb/35Ft/EJoVWKH/Y14sbJqGflO9NT6WKKdF0gTnZbCvLarTl4UyTHuZ1xsyqzdPB5gq+47amvAyHASBzZpOmvgE2OmT6WfO7NiM0FH6nhyE2EqKHnUfUJlO2sKP3LCbmyvSwJcO/ONfMsBG3yjLiwCZrjV5pP/HR4IF4dZsPfdjs9k3y3fXDBG186/MoXgZnIKpNr4mWuB2dGvbpkDgNS4/S+da9deRFkyy4xtpEZ
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:CO1NAM03HT167; 
x-ms-traffictypediagnostic: CO1NAM03HT167:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CO1NAM03HT167; BCL:0; PCL:0; RULEID:; SRVR:CO1NAM03HT167; 
x-forefront-prvs: 06628F7CA4
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:CO1NAM03HT167;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: 6fzeIxNeIAw1WnI+2hXW66jf1CW9DspfmlQdpRNUxj1gVcN2pqRBth1N4olG9syBwJ6fKgy0jd5TJm3NUggBDgKAttzC2Uv6Wu9DF8npXUubRVDNlxUK/8xjC0ygK197RwLxDnKLxPRvjjuFp9bWB9TYr89M1JiH+SplHnRaOp0iom4UQOzpB3nAtVwPTDHT
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 3aedc84c-570c-4676-aadb-08d5b169cdff
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aedc84c-570c-4676-aadb-08d5b169cdff
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2018 02:50:32.7779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM03HT167
Cc: "Abhishek.Paliwal@aricent.com" <Abhishek.Paliwal@aricent.com>
Subject: How to locate this yocto git rep?
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
X-List-Received-Date: Fri, 04 May 2018 22:25:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB118308C44C6A00516B5A0339C5860MWHPR19MB1183namp_"

--_000_MWHPR19MB118308C44C6A00516B5A0339C5860MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've changed the subject heading in hope I getting better luck.


I found a file/driver of interest to me via googling:  https://lists.yoctop=
roject.org/pipermail/linux-yocto/2015-May/003647.html


The file is tlk10232.c.  The thread above seems to say that I could get it =
via


git clone git://git.yoctoproject.org/linux-yocto-contrib


And so I did the clone.  However, I'm unable to find the file after all.  A=
m I on the right track?  And how do I check history to see perhaps it was r=
emoved later?


Thanks,

Raymond



________________________________
From: Raymond Yeung <rksyeung@hotmail.com>
Sent: Tuesday, May 1, 2018 12:51 PM
To: yocto@yoctoproject.org
Subject: TI TLK10031 Driver Needed


What is the best way to search for existing driver support (in particular, =
driver for TLK10031) in YP?  I search my own Poky source and its build tree=
, but find nothing.  I saw on google returned result mentioning of one inst=
ance for a similar chip (TLK10232), but don't know which branch/repo it's f=
rom.


Thanks,

Raymond

--_000_MWHPR19MB118308C44C6A00516B5A0339C5860MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">I've changed the subject heading =
in hope I getting better luck.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I found a file/driver of interest=
 to me via googling: &nbsp;<a href=3D"https://lists.yoctoproject.org/piperm=
ail/linux-yocto/2015-May/003647.html" class=3D"OWAAutoLink" id=3D"LPlnk7489=
17" previewremoved=3D"true">https://lists.yoctoproject.org/pipermail/linux-=
yocto/2015-May/003647.html</a></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">The file is&nbsp;tlk10232.c. &nbs=
p;The thread above seems to say that I could get it via&nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">git clone git://git.yoctoproject.=
org/linux-yocto-contrib<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">And so I did the clone. &nbsp;How=
ever, I'm unable to find the file after all. &nbsp;Am I on the right track?=
 &nbsp;And how do I check history to see perhaps it was removed later?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Raymond Yeung &lt;rks=
yeung@hotmail.com&gt;<br>
<b>Sent:</b> Tuesday, May 1, 2018 12:51 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> TI TLK10031 Driver Needed</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">What is the best way to search f=
or existing driver support (in particular, driver for TLK10031) in YP? &nbs=
p;I search my own Poky source and its build tree, but find nothing. &nbsp;I=
 saw on google returned result mentioning of
 one instance for a similar chip (TLK10232), but don't know which branch/re=
po it's from.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks,</p>
<p style=3D"margin-top:0; margin-bottom:0">Raymond</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB118308C44C6A00516B5A0339C5860MWHPR19MB1183namp_--
