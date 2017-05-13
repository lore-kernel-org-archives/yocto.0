Return-Path: <steove@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 319FFE00968; Sun, 14 May 2017 22:26:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (steove[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.253.108 listed in list.dnswl.org]
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
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
X-Greylist: delayed 61291 seconds by postgrey-1.32 at yocto-www;
	Sun, 14 May 2017 22:25:58 PDT
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-oln040092253108.outbound.protection.outlook.com
	[40.92.253.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23D0FE00901
	for <yocto@yoctoproject.org>; Sun, 14 May 2017 22:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Pd4VJtFi9dkgUo+26kyN6NRxldBgPkpp1B2UzIUBnP8=;
	b=OS2+0ai4L6HlrCS+lN+9CmiWVXb6l7O3enI+fs8Li3O1zSwhcfKR+OrkZJdGB8ePFmcRV6oazeF4AhOTyw3YJTk95PUNS0SuDnVm6B3De/H1UyCyEszHFJwtH2LoLhcPh0olMQa3E3q6ntjaC3cE5FpkjEq7OXCbYUA2psc5w1XHooa2b+j8QZjul38j8VdwvnVDcZ1E0VqKi282Ew6hP4RS9nl42PSzSFwmrQSE+9USaziTVPESAInQ/iLJIxop0vejXrXfcwRe5uyi/zRHAGgWAbgTshLQKHpaSZWdhGvdEEGxAK6qU6oZOm8NlIVULQ0M42CnFX3JjeRJXihxAg==
Received: from HK2APC01FT111.eop-APC01.prod.protection.outlook.com
	(10.152.248.58) by HK2APC01HT215.eop-APC01.prod.protection.outlook.com
	(10.152.249.75) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1047.9;
	Sat, 13 May 2017 12:47:20 +0000
Received: from SINPR03MB2270.apcprd03.prod.outlook.com (10.152.248.58) by
	HK2APC01FT111.mail.protection.outlook.com (10.152.248.163) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1075.5 via
	Frontend Transport; Sat, 13 May 2017 12:47:20 +0000
Received: from SINPR03MB2270.apcprd03.prod.outlook.com
	([fe80::8d4f:845f:fb96:98bc]) by
	SINPR03MB2270.apcprd03.prod.outlook.com
	([fe80::8d4f:845f:fb96:98bc%18]) with mapi id 15.01.1101.009;
	Sat, 13 May 2017 12:47:20 +0000
From: Steve Plant <steove@hotmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Thread-Topic: [yocto] Raspberry pi build with QT5 creator...... failing to
	compile.
Thread-Index: AQHSyZBFgfgBdEkauUKI6sh/rekTfaHxMnwAgAECDY0=
Date: Sat, 13 May 2017 12:47:20 +0000
Message-ID: <SINPR03MB22705F7BAEB598A513346E5AD1E30@SINPR03MB2270.apcprd03.prod.outlook.com>
References: <SINPR03MB227019BABCDFF61CF3539FFAD1EC0@SINPR03MB2270.apcprd03.prod.outlook.com>,
	<CAHUNapSTVu=hAuSz+hhDd+dbdFHSaN8Oy90OWz-yq6zkck3LCA@mail.gmail.com>
In-Reply-To: <CAHUNapSTVu=hAuSz+hhDd+dbdFHSaN8Oy90OWz-yq6zkck3LCA@mail.gmail.com>
Accept-Language: en-NZ, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=none action=none header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:EA1E3CF186A1CBDCE71DA43E0C5D2022AA7173B57F3B763D67A0370F8B0E0FEF;
	UpperCasedChecksum:1F787C968155579F319FD88B905175CB5D3F808BF04B8E527595CB375D81673E;
	SizeAsReceived:8439; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [J9wgwjGOtY7KbhwbCuYM7Pw87NB848hkOavg/LhAurE=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2APC01HT215;
	5:OPznKSEzyQvRe58xAnxYBSW2kqxfLRB3bfJMT63g5r76OVJhbuXaE27rVc6KrZtDyHVxYITjRZdOMjXb/OufmYZdEiBdtFExgq0dc7MiL8zR6hH+zP6znI5OABsK/kIStIPYTYSqxJkUYoecqEaUfQ==;
	24:gSOwbBN+ocCXlea7MhxLmZ809NIagjx7nW/9psD2WmhpPvX+Rtu7EDHAIaPB+sJ2PR1e3XLH1ySk6t0zea06hzTcpu8d5QfLQnP4Q2Kqhqw=;
	7:e8hardOheujIZqtuM9tzMveYexFeI1LTb9R9shsny0FO0rhiHFEIbFP6Eu9SrW7Cbq2A6wr7sjDkejwga8DYOZ+xYznUhBXcbj2GiADFWkIUH4V42r7TcVpIwR5kNQcMx6Y4IyMy8CB37YzM3551JlPaNyGpuYwxSkSUXE7sqy7dzI7QTds9hYSHFSQqc8qlqoeLkvgOHizIjOiQwX5XTcyzXFoirnaGTF1UWXoiirtSjvpvpqbQ3BjRVrPMTlv3A8h5A3v4X0PNkXbTHNSK/0vfBB+hVo07/7fblidpSPRy5lqwLvwadq6MGwT+vILr
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HK2APC01HT215;
	H:SINPR03MB2270.apcprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 47a02f2d-1a09-4a96-c0dc-08d499fe31f7
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:HK2APC01HT215; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:HK2APC01HT215; BCL:0; PCL:0; RULEID:; SRVR:HK2APC01HT215; 
x-forefront-prvs: 0306EE2ED4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2017 12:47:20.3124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT215
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry pi build with QT5 creator...... failing to compile.
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
X-List-Received-Date: Mon, 15 May 2017 05:26:02 -0000
Content-Language: en-AU
Content-Type: multipart/alternative;
	boundary="_000_SINPR03MB22705F7BAEB598A513346E5AD1E30SINPR03MB2270apcp_"

--_000_SINPR03MB22705F7BAEB598A513346E5AD1E30SINPR03MB2270apcp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Yes, you are correct, sorry if I had not made that clear. I=92m currently c=
ross compiling QT5 code on a windows machine running debian through Virtual=
Box which is then downloaded onto a Beaglebone Black embedded project. Alth=
ough it works, its often prone to little idiosyncrasies which can take hour=
s to figure out.

The idea is to compile the QT5 code on the raspberry pi and download straig=
ht to the target system, because both are ARM based is cuts out a lot of ex=
tra steps, hopefully making development smoother.

The idea of using the Yocto project is that I can custom build both platfor=
ms with pretty much an identical image (less GUI for the beaglebone)

That=92s the plan...... could change at any time....


Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10

From: Trevor Woerner<mailto:twoerner@gmail.com>
Sent: Saturday, 13 May 2017 7:00 AM
To: Steve Plant<mailto:steove@hotmail.com>
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Raspberry pi build with QT5 creator...... failing to c=
ompile.

Hi Steve,

It seems like there's a lot of stuff going on at the same time. So to
start I'd like to just focus on one thing at a time.

On Wed, May 10, 2017 at 9:40 AM, Steve Plant <steove@hotmail.com> wrote:
> I'm currently attempting to build a raspberry pi image, which I can use t=
o
> develop QT5 code for a beaglebone black.

This statement is very confusing to me.

It sounds like you want to build an image for the raspi, boot that
image on a pi, hookup a keyboard, mouse, monitor to the pi, write qt5
code on the pi, and compile that code on the pi to run on a
beaglebone. Is that your goal?

Best regards,
    Trevor


--_000_SINPR03MB22705F7BAEB598A513346E5AD1E30SINPR03MB2270apcp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-AU" link=3D"blue" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi Trevor,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yes, you are correct, sorry if I had not made that c=
lear. I=92m currently cross compiling QT5 code on a windows machine running=
 debian through VirtualBox which is then downloaded onto a Beaglebone Black=
 embedded project. Although it works,
 its often prone to little idiosyncrasies which can take hours to figure ou=
t.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The idea is to compile the QT5 code on the raspberry=
 pi and download straight to the target system, because both are ARM based =
is cuts out a lot of extra steps, hopefully making development smoother.
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The idea of using the Yocto project is that I can cu=
stom build both platforms with pretty much an identical image (less GUI for=
 the beaglebone)</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">That=92s the plan...... could change at any time....=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>From: </b><a hr=
ef=3D"mailto:twoerner@gmail.com">Trevor Woerner</a><br>
<b>Sent: </b>Saturday, 13 May 2017 7:00 AM<br>
<b>To: </b><a href=3D"mailto:steove@hotmail.com">Steve Plant</a><br>
<b>Cc: </b><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject: </b>Re: [yocto] Raspberry pi build with QT5 creator...... faili=
ng to compile.</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Hi Steve,<br>
<br>
It seems like there's a lot of stuff going on at the same time. So to<br>
start I'd like to just focus on one thing at a time.<br>
<br>
On Wed, May 10, 2017 at 9:40 AM, Steve Plant &lt;steove@hotmail.com&gt; wro=
te:<br>
&gt; I'm currently attempting to build a raspberry pi image, which I can us=
e to<br>
&gt; develop QT5 code for a beaglebone black.<br>
<br>
This statement is very confusing to me.<br>
<br>
It sounds like you want to build an image for the raspi, boot that<br>
image on a pi, hookup a keyboard, mouse, monitor to the pi, write qt5<br>
code on the pi, and compile that code on the pi to run on a<br>
beaglebone. Is that your goal?<br>
<br>
Best regards,<br>
&nbsp;&nbsp;&nbsp; Trevor<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_SINPR03MB22705F7BAEB598A513346E5AD1E30SINPR03MB2270apcp_--
