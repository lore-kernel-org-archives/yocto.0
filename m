Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 814C8E00524; Tue, 10 Jan 2017 07:41:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.111.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BLU004-OMC4S17.hotmail.com (blu004-omc4s17.hotmail.com
	[65.55.111.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1765BE003E1
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 07:41:45 -0800 (PST)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([65.55.111.136])
	by BLU004-OMC4S17.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 10 Jan 2017 07:41:45 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=xsVMamEd9uvM+cgLuv5ZQfXSrHFNGtOpx+4HP/gMcS4=;
	b=cDJHLc+bGYsJuhw9sr6TECTuOygZC2F2ESUhOG9zY80spRzdcvwvx3gJ9CUNwvUDWCTm6j5sP+3dvgMXvmRvs3FdlAcYGtQJnX0mm7omoxRB9dgZvmYSk2AgJA2R+mbAYDHwl+98UY8iQsAsaWgqacH9cMVhws7m64/f4MRHmzCWEzuF0yB4zmGuSdH35AcGfdoET/+CungczLJuF+dmZefRoYxKMbxNZoVLcWi4BLQBuMAeudGxlUOervPBfWsWWtO1nZ4mhIXEUBCnReGH+dpCyZD7t78shdiFx88/QpT75u5uJXHQSaZci1+DLoOQ9zjVMHIYWTKzl6XIEP/t/A==
Received: from HE1EUR01FT017.eop-EUR01.prod.protection.outlook.com
	(10.152.0.51) by HE1EUR01HT086.eop-EUR01.prod.protection.outlook.com
	(10.152.1.100) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.789.10;
	Tue, 10 Jan 2017 15:41:43 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com (10.152.0.56) by
	HE1EUR01FT017.mail.protection.outlook.com (10.152.0.166) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Tue, 10 Jan 2017 15:41:43 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.210])
	by AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.210])
	with mapi id 15.01.0845.012; Tue, 10 Jan 2017 15:41:43 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIVE_SYSROOT
	variables not availables ?
Thread-Index: AQHSa1eW6OAJtC4moUWLJnQC9mFtAw==
Date: Tue, 10 Jan 2017 15:41:43 +0000
Message-ID: <AMSPR01MB18430DE5FD33B321C4C42E192670@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:C9892F64F4BF1FF04C2AEA8EEB1C174FDB4E2BF0F777B34F55A26F3D5B81A03D;
	UpperCasedChecksum:E3DCBB6B7BACA35E733828C9AC3777DB16EC83BC31033024EF20DC91DCBF2439;
	SizeAsReceived:7594; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [m8Kc/MUhkitSPlsWsqIFgrUJKJOKQPMP]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; HE1EUR01HT086;
	7:jicBEGm50w5YPn4wlcbCw9o9vfPnmgRXjWREQcm/akkKLNZJFmiZiZvImYiRd8BasJVzM2zn4JHta+ECTnm31wKY28gj5gV0AZOydjZVFnmSGZiX6Zq24IjJr4jnfc3Gu1m8I7Hk+R+6QOsAlvbHkDQs90tQIOWJSbo6AyUjQ95I6DIryArJmXZdsiu7CFdWLt9ISm7EOxF6XSoo+gntaG5erYHuFpHtnO+J1w3WXqKuXOlSfQExT6nBvw4E3MnuaYoUoOoWWOmvO69maIrPIz1fc96BPJjfoXoD2fD7xmhBR9i4Y6JIWqI2c2i/ioswJ0Glm4Sq4DT4fUcSJRlqVgSmrE61GXG/CWItq82zzbdKNCH0AePNQfSs4vQqvh/8KoG4TNfO69zXBV5L/0cjOD+VEmgf25ygSrItbTRkRbbUIBNBJK/CIenuK+i8d0lggWBadYOKj8ZUoCfolbUwrA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1EUR01HT086;
	H:AMSPR01MB184.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 349f4a24-8122-4d93-2b93-08d4396f2d81
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(1603103113)(1601125047)(1701031023);
	SRVR:HE1EUR01HT086; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:HE1EUR01HT086; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR01HT086; 
x-forefront-prvs: 01834E39B7
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2017 15:41:43.1325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT086
X-OriginalArrivalTime: 10 Jan 2017 15:41:45.0251 (UTC)
	FILETIME=[0C298F30:01D26B58]
Subject: [bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIVE_SYSROOT variables not availables ?
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
X-List-Received-Date: Tue, 10 Jan 2017 15:41:47 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMSPR01MB18430DE5FD33B321C4C42E192670AMSPR01MB184eurprd_"

--_000_AMSPR01MB18430DE5FD33B321C4C42E192670AMSPR01MB184eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I'm using generated Poky SDK to cross-compile our program source-codes, whi=
ch works fine.


Now I wish to integrate the build of the project into Yocto recipes using o=
ur makefiles.


However, some custom parameters in the makefiles are using the variables OE=
CORE_TARGET_SYSROOT  and OECORE_NATIVE_SYSROOT to manage paths.

But it appears that these 2 variables do not exists when the makefiles are =
called in a do_compile() function of a recipe.


Is it normal ? Did I did something wrong ?

Should my recipe inherit something specific?


Or should I "source" my "environment-setup-cortexa9hf-vfp-neon-poky-linux-g=
nueabi" from the SDK into my recipe file ? (=3D> not portable)


Thanks.


Z.




--_000_AMSPR01MB18430DE5FD33B321C4C42E192670AMSPR01MB184eurprd_
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
<p>Hi,</p>
<p><br>
</p>
<p>I'm using generated&nbsp;Poky SDK to cross-compile our program source-co=
des, which works fine.</p>
<p><br>
</p>
<p>Now I wish to integrate the build of the project into Yocto recipes usin=
g our makefiles.</p>
<p><br>
</p>
<p>However, some custom parameters in the makefiles are using the variables=
&nbsp;<span>OECORE_TARGET_SYSROOT &nbsp;and&nbsp;<span>OECORE_NATIVE_SYSROO=
T to manage paths.</span></span></p>
<p>But it appears that these 2 variables do not exists when the makefiles a=
re called in a do_compile() function of a recipe.</p>
<p><br>
</p>
<p>Is it normal ? Did I did something wrong ?&nbsp;</p>
<p>Should my recipe inherit something specific?&nbsp;</p>
<p><br>
</p>
<p>Or should I &quot;source&quot; my &quot;<span style=3D"font-size: 12pt;"=
>environment-setup-cortexa9hf-vfp-neon-poky-linux-gnueabi&quot; from the SD=
K into my recipe file ? (=3D&gt; not portable)</span></p>
<p><br>
</p>
<p>Thanks.</p>
<p><br>
</p>
<p>Z.<br>
<span style=3D"font-size: 12pt;"></span></p>
<div><br>
</div>
<p></p>
<p><br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_AMSPR01MB18430DE5FD33B321C4C42E192670AMSPR01MB184eurprd_--
