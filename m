Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E0D6E00826; Mon, 16 Jan 2017 11:48:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.213 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC4S11.hotmail.com (bay004-omc4s11.hotmail.com
	[65.54.190.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01158E007CE
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 11:47:57 -0800 (PST)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com ([65.54.190.199])
	by BAY004-OMC4S11.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 16 Jan 2017 11:47:56 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=2un4PdVZGniK0SqIMz/dHSx7B6DfBy15UOPV+QYggnk=;
	b=qn6Sc1Ffsy75Azsilcm61m2jcAW62po20I40TSZTQl/lW+O3jd1yg6eXcHNR73Kbga7YTw848swEOGNwnmXcPE4HWkoZAKqzoCyM8X452HYxrrTi6E/n+Gl9Y85EMQBtX+8DZdzsEhoh3/II7PPUYxRpSqwJsotsfv/J/LuaU7anvnt9UeVSi8xlLB21qrub/8xAbL1pXuKmzsQWL6xjyoFavCqNHnop7+h+B2ke1eXp3NpkFT9IJ53Wdu4bKGBfT7aP1a8hh7nQN62nRfZV0bYznA2rkjoj8ERlrFYC6tBopk+a2eWOdcdQOOGn9amtMA/XbZezqH0LckKCmCwbxA==
Received: from VE1EUR03FT064.eop-EUR03.prod.protection.outlook.com
	(10.152.18.55) by VE1EUR03HT003.eop-EUR03.prod.protection.outlook.com
	(10.152.18.166) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.789.10;
	Mon, 16 Jan 2017 19:47:55 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM (10.152.18.56) by
	VE1EUR03FT064.mail.protection.outlook.com (10.152.19.210) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Mon, 16 Jan 2017 19:47:55 +0000
Received: from MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) by
	MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM ([10.166.236.147]) with mapi id
	15.01.0845.013; Mon, 16 Jan 2017 19:47:55 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Illegal Instruction Generate for Intel Atom
Thread-Index: AQHSb9G3VMe0fiyhnk+6NGfdUXF80aE63loAgAA0ZpCAACtlgIAAQj5e
Date: Mon, 16 Jan 2017 19:47:54 +0000
Message-ID: <MMXP123MB0125C7447C235B19EEB09CA1DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
	<MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>,
	<CAJTo0LaSMudTXAh5AzsqTb+rU2Cyc66UoE0jY48SJaW24hCdmQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaSMudTXAh5AzsqTb+rU2Cyc66UoE0jY48SJaW24hCdmQ@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: sidebranch.com; dkim=none (message not signed)
	header.d=none; sidebranch.com;
	dmarc=none action=none header.from=hotmail.com; 
x-incomingtopheadermarker: OriginalChecksum:90BFBEF5FFDB72064D738A554B0AD2C86C4EC04DCBF0D0A8D44A128D39169F97;
	UpperCasedChecksum:858B05DC4DED298C720051015B536EC11D5CB5BEF6B53DED0FC627C6619576B6;
	SizeAsReceived:8016; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [qBvC/NrSrGHK2XoKCHb0KiJP0FSO1rSr]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT003;
	7:2pWBEoQCeHiTnzn2Q5OO3fn9991SE2OjF8/XPXAVFNgTSQXj+RHYVbWDpaCdPwON0Zi95NnotsX40Og1PTGOw9rQUGuWnd9DZ1VG0Lkncv0hcf9ybHnrQIiUnkqWQ3uiD0UVkyS/2lFYlbEhy3kYM0li5luTtvtyCMwUv7Xs8u3o0uOuFV3rbMqu5H99J9FdO8R3txO7iBG72PyAlSHjQGwqHoVC1cH6uQoS0ANspLE6HSemN5Zi+uhtVYXIQhm+dVP5RDm5XA3mF1bRcWEn1ednZJO+qyjeDwbNIJG/CQCLzJSzxNWMItnlvrg5otpKU3ZG5x5AlF0zJ258MSu08hw7wZNT9SyzM20XzDNzqgOEE7XkUhowpUbB37F+9bcNUpxCwTsXnAthFNKNbwrFsg/mGL5r9BesAh6JXrJxaTXJRkwvvRg2skQBDfG/XSZ1h2PVMsi4Hd8uFWv8EJQy+A==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR03HT003;
	H:MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 888baebb-dbeb-4094-8e8c-08d43e4890a3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(5061506344)(5061507293)(1603103113)(1601125047)(1701031023);
	SRVR:VE1EUR03HT003; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:VE1EUR03HT003; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT003; 
x-forefront-prvs: 01894AD3B8
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2017 19:47:54.9976 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT003
X-OriginalArrivalTime: 16 Jan 2017 19:47:56.0798 (UTC)
	FILETIME=[6F2B41E0:01D27031]
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 19:48:01 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MMXP123MB0125C7447C235B19EEB09CA1DA7D0MMXP123MB0125GBRP_"

--_000_MMXP123MB0125C7447C235B19EEB09CA1DA7D0MMXP123MB0125GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Ross,


I came to that conclusion too, and changes to the asterisk build system was=
 really always the most likely source of the problem.  On the plus side, I =
have learned a lot more about machine/processor configuration in the bsp la=
yers pursuing that dead end.


I went back through the asterisk change notes and at some point in the past=
 they decided to use -march=3Dnative as a means to produce the best optimis=
ed code, while still retaining the option to disable this.


There are some more notes from last summer about changing how this is confi=
gured, and it certainly defaults to enabled since then.  BUILD_NATIVE is an=
 option in their 'menuselect' so I need to configure that, as the clean sol=
ution, rather than just patching their makeopts.


Regards,

Chris

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: 16 January 2017 15:40
To: Chris Trobridge
Cc: Leon Woestenberg; Yocto List
Subject: Re: [yocto] Illegal Instruction Generate for Intel Atom


On 16 January 2017 at 14:47, Chris Trobridge <christrobridge@hotmail.com<ma=
ilto:christrobridge@hotmail.com>> wrote:

Managed to get the actual compiler lines and the initial args are "-m32 -ma=
rch=3Di586" but there is "-march=3Dnative" appended to the end of the line.

Looks like asterisk itself is adding -march=3Dnative, so you'll need to dig=
 through it's makefiles and work out how to disable it (or just delete them=
).

Ross

--_000_MMXP123MB0125C7447C235B19EEB09CA1DA7D0MMXP123MB0125GBRP_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Thanks Ross,</p>
<p><br>
</p>
<p>I came to that conclusion too, and changes to the asterisk build system =
was really always the most likely source of the&nbsp;problem. &nbsp;On the =
plus side, I have&nbsp;learned a lot more about machine/processor configura=
tion in&nbsp;the bsp layers pursuing that dead end.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><br>
</p>
<p></p>
<p>I went back through the asterisk change notes and at some point in the p=
ast they decided to use -march=3Dnative as a means to produce the best opti=
mised code, while still retaining the option to disable this.</p>
<p><br>
</p>
<p>There are some more notes from last summer about changing how this is co=
nfigured, and it certainly defaults to enabled since then. &nbsp;BUILD_NATI=
VE is an option in their 'menuselect' so I need to configure that, as the c=
lean solution, rather than just patching
 their makeopts.</p>
<p><br>
</p>
<p><span style=3D"font-size: 12pt;">Regards,</span><br>
</p>
<p>Chris</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> 16 January 2017 15:40<br>
<b>To:</b> Chris Trobridge<br>
<b>Cc:</b> Leon Woestenberg; Yocto List<br>
<b>Subject:</b> Re: [yocto] Illegal Instruction Generate for Intel Atom</fo=
nt>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 16 January 2017 at 14:47, Chris Trobridge <sp=
an dir=3D"ltr">
&lt;<a href=3D"mailto:christrobridge@hotmail.com" target=3D"_blank">christr=
obridge@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<p>Managed to get the actual compiler lines and the initial args are &quot;=
<span>-m32 -march=3Di586&quot; but</span>&nbsp;there is &quot;<span>-march=
=3Dnative&quot; appended to the end of the line.</span></p>
<p></p>
</blockquote>
</div>
<br>
Looks like asterisk itself is adding -march=3Dnative, so you'll need to dig=
 through it's makefiles and work out how to disable it (or just delete them=
).</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MMXP123MB0125C7447C235B19EEB09CA1DA7D0MMXP123MB0125GBRP_--
