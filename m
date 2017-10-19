Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79231E00D41; Thu, 19 Oct 2017 11:26:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9CE8E00C45
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 11:26:18 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Thu, 19 Oct 2017 18:26:16 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Thu, 19 Oct 2017 11:26:14 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Thu, 19 Oct 2017 11:26:14 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Problem with populate_sdk
Thread-Index: AQHTSQVi8LeK/WvtBEi7bRUf6L68KA==
Date: Thu, 19 Oct 2017 18:26:14 +0000
Message-ID: <7e4405635662496696c940f21d8591a7@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1508437576-321457-11715-895-1
X-BESS-VER: 2017.12-r1710102214
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.186122
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: Problem with populate_sdk
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
X-List-Received-Date: Thu, 19 Oct 2017 18:26:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7e4405635662496696c940f21d8591a7sakurauscom_"

--_000_7e4405635662496696c940f21d8591a7sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to build an SDK for a Raspberry Pi3, and I got a problem with th=
e files from one of my custom recipes.


In my recipe I have:

FILES_${PN}-dev =3D "lib/lib${PN}.a lib/lib${PN}_unix.a lib/pkgconfig inclu=
de/canfestival/*.h"


The *.a files get put into staticdev not dev in the package split.


In my image recipe I've added:

IMAGE_FEATURES +=3D "dev-pkgs  staticdev-pkgs"

I get all of the libraries in my image. In the SDK I don't get the *.a libr=
aries from the staticdev, I do get the header files which were put into dev=
.


So, at this point I'm a bit confused, even though I include both the dev & =
staticdev I am only getting the dev files in the SDK. And, also, why are th=
e *.a libs being put into staticdev in the first place?


Regards, Greg

--_000_7e4405635662496696c940f21d8591a7sakurauscom_
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
<p>I'm trying to build an SDK for a Raspberry Pi3, and I got a problem with=
 the files from one of my custom&nbsp;recipes.</p>
<p><br>
</p>
<p>In my recipe I have:</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">FILES_$=
{PN}-dev =3D &quot;lib/lib${PN}.a lib/lib${PN}_unix.a lib/pkgconfig include=
/canfestival/*.h&quot;</span><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"></span><br>
</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">The *.a files =
get put into staticdev not dev in the package split.</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><br>
</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">In my image re=
cipe I've added:</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"></p>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">IMAGE=
_FEATURES &#43;=3D &quot;dev-pkgs&nbsp; staticdev-pkgs&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span=
 style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"></span></spa=
n></div>
</span></span>
<p></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">I get all of t=
he libraries in my image. In the SDK I don't get the *.a libraries from the=
 staticdev, I do get the header files which were
 put into dev.</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><br>
</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">So, at this po=
int I'm a bit confused, even&nbsp;though I include both the dev &amp; stati=
cdev I am only getting the dev files in the SDK. And, also,
 why are the *.a libs being put into staticdev in the first place?</span></=
span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><br>
</span></span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><span s=
tyle=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">Regards, Greg<=
/span></span></p>
</div>
</body>
</html>

--_000_7e4405635662496696c940f21d8591a7sakurauscom_--
