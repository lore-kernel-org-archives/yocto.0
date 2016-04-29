Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C16CE00E3F; Thu, 28 Apr 2016 20:36:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.59 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 898 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Apr 2016 20:36:53 PDT
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0059.outbound.protection.outlook.com [104.47.101.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1728E00E3C
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 20:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=pS8OmwIg3iLTfAD7ejM4Llb4D8KOQCjh/PKsGbf2k+s=;
	b=Ir641kYFiko8Rot/CSq456GvjIGNv58JYGKtuU2TJ882yGFucuP9Ja43/bdibU13wmcTk0xjhROLJ1VKeN27XoL71N8h63nWex1u7J7u1zIVDg2IwrhqTdSKUP0pPYRchhd4AjATO4JeJGDWUDcZ7KQaUID3823aNJ1kQlMNTGo=
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) by
	PN1PR01MB0335.INDPRD01.PROD.OUTLOOK.COM (10.164.140.139) with Microsoft
	SMTP Server (TLS) id 15.1.477.8; Fri, 29 Apr 2016 03:21:52 +0000
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) with mapi id
	15.01.0477.014; Fri, 29 Apr 2016 03:21:52 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while buildng SGX
Thread-Index: AQHRoVFBiLXzqbXXxUGm3oZY8ypKv5+gSa9g
Date: Fri, 29 Apr 2016 03:21:52 +0000
Message-ID: <PN1PR01MB0333599FAC2E387AABFFE4C4EF660@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=inedasystems.com;
x-originating-ip: [25.164.137.4]
x-ms-office365-filtering-correlation-id: 52ea8d19-1176-4949-4710-08d36fdd68c7
x-microsoft-exchange-diagnostics: 1; PN1PR01MB0335;
	5:g0McVghjdoHjDdZpyojisljXt38OqJJmmCnGVmunW1YmM1GnNeFHQalQlm7KDbU6PwVcHwq1I+EdjGM3GbkKoGivJdORHO4BufkPz/0mhONvnFCmNaD5q7fBtfWKUJs+kQOkUouL7hd62wh4/iPRew==;
	24:QkYtq6p2kofE8xwgNGQvKEESOs4YhyH9rsijWTOr41oJ6K2f3IGtBtOst7zAjGvJPTzgUK6zz28OHlNDmHKefM4E4cRKG4J7O5Mz4jyA0eE=;
	7:1ck7MBL4gZ8T+sUJAzxiYmxJAHk5V18lmiXtAN8nQFBfmMePuJymUOsrjGbd2/H32VZVRV5p4BjZwbPMdVZ6gGrODDShF4GfRGQNlIJxYYs7cbTkpJvCeioxKXojjBk42udpRUdf3TiYAtMDupWcyIdZIahc/YglGR/lOnQDy/Vfq+VaegygppRNk9RCQlPT;
	20:4AhhMdzck8/IO2rqc3qXY62gXzL1jlgyPJ9KnpzcTCWoj0FH6z4Gp1eOHKo0ezGfgbAaZWb1qVflEC4rvX2AMGZP3zHTgLicm8XDjX19sy5I2Njve6/maNlAMp/gFXItNXcKZ7egxGkDdJlYzcAdgoPDx6pgvDzTyVup5BALehE=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:PN1PR01MB0335;
x-microsoft-antispam-prvs: <PN1PR01MB0335A94762C55D9F429D3FE1EF660@PN1PR01MB0335.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:PN1PR01MB0335; BCL:0; PCL:0; RULEID:; SRVR:PN1PR01MB0335; 
x-forefront-prvs: 0927AA37C7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(53754006)(53474002)(377454003)(51874003)(106116001)(9686002)(2351001)(110136002)(5004730100002)(19627405001)(92566002)(11100500001)(81166005)(19580405001)(189998001)(5003600100002)(5640700001)(3480700004)(107886002)(1096002)(10400500002)(77096005)(2906002)(50986999)(76176999)(1220700001)(54356999)(586003)(102836003)(6116002)(86362001)(3846002)(1730700002)(122556002)(66066001)(2501003)(2950100001)(450100001)(5008740100001)(87936001)(3280700002)(19580395003)(19625215002)(33656002)(2900100001)(3660700001)(5002640100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:PN1PR01MB0335;
	H:PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2016 03:21:52.4624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0335
Subject: Re: Error while buildng SGX
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
X-List-Received-Date: Fri, 29 Apr 2016 03:36:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR01MB0333599FAC2E387AABFFE4C4EF660PN1PR01MB0333INDP_"

--_000_PN1PR01MB0333599FAC2E387AABFFE4C4EF660PN1PR01MB0333INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


Can you please help me to fix the issue

Thanks and Regards,
Harinath

________________________________
From: Harinath maddelal
Sent: Thursday, April 28, 2016 7:04:29 PM
To: yocto@yoctoproject.org
Subject: Error while buildng SGX


Hi all,


When i build sgx using yocto, im getting following errors.

The same builds fine when i use my local gcc of version 4.8.3.


I have used 1.8.1 Yocto its using 4.9.2 gcc.


Can you please help me resolve the issue. Thanks in advance


Following is the console build error log


eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory
 #include <stdlib.h>
                    ^
In file included from eurasiacon/opengles1/fftex.c:8:0:
eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory
 #include <stdlib.h>
                    ^
compilation terminated.
compilation terminated.
In file included from eurasiacon/opengles1/fbo.c:8:0:
eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory
 #include <stdlib.h>
                    ^
compilation terminated.
In file included from eurasiacon/opengles1/fftexhw.c:8:0:
eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory
 #include <stdlib.h>
                    ^
compilation terminated.
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/fbo.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/fftex.o] Error 1
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/eglimage.o] Error 1
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/fftexhw.o] Error 1
make: *** [build] Error 2


Thanks and Regards,
Harinath


--_000_PN1PR01MB0333599FAC2E387AABFFE4C4EF660PN1PR01MB0333INDP_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>Can you please help me to fix the issue</p>
<br>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Harinath maddelal<br>
<b>Sent:</b> Thursday, April 28, 2016 7:04:29 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Error while buildng SGX</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>When i build sgx using yocto, im getting following errors. <br>
</p>
<p>The same builds fine when i use my local gcc of version 4.8.3.</p>
<p><br>
</p>
<p>I have used 1.8.1 Yocto its using 4.9.2 gcc.</p>
<p><br>
</p>
<p>Can you please help me resolve the issue. Thanks in advance<br>
</p>
<p><br>
</p>
<p>Following is the console build error log<br>
</p>
<p><br>
</p>
<p>eurasiacon/opengles1/context.h:11:20:<span style=3D"color: rgb(255, 0, 0=
);"> </span>
<b><span style=3D"color: rgb(255, 0, 0);">fatal error: stdlib.h:</span></b>=
 No such file or directory<br>
&nbsp;#include &lt;stdlib.h&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
In file included from eurasiacon/opengles1/fftex.c:8:0:<br>
eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory<br>
&nbsp;#include &lt;stdlib.h&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
compilation terminated.<br>
compilation terminated.<br>
In file included from eurasiacon/opengles1/fbo.c:8:0:<br>
eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory<br>
&nbsp;#include &lt;stdlib.h&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
compilation terminated.<br>
In file included from eurasiacon/opengles1/fftexhw.c:8:0:<br>
eurasiacon/opengles1/context.h:11:20: fatal error: stdlib.h: No such file o=
r directory<br>
&nbsp;#include &lt;stdlib.h&gt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ^<br>
compilation terminated.<br>
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/fbo.o] Error 1<br>
make[1]: *** Waiting for unfinished jobs....<br>
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/fftex.o] Error 1<br>
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/eglimage.o] Error 1<br>
make[1]: *** [eurasiacon/binary2_incdhad1_linux_release/target/intermediate=
s/opengles1/fftexhw.o] Error 1<br>
make: *** [build] Error 2</p>
<p><br>
</p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper" style=3D"font-family:Calibri,Arial,Helve=
tica,sans-serif; font-size:; margin:0">
Thanks and Regards,<br>
Harinath<br>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_PN1PR01MB0333599FAC2E387AABFFE4C4EF660PN1PR01MB0333INDP_--
