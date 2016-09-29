Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6331FE00D29; Thu, 29 Sep 2016 07:47:34 -0700 (PDT)
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
	*      [65.54.61.81 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Sep 2016 07:47:28 PDT
Received: from SNT004-OMC1S44.hotmail.com (snt004-omc1s44.hotmail.com
	[65.54.61.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18BAE00A30
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 07:47:28 -0700 (PDT)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com ([65.55.90.8]) by
	SNT004-OMC1S44.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 29 Sep 2016 07:46:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=f510kDCUkNHSGuMjNiEinYUUdATqykPMO+Fi4/rrTL0=;
	b=WTV9F1Q08SIBigdByhAY6knTSUCuC3QT7hzUitjkvuQMVfS+or2uvkFJ3oWIlzf1lFgLbH1Vqz5NkP/mv6yHwdZRGMfyfsh0jBVo2mJBHSKuvTbcIxqYtvZqC9XWNXAIU+G9xvnx73WtwQKA7Q7nBzYpVB2RYP37rfCRmuDaMruaPJu5bkctXZ3QsGeQv/x9w32dHlTecRmiXHaUbp35DtMNgRpMiC7++u+E2CvDhej5079lSoMimEE44WFLLL2g+ImIeolDzvxlUCCQlwYTuwolEhUqUK5UadpNySihhfbm3q9/pkUGpUDDOSQdTMDajHZxKgbgsXZRaLxTOdxHBw==
Received: from VE1EUR02FT054.eop-EUR02.prod.protection.outlook.com
	(10.152.12.60) by VE1EUR02HT049.eop-EUR02.prod.protection.outlook.com
	(10.152.13.93) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Thu, 29 Sep 2016 14:46:26 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.12.56) by
	VE1EUR02FT054.mail.protection.outlook.com (10.152.13.218) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Thu, 29 Sep 2016 14:46:25 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.016; Thu, 29 Sep 2016 14:46:25 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] missing glxext.h header file in core-image-x11 //
	toolchain SDK
Thread-Index: AQHSGl0ddqu6NVqD406tGZVsjaNUlA==
Date: Thu, 29 Sep 2016 14:46:25 +0000
Message-ID: <HE1PR01MB1883AED0E22901685B47CA5A92CE0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.12.56)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.12.56 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [rPprW2aqK61L6W2yti9GZf1R56xDaNPJ]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT049;
	6:1mI+IR2vJIwhO/fwE0+KlAL4G1KYnYXF96pwqSPmNeqEM0FTvTVEMv0631oc86cJHMZXyuETF4o9FuafejlgZEp0HVU0v5HV9W993gMN2lDxmWzKzOPSM8AN+3CujW+jtmXR1RGL8HB4uTkXeZ65R1iKClco313GHrtPgEN9SVT9CCJvIAt7YaOrZI37YwnUx7wR3HZ3DQv78LgHbM8Qf64kh9NvgjLcoKJ57El+6Y4lIpdH1RdX8qunWVmdiIcWXEl7ePgoPSNVdGmXsomR+Or/70kXgkWhNbLjFZoQ+mw=;
	5:YT72ySuc3Q7r0mp+58RQTqQ/89NpTIjDRyZZqFB0A9z+cj2rxCQQc11GA2z+ONTCLk+x15Fox7+oH0fYFjXiZOcQqYOcpYQ13aus5MbHr15ZKgtg9ljbA84Sk7NTgYQhtxHFyjZdGs7CKIoDmPOmKA==;
	24:RUasI/kTsq9URXUHluD+4dwLo/GaWy4pqv2Z+3d+KYQGskCeOxD//QN8Asrsp3elp+5YSFny+blK3Ayug5kpjPQ+n0U1mK0X2jx1l4M/jDQ=;
	7:o9ALekF5KIcu7NqvD2OfCbcq/NFMCZkx5SRKqdudiScYy31QmLR2nBsiP7WIFGzPq8+ZHUJW6J8B1hJ3LNrX0XEvVefY7JDQexDZQMCiUBaSga58+Tmc6jJgkW2zx5UuLTmGL5yMUpPQQyq4O+41BqutuVKLI1fCtn9Odvqw7GrACtYymKVDOj4kQyWkl+8LdKB59LnSZ+yFePqEYr1+mgL/mykW6FLpU/wnwCwSweayx124MPg8PF0QlbmisvcivW4Es/OnIPmOUXtxVqh5UlDDjz8MLolBD8ykd25jFOqSUWNdSVNQ6bDtL37NqTxQ
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR02HT049;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: b9af26d5-8cbb-4b99-4f04-08d3e8776361
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR02HT049;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR02HT049; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT049; 
x-forefront-prvs: 00808B16F3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2016 14:46:25.4324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT049
X-OriginalArrivalTime: 29 Sep 2016 14:46:27.0973 (UTC)
	FILETIME=[425CDB50:01D21A60]
Subject: missing glxext.h header file in core-image-x11 // toolchain SDK
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
X-List-Received-Date: Thu, 29 Sep 2016 14:47:34 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883AED0E22901685B47CA5A92CE0HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883AED0E22901685B47CA5A92CE0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hi,

I have generated a core-image-x11 image for a Toradex Colibri T20 board.
I aim to compile and execute our application that normally runs under X11 +=
 OpenGL.

I'm not an expert of X11 and gles technologies.

Therefore, I need to have the necessary libraries in the linux image I have=
 generated.
I have therefore added in my local.conf:

DISTRO_FEATURES_append =3D "opengl"

In order to compile our application, I have generated the respective toolch=
ain with bitbake -c populate_sdk core-image-x11.
It worked fine as well.

But as I launched the makefiles, I got some
...xxx.cpp :188:25: fatal error: GL/glxext.h: No such file or directory
   #include <GL/glxext.h>

Indeed, I have no glxext.h file in the generated toolchain  sdk, neither in=
 the sysroots.
In my sysroot,  I have only:

./GL
??? glxint.h
??? glxmd.h
??? glxproto.h
??? glxtokens.h
??? internal
    ??? glcore.h
./GLES
??? egl.h
??? glext.h
??? gl.h
??? glplatform.h
./GLES2
??? gl2ext.h
??? gl2.h
??? gl2platform.h


So, I suppose that something is missing in the features of my core-image-x1=
1 (and subsequently in the respective toolchain).

Should I add something  in some features ?


Cheers,

Karim


--_000_HE1PR01MB1883AED0E22901685B47CA5A92CE0HE1PR01MB1883eurp_
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
hi,
<div><br>
</div>
<div>I have generated a core-image-x11 image for a Toradex Colibri T20 boar=
d.</div>
<div>I aim to compile and execute our application that normally runs under =
X11 &#43; OpenGL.</div>
<div><br>
</div>
<div>I'm not an expert of X11 and gles technologies.</div>
<div><br>
</div>
<div>Therefore, I need to have the necessary libraries in the linux image I=
 have generated.</div>
<div>I have therefore added in my local.conf:</div>
<div><br>
</div>
<div>DISTRO_FEATURES_append =3D &quot;opengl&quot;</div>
<div><br>
</div>
<div>In order to compile our application, I have generated the respective t=
oolchain with bitbake -c populate_sdk core-image-x11.&nbsp;</div>
<div>It worked fine as well.</div>
<div><br>
</div>
<div>But as I launched the makefiles, I got some&nbsp;</div>
<div><span style=3D"font-size: 12pt;"><b>...xxx.cpp&nbsp;:188:25: fatal err=
or: GL/glxext.h: No such file or directory</b></span></div>
<div>
<div><b>&nbsp; &nbsp;#include &lt;GL/glxext.h&gt;</b></div>
<br>
</div>
<div>Indeed,&nbsp;I have no glxext.h file in the generated&nbsp;toolchain &=
nbsp;sdk,&nbsp;neither in the sysroots.</div>
<div>In my sysroot,&nbsp; I have only:</div>
<div><br>
</div>
<div>
<div>./GL</div>
<div>&#9500;&#9472;&#9472; glxint.h</div>
<div>&#9500;&#9472;&#9472; glxmd.h</div>
<div>&#9500;&#9472;&#9472; glxproto.h</div>
<div>&#9500;&#9472;&#9472; glxtokens.h</div>
<div>&#9492;&#9472;&#9472; internal</div>
<div>&nbsp; &nbsp; &#9492;&#9472;&#9472; glcore.h</div>
<div>./GLES</div>
<div>&#9500;&#9472;&#9472; egl.h</div>
<div>&#9500;&#9472;&#9472; glext.h</div>
<div>&#9500;&#9472;&#9472; gl.h</div>
<div>&#9492;&#9472;&#9472; glplatform.h</div>
<div>./GLES2</div>
<div>&#9500;&#9472;&#9472; gl2ext.h</div>
<div>&#9500;&#9472;&#9472; gl2.h</div>
<div>&#9492;&#9472;&#9472; gl2platform.h</div>
<div><br>
</div>
<br>
</div>
<div>So, I suppose that something is missing in the features of my core-ima=
ge-x11 (and subsequently in the respective toolchain).</div>
<div><br>
</div>
<div>Should I add something &nbsp;in some features ?</div>
<div><br>
</div>
<div><br>
</div>
<div>Cheers,</div>
<div><br>
</div>
<div>Karim</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB1883AED0E22901685B47CA5A92CE0HE1PR01MB1883eurp_--
