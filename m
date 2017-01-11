Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0193E00935; Tue, 10 Jan 2017 23:23:58 -0800 (PST)
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
	*      [65.55.90.214 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Jan 2017 23:23:56 PST
Received: from SNT004-OMC4S11.hotmail.com (snt004-omc4s11.hotmail.com
	[65.55.90.214])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14215E003E1
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 23:23:55 -0800 (PST)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com ([65.55.90.201])
	by SNT004-OMC4S11.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 10 Jan 2017 23:22:54 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=L0Ba7WhP0QLixDqNkL1QH4VKC5uT0XCHMwuKi+P9Moo=;
	b=NabnhxvhMV+Scfpu596crJxs1xPE7MzdmGT9y6ShQsSKBwcq1UL8EtFZHzJ34htTN+lIclXaxXvCgvNGZsToStEaVRPkvuwEL8EAp3It+wh5ANyPeF0anKSznS8a6ufvp8+zANjREdVHaXwZ3RVsJibr/o35FMOqn5cPfw+zWvAnWAEApNucz5Ygm+PCu5sJ5gQMg5wrhQbFCHvOx6r028g3nrjuPChbh1IcjS1PblSkk00v2vz3p/5XUGs2MT/HXiZ0Z53/x7ihD6ko9khJyDZ83Xgmiyo3IZjkcwDrSURXmNZZqEGULPvqu+qf0gqgxeU18vVzkrTSBsX3DI2BsQ==
Received: from AM5EUR03FT010.eop-EUR03.prod.protection.outlook.com
	(10.152.16.53) by AM5EUR03HT143.eop-EUR03.prod.protection.outlook.com
	(10.152.17.179) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.803.8;
	Wed, 11 Jan 2017 07:22:52 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com (10.152.16.54) by
	AM5EUR03FT010.mail.protection.outlook.com (10.152.16.134) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.803.8 via Frontend Transport; Wed, 11 Jan 2017 07:22:52 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.210])
	by AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.210])
	with mapi id 15.01.0845.012; Wed, 11 Jan 2017 07:22:52 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [bitbake] OECORE_TARGET_SYSROOT and
	OECORE_NATIVE_SYSROOT variables not availables ?
Thread-Index: AQHSa3lGUlQN6jWWY0WRORQ2s/kKqqEy39ga
Date: Wed, 11 Jan 2017 07:22:52 +0000
Message-ID: <AMSPR01MB184AE4354C8942FD9F9F5B992660@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
References: <AMSPR01MB18430DE5FD33B321C4C42E192670@AMSPR01MB184.eurprd01.prod.exchangelabs.com>,
	<CAMKF1soquB9=wLxYz2sR4r1uC5wz34rAH=4EJHNMuOkxN6zpGQ@mail.gmail.com>
In-Reply-To: <CAMKF1soquB9=wLxYz2sR4r1uC5wz34rAH=4EJHNMuOkxN6zpGQ@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:53B6C6A5467D8E0DBC0BDA3AFB5804A3079C4ED6AE28FA37435B9B38A08D151C;
	UpperCasedChecksum:68E5CFF61C1BF04FD30A440BB3977CBB89A963F6A316CD5B46E36AAF4B5AB91E;
	SizeAsReceived:7910; Count:39
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [uPNLXeQnLArpIV5mPuvWe5AbxDwbIwWU]
x-incomingheadercount: 39
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT143;
	7:gGwpISVm+p5qzpOqT0UuT71yfl69Fj8+iTC05T21oduhRnVuw9+TCcWai0SBUSDJue+o/zquvzgT5JsQtF9cudyHiKFHXw4EpGBWlgj8YFENnKJgmM7yCM67vSCPilJ6VO2VZViTK8gIc5tibTAZm+RWGIgSt0jfXGWJF8qkejjn4nXjLjQ4j1/dEGHvw5L8t/h2I9acXsLcB5IVU9IpUfVNwNiQXuTM8tlGFesOyDuDADFGfbW2poZXdjDwoi0HsWKWYMgIaK1iqY8kDjEygSzDaKYYblwsftIYilHJ2d+C11T0aSGwKgfRdHtrEAX1USBlJSabsBD9OR1CHx2v43HBXBgbFMMWdK/TAm7kIi2/5S+x6/3TcwuR/z4ndQeJnhgrwnXOJOGPorrDT8LB224cYzSpIHHQmD2r4EcR9D5ohmoTM0WCwoH6RDn6gqkhz/rHZRCJOWqRbtF1C8INUg==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR03HT143;
	H:AMSPR01MB184.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 3f6d7835-a93f-4a11-6e6a-08d439f2a7c4
x-microsoft-antispam: BCL:0; PCL:0; RULEID:(22001)(8291501020);
	SRVR:AM5EUR03HT143; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(444112120)(432015012)(82015046);
	SRVR:AM5EUR03HT143; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT143; 
x-forefront-prvs: 01842C458A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2017 07:22:52.4089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT143
X-OriginalArrivalTime: 11 Jan 2017 07:22:54.0380 (UTC)
	FILETIME=[8662D6C0:01D26BDB]
Subject: Re: [bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIVE_SYSROOT variables not availables ?
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
X-List-Received-Date: Wed, 11 Jan 2017 07:23:59 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMSPR01MB184AE4354C8942FD9F9F5B992660AMSPR01MB184eurprd_"

--_000_AMSPR01MB184AE4354C8942FD9F9F5B992660AMSPR01MB184eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Khem,


Ok.

How are they specified using Yocto build system ?

Is there any doc link ?



K.

________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : mardi 10 janvier 2017 20:39
=C0 : Karim ATIKI; yocto
Objet : Re: [yocto] [bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIVE_SYSRO=
OT variables not availables ?

These are specified differently when using the Yocto build system you shoul=
d not be using these variables in your makefiles
On Tue, Jan 10, 2017 at 8:11 AM Karim ATIKI <karim_atiki@hotmail.com<mailto=
:karim_atiki@hotmail.com>> wrote:















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



























--

_______________________________________________

yocto mailing list

yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

https://lists.yoctoproject.org/listinfo/yocto


--_000_AMSPR01MB184AE4354C8942FD9F9F5B992660AMSPR01MB184eurprd_
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
<p>Khem,</p>
<p><br>
</p>
<p>Ok.</p>
<p>How are they specified using Yocto build system ?&nbsp;</p>
<p>Is there any doc link ?</p>
<p><br>
</p>
<p><br>
</p>
<p>K.</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> mardi 10 janvier 2017 20:39<br>
<b>=C0 :</b> Karim ATIKI; yocto<br>
<b>Objet :</b> Re: [yocto] [bitbake] OECORE_TARGET_SYSROOT and OECORE_NATIV=
E_SYSROOT variables not availables ?</font>
<div>&nbsp;</div>
</div>
<div>
<div>These are specified differently when using the Yocto build system you =
should not be using these variables in your makefiles<br>
<div class=3D"gmail_quote">
<div>On Tue, Jan 10, 2017 at 8:11 AM Karim ATIKI &lt;<a href=3D"mailto:kari=
m_atiki@hotmail.com">karim_atiki@hotmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class=3D"gmail_msg"><br>
<br>
<div id=3D"m_-122696988478732757divtagdefaultwrapper" class=3D"gmail_msg" s=
tyle=3D"font-size:12pt; color:#000000; font-family:Calibri,Arial,Helvetica,=
sans-serif">
<br>
<br>
<p class=3D"gmail_msg">Hi,</p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">I'm using generated&nbsp;Poky SDK to cross-compile o=
ur program source-codes, which works fine.</p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">Now I wish to integrate the build of the project int=
o Yocto recipes using our makefiles.</p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">However, some custom parameters in the makefiles are=
 using the variables&nbsp;<span class=3D"gmail_msg">OECORE_TARGET_SYSROOT &=
nbsp;and&nbsp;<span class=3D"gmail_msg">OECORE_NATIVE_SYSROOT to manage pat=
hs.</span></span></p>
<br>
<div id=3D"m_-122696988478732757divtagdefaultwrapper" class=3D"gmail_msg" s=
tyle=3D"font-size:12pt; color:#000000; font-family:Calibri,Arial,Helvetica,=
sans-serif">
<br>
</div>
<br>
<p class=3D"gmail_msg">But it appears that these 2 variables do not exists =
when the makefiles are called in a do_compile() function of a recipe.</p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">Is it normal ? Did I did something wrong ?&nbsp;</p>
<br>
<br>
<p class=3D"gmail_msg">Should my recipe inherit something specific?&nbsp;</=
p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">Or should I &quot;source&quot; my &quot;<span class=
=3D"gmail_msg" style=3D"font-size:12pt">environment-setup-cortexa9hf-vfp-ne=
on-poky-linux-gnueabi&quot; from the SDK into my recipe file ? (=3D&gt; not=
 portable)</span></p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">Thanks.</p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg">Z.<br class=3D"gmail_msg">
<br>
<br>
<span class=3D"gmail_msg" style=3D"font-size:12pt"></span></p>
<br>
<br>
<div class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</div>
<br>
<br>
<p class=3D"gmail_msg"></p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
<p class=3D"gmail_msg"><br class=3D"gmail_msg">
<br>
<br>
</p>
<br>
<br>
</div>
<br>
<br>
</div>
<br>
<br>
<br>
<br>
--<br class=3D"gmail_msg">
<br>
_______________________________________________<br class=3D"gmail_msg">
<br>
yocto mailing list<br class=3D"gmail_msg">
<br>
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
<br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AMSPR01MB184AE4354C8942FD9F9F5B992660AMSPR01MB184eurprd_--
