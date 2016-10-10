Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF10E00A1E; Mon, 10 Oct 2016 06:49:09 -0700 (PDT)
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
	*      [65.54.51.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 10 Oct 2016 06:49:07 PDT
Received: from SNT004-OMC4S42.hotmail.com (snt004-omc4s42.hotmail.com
	[65.54.51.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 253CFE009FA
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 06:49:07 -0700 (PDT)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com ([65.55.90.200])
	by SNT004-OMC4S42.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 10 Oct 2016 06:48:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=5SpVIDDFF2WoT5z3dueua73THCQADQyNIrl+EywVQl4=;
	b=AjwXFRPmZ2dfez1DT0adhlwEO8VTkyebyAb18ar3fRr46PWhgO3met6JNRCY4gY6vqZVSYNsorwujBzz+GPw2ODwbAwHXk6Gq0pHIt1PbnncEa6dfKCH8jgb0Rja24j+ZfD86pzUJQYvUAn2Szm9w0CUZU0h8KGnjFcEx8S+cpXFuFhRF1Oa8J+oUA5utTSpMnqB7IJ9Jf3FkfDL/WuT2hxneTWrmY9bXCDJWX6UOVRylLp6oyN9CkxFZC4Jrgr40JdGNpydmSW6eVvUOxEIm94veZRfgI1BJ3UbLhmLDDecdGdbvKm4iEeo6WRSu/IYmx0FfK6UuwZj+9eE07H8nA==
Received: from AM5EUR02FT058.eop-EUR02.prod.protection.outlook.com
	(10.152.8.58) by AM5EUR02HT234.eop-EUR02.prod.protection.outlook.com
	(10.152.9.195) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Mon, 10 Oct 2016 13:47:58 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.8.53) by
	AM5EUR02FT058.mail.protection.outlook.com (10.152.9.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Mon, 10 Oct 2016 13:47:58 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.027; Mon, 10 Oct 2016 13:47:58 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [bitbake] Issue with SVN fetcher options
Thread-Index: AQHSIvzo/qipfpN4wEaQLH+eGqLksg==
Date: Mon, 10 Oct 2016 13:47:58 +0000
Message-ID: <HE1PR01MB18838005E94E76E68939A7A592DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883348257D55AE5272796C092DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
In-Reply-To: <HE1PR01MB1883348257D55AE5272796C092DB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.8.53)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.8.53 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nPP/W34Q56v1yEeNsOX10pQGzmO3HDvA]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT234;
	6:2awQpZa4fuHwyeQEPZBojHLbBbnfvWUlKmCY4CdisSPIGfcn0QGycAIvzM8ViuYGwZuf66EeIwOau/289WS5uqefus+J2d5vTAojynCvgMgUbu1q2jCpzfivakBiUhqz90dMDCrc/kznXF/mw8sq5eSi8y41rQiedLGD6sEm8D3j+KV98HESYeiXe17ZJ6u4O5XN9MJpxPbVVfN8gjWqC07v1eONuC9aaBxMgoOo61uNtRM2CITYr88vrokvwcrvDzYC8YFHElWpYoHDuVNCTwNCbyyAgvEE5QBh4TWrv7g=;
	5:nR2WhHEwwOzJyTdhhgt8iveFDN5vkEng8ElcTueO3JdGOIYpRMRlXQbZblrGTiRr0VUG2LY36/v8HOtnBSB4JSvXVd0B2+DCWCn8lQX0QwFGg7otbz8r04g9xBbfrUqz0+CcQElsOqnBOIFyqU1VIA==;
	24:0mtrFU/iJI5POK0WOw2wktdF88AjokNhvmHSVNXoS4HcBMYB5fFWyCzghAaNVsHw2zm7n0SR4OTgXupNB31HFRPxvXKP6B9bORtp2l0xuO0=;
	7:j0wn++QFddMQQwRODLUCV5VNF+DRoEKIVEG17U1hcxLLFMoVkCPcwJdGTtA7eaNYbjEtCfegtvxcBgSZALSfoBzG5UVRenU/3Bd7D+HOyR8PjmAsU+tTbHrevg4nCTwWqIPyUaIRR/ukR6Ti2rwSLYE/b1gS2DX2uHcB4lj1g+N8p+iQ74tGj/1/KAMgX5cCI5aLbmnMi0YBaz/1hDiNeTEYQKkfNY4+INPEGSoxIFqc3NMnp99k5C9X9uH7dn5VyHvQb1V8KEIrfb46F/otAIZt9mhWIYRjPJAwUD0tQjUQ5+zlSVGJPlXwNbsndP0T98/K/+K8DWpmbY8K7/QBQA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT234;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: bc57d5c7-20e1-40e9-e623-08d3f1140b8b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR02HT234;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR02HT234; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT234; 
x-forefront-prvs: 0091C8F1EB
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2016 13:47:58.3198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT234
X-OriginalArrivalTime: 10 Oct 2016 13:48:06.0587 (UTC)
	FILETIME=[EDEB00B0:01D222FC]
Subject: Re: [bitbake] Issue with SVN fetcher options
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
X-List-Received-Date: Mon, 10 Oct 2016 13:49:09 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18838005E94E76E68939A7A592DB0HE1PR01MB1883eurp_"

--_000_HE1PR01MB18838005E94E76E68939A7A592DB0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK.


I found  out the solution.


Actually, I noticed in the log file "log.do_fetch()" that the SVN command f=
inishes with the "module" name as the output directory.

I took a look to bitbake sourcecode and realized that the parameter I was l=
ooking for in the SRC_URI was "path_spec".


ThereforeI changed the SRC_URI with:


SRC_URI =3D "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037=
/svn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp;path_spec=3Dsubproje=
ct"

And everything works fine.
Please note that there are no mentions of "path_spec" in the the BitBake ma=
nual nor Yocto MegaManual.

I just wonder if there's a reason for that. Anyway, it solved my problem.

Cheers.

Karim


________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Karim ATIKI <karim_atiki@hotmail.com>
Envoy=E9 : lundi 10 octobre 2016 15:11
=C0 : yocto
Objet : [yocto] [bitbake] Issue with SVN fetcher options


Hi all,


I'm writing a recipe to build a custom project for an ARM based board (Coli=
bri T20).

I need to fetch the different sub-projects from SVN and launch the respecti=
ve makefile.


However, I'm experiencing a problem with the SVN fetcher of bitbake.

Indeed, my URI looks like:


SRC_URI =3D "svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-server:22037=
/svn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp"

Basically, it works fine. But the source code is fetched into:

../downloads/svn/our-server:22037/svn-atonce/subproject/trunk


And I need it to be checked out into a local directory as follow:


../downloads/svn/our-server:22037/svn-atonce/subproject/

I haven'nt found yet an option for the SVN fetcher to specify a local direc=
tory for the check-out.

Is there an option that I haven'nt found in the BitBake manual ?

Cheers.

Karim


--_000_HE1PR01MB18838005E94E76E68939A7A592DB0HE1PR01MB1883eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>OK.</p>
<p><br>
</p>
<p>I found &nbsp;out&nbsp;the solution.</p>
<p><br>
</p>
<p>Actually, I noticed in the log file &quot;log.do_fetch()&quot; that the =
SVN command finishes with the &quot;module&quot; name as the output directo=
ry.</p>
<p>I took a look to bitbake sourcecode and realized that the parameter I wa=
s looking for in the SRC_URI was &quot;path_spec&quot;.</p>
<p><br>
</p>
<p>ThereforeI changed the SRC_URI with:</p>
<p><br>
</p>
<p></p>
<div><br>
</div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;">SRC_URI =3D &quot;svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWO=
RD}@our-server:22037/svn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp;=
path_spec=3Dsubproject&quot;</span><br>
</div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;">And everything works fine.</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;">Please note that there are no mentions of &quot;path_spec&qu=
ot; in the the BitBake manual nor Yocto MegaManual.</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;">I just wonder if there's a reason for that. Anyway, it solve=
d my problem.</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;">Cheers.</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;"><br>
</span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; fon=
t-size: 16px;">Karim</span></div>
<p></p>
<p><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctopro=
ject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Karim ATIKI &=
lt;karim_atiki@hotmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 10 octobre 2016 15:11<br>
<b>=C0 :</b> yocto<br>
<b>Objet :</b> [yocto] [bitbake] Issue with SVN fetcher options</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi all,</p>
<p><br>
</p>
<p>I'm writing a recipe to build a custom project for an ARM based board (C=
olibri T20).</p>
<p>I need to fetch the different sub-projects from SVN and launch the respe=
ctive makefile.</p>
<p><br>
</p>
<p>However, I'm experiencing a problem with the SVN fetcher of bitbake.</p>
<p>Indeed, my URI looks like:</p>
<p><br>
</p>
<p></p>
<div>SRC_URI =3D &quot;svn://${PGA_SVN_USERNAME}:${PGA_SVN_PASSWORD}@our-se=
rver:22037/svn-atonce/subproject/;module=3Dtrunk;protocol=3Dhttp&quot;</div=
>
<div><br>
</div>
<div>Basically, it works fine. But the source code is fetched into:</div>
<div><br>
</div>
<div>
<div><b>../downloads/svn/our-server:22037/svn-atonce/subproject/trunk</b></=
div>
<div><br>
</div>
<br>
</div>
<div>And I need it&nbsp;to be checked out into a local directory as follow:=
</div>
<div><br>
</div>
<div><br>
</div>
<div><b style=3D"font-family:Calibri,Arial,Helvetica,sans-serif,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">../do=
wnloads/svn/our-server:22037/svn-atonce/subproject/</b><br>
</div>
<div><br>
</div>
<div>I haven'nt found yet an option for the SVN fetcher to specify a local =
directory for the check-out.</div>
<div><br>
</div>
<div>Is there an option that I haven'nt found in the BitBake manual ?</div>
<div><br>
</div>
<div>Cheers.</div>
<div><br>
</div>
<div>Karim</div>
<br>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB18838005E94E76E68939A7A592DB0HE1PR01MB1883eurp_--
