Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8356E00B8F; Fri, 13 Apr 2018 11:41:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [64.235.154.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.154.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85292E008D4
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 11:41:29 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 13 Apr 2018 18:41:25 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 13 Apr 2018 11:41:23 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 13 Apr 2018 11:41:23 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to patch a driver in Linux source tree
Thread-Index: AQHT01ShXgCygDEkPk6QFz74WnOkwg==
Date: Fri, 13 Apr 2018 18:41:23 +0000
Message-ID: <231b0a5a6c0744ee9799b8bedf2c1ab7@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1523644885-321457-30591-1187-1
X-BESS-VER: 2018.4-r1804121647
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191964
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: How to patch a driver in Linux source tree
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
X-List-Received-Date: Fri, 13 Apr 2018 18:41:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_231b0a5a6c0744ee9799b8bedf2c1ab7sakurauscom_"

--_000_231b0a5a6c0744ee9799b8bedf2c1ab7sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm working on a raspberry pi3 Yocto build from Qt's boot2qt project, it's =
running Yocto version 2.2.3, and Linux kernel 4.4.50. I need to back port s=
ome changes to a file in drivers/net/can/spi. I confused about where and ho=
w I set up the patch file.

I have a linux-raspberrypi_4.4.bbappend file. Do I put the patch file in th=
at, and If so, how do I indicate the path to the file?


Thanks for the help and enlightenment,

Greg Wilson-Lindberg

--_000_231b0a5a6c0744ee9799b8bedf2c1ab7sakurauscom_
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
<p>I'm working on a raspberry pi3&nbsp;Yocto build from&nbsp;Qt's boot2qt p=
roject, it's running Yocto version 2.2.3, and Linux kernel 4.4.50. I need t=
o back&nbsp;port some changes to a file in drivers/net/can/spi. I confused =
about where and how I set up the patch file.</p>
<p>I have a linux-raspberrypi_4.4.bbappend file. Do I put the patch file in=
 that, and If so, how do I indicate the path to the file?</p>
<p><br>
</p>
<p>Thanks for the help and enlightenment,</p>
<p>Greg Wilson-Lindberg</p>
</div>
</body>
</html>

--_000_231b0a5a6c0744ee9799b8bedf2c1ab7sakurauscom_--
