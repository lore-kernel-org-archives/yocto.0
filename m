Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A815E00CE2; Wed, 20 Dec 2017 15:56:37 -0800 (PST)
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
X-Greylist: delayed 910 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Dec 2017 15:56:36 PST
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6499E008FB
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 15:56:36 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1401.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 20 Dec 2017 23:56:35 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 20 Dec 2017 15:40:50 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 20 Dec 2017 15:40:50 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: add kernel modules & dtbo's for Raspberry Pi3
Thread-Index: AQHTeeVq9WEGDWWB7kmaupbor0m+aw==
Date: Wed, 20 Dec 2017 23:40:50 +0000
Message-ID: <246f195bf41b44dbaa3d46cdfde44e82@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1513814186-321457-960-9676-2
X-BESS-VER: 2017.16-r1712182224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.188201
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: add kernel modules & dtbo's for Raspberry Pi3
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
X-List-Received-Date: Wed, 20 Dec 2017 23:56:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_246f195bf41b44dbaa3d46cdfde44e82sakurauscom_"

--_000_246f195bf41b44dbaa3d46cdfde44e82sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm building an image for the Raspberry Pi 3 and I'm trying to add some mod=
ules to the kernel and I need to add some device tree overlays. The modules=
 and overlays are part of the kernel, just not built by default.


For the kernel modules I've added a linux-raspberrypi_4.4.bbappend file in =
the path .../recipes-bsp/linux. The file consists of:

# Scribe additions to Kernel configuration

FILESEXTRAPATHS_prepend +=3D "$(THISDIR)/files"
SRC_URI +=3D "file://Scribe.cfg"

Whether I use "+=3D" or ":=3D" as suggested in "Embedded Linux Systems with=
e the Yocto Project", I get an error that "file://0001-fix-dtbo-rules.patch=
" cannot be found. I don't get this error if my .bbappend file is not being=
 used.


Also, if there are any quick tips on how to add dtbo's to the kernel build =
I would appreciate them.


Regards,

Greg

--_000_246f195bf41b44dbaa3d46cdfde44e82sakurauscom_
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
<p>I'm building an image for the Raspberry Pi 3 and I'm trying to add some =
modules to the kernel and I need to add some device tree overlays. The modu=
les and overlays are part of the kernel, just not built by default.</p>
<p><br>
</p>
<p>For the kernel modules I've added a linux-raspberrypi_4.4.bbappend file =
in the path .../recipes-bsp/linux. The file consists of:</p>
<p></p>
<div># Scribe additions to Kernel configuration</div>
<div><br>
</div>
<div>FILESEXTRAPATHS_prepend &#43;=3D &quot;$(THISDIR)/files&quot;</div>
<div>SRC_URI &#43;=3D &quot;file://Scribe.cfg&quot;</div>
<div><br>
</div>
Whether I use &quot;&#43;=3D&quot; or &quot;:=3D&quot; as suggested in &quo=
t;Embedded Linux Systems withe the Yocto Project&quot;, I get an error that=
 &quot;<a href=3D"file://0001-fix-dtbo-rules.patch" class=3D"OWAAutoLink">f=
ile://0001-fix-dtbo-rules.patch</a>&quot; cannot be found. I don't get this=
 error if
 my .bbappend file is not being used.
<p></p>
<p><br>
</p>
<p>Also, if there are any quick tips on how to add dtbo's to the kernel bui=
ld I would appreciate them.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg</p>
</div>
</body>
</html>

--_000_246f195bf41b44dbaa3d46cdfde44e82sakurauscom_--
