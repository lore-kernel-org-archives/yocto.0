Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D79AE00DD6; Thu, 28 Apr 2016 06:34:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0063.outbound.protection.outlook.com [104.47.100.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79CB7E00DE0
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 06:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=KmFGofwlIWl4wUCriYwsInoO+Y7Vlaq07fq95BNiuN0=;
	b=T99VXXZ26YfYdziURTt0P9ZwGtxf0oYXn3jvbvoWbX4Tk3b4KTjRHNmSwHjyOVoEIvT9JXqH/IkUn3P5jVKR/cd9zWd+rp0mok+Tts4vwcoiXGEvF9d6bbyGlLzI1u4xvZ/BGOAq7F3auc5jVc/3JBdPeAecwzh1Bzm51JiFhTg=
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) by
	PN1PR01MB0334.INDPRD01.PROD.OUTLOOK.COM (10.164.140.138) with Microsoft
	SMTP Server (TLS) id 15.1.477.8; Thu, 28 Apr 2016 13:34:31 +0000
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) with mapi id
	15.01.0477.014; Thu, 28 Apr 2016 13:34:31 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while buildng SGX
Thread-Index: AQHRoVFBiLXzqbXXxUGm3oZY8ypKvw==
Date: Thu, 28 Apr 2016 13:34:29 +0000
Message-ID: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=inedasystems.com;
x-originating-ip: [175.101.7.226]
x-ms-office365-filtering-correlation-id: d14e3281-16ce-4d3c-0b41-08d36f69d449
x-microsoft-exchange-diagnostics: 1; PN1PR01MB0334;
	5:ZPjul8yiBONCdh4gb5FpUOhkGr7hqWBGWHu2moXqU1T//XodmZm6o1zw9WK/zaZ768xLj1L1RSty3Bd6a1bR6PG64l8OOtWDncG4b/li0dNVZYKf1kaAmhqsk72maIrkzr46wGmyrlJI5T/txJ4z3A==;
	24:wfUzI7lMIj2H08iBNsMKqAHkFXrPZlngSNwTB6sFNsXyKqd1JEyvrTTl/xgKsyJ7TuaKlMLLUGuvIMdhR3seKk/4eilWIzRNI/+cckcmKu8=;
	7:EAFZMRP6y2yWGtYoxTIGxGr5JGWj7AXAe601Ma0HytT7YZBnopS3XWLrAOdK6vucCzpBVhm3xmeGEk82BZAQ3nz7ainqV0pFdOktpo23rwSaKhAKPIbn3j2c/ZXBX3RPUrJaS3NBiAasYFoz9Zb/uPey7itAANpdk5upwDqFLo6j32xm29Adyfs84j64diBg;
	20:/g4ed3Wa8r8yLhiuYNFB6S84Ca8SEISKM21nxjfTUnot9HC4mB69gkyxeTnMz61XHBf0L/gCwx9jofWezMO0ddziPA8z0CTSprsCm6SDE3iMDSa8i5/vezgVwU7RSJduNdPaC/pEIf/Tmpl7a9LEXLKmIKGV4W8XjDEMGvuK08s=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:PN1PR01MB0334;
x-microsoft-antispam-prvs: <PN1PR01MB03345A05B6B6273BF9FFDBE5EF650@PN1PR01MB0334.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:PN1PR01MB0334; BCL:0; PCL:0; RULEID:; SRVR:PN1PR01MB0334; 
x-forefront-prvs: 0926B0E013
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(53474002)(51874003)(53754006)(5008740100001)(106116001)(122556002)(92566002)(3660700001)(1096002)(3480700004)(10400500002)(33656002)(87936001)(86362001)(450100001)(229853001)(3280700002)(2501003)(19625215002)(16236675004)(19627405001)(5004730100002)(2351001)(3846002)(54356999)(50986999)(102836003)(9686002)(66066001)(189998001)(5002640100001)(6116002)(586003)(1730700002)(110136002)(11100500001)(5003600100002)(1220700001)(107886002)(81166005)(77096005)(2906002)(5640700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:PN1PR01MB0334;
	H:PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2016 13:34:29.0677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0334
Subject: Error while buildng SGX
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
X-List-Received-Date: Thu, 28 Apr 2016 13:34:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PN1PR01MB03339D46A7D7D48583BF087AEF650PN1PR01MB0333INDP_"

--_000_PN1PR01MB03339D46A7D7D48583BF087AEF650PN1PR01MB0333INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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


--_000_PN1PR01MB03339D46A7D7D48583BF087AEF650PN1PR01MB0333INDP_
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
</body>
</html>

--_000_PN1PR01MB03339D46A7D7D48583BF087AEF650PN1PR01MB0333INDP_--
