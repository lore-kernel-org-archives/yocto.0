Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BD98E00D5C; Mon,  9 Oct 2017 11:42:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F6BE00D32
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 11:42:45 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Mon, 09 Oct 2017 18:42:43 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 9 Oct 2017 11:42:42 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 9 Oct 2017 11:42:42 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: No GNU_HASH in the elf binary: error
Thread-Index: AQHTQS1FnN+zB4hKNk2hjzQ7uk7lRw==
Date: Mon, 9 Oct 2017 18:42:42 +0000
Message-ID: <89836ef330334f32bdad645e73dfd5ca@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507574563-321458-16987-2098-1
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.20
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185832
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.20 BSF_SC0_SA074b         META: Custom Rule SA074b 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.20 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_SC0_SA074b, BSF_BESS_OUTBOUND,
	HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: No GNU_HASH in the elf binary: error
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
X-List-Received-Date: Mon, 09 Oct 2017 18:42:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_89836ef330334f32bdad645e73dfd5casakurauscom_"

--_000_89836ef330334f32bdad645e73dfd5casakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm getting a "No GNU_HASH in the elf binary" error. The documentation says=
 to add LD_FLAGS to the ld command line, but it's already there:

LDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed

Here is the command that produces the offending elf binary:


arm-poky-linux-gnueabi-gcc  -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4  -mfl=
oat-abi=3Dhard -mcpu=3Dcortex-a7 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded --sysroot=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/t=
mp/sysroots/raspberrypi3 -shared -Wl,-soname,libcanfestival_can_socket.so  =
-o libcanfestival_can_socket.so can_socket.o

Can anyone shed more light on this? Could there be some reason that the fla=
gs aren't being passed to the loader? Or some other missing flag?

Regards,
Greg

--_000_89836ef330334f32bdad645e73dfd5casakurauscom_
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
<p>I'm getting a &quot;<span style=3D"font-family:monospace"><span style=3D=
"color: rgb(178, 24, 24);">No GNU_HASH in the elf binary&quot;<span style=
=3D"color: rgb(0, 0, 0);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">error. =
The documentation says to add LD_FLAGS to the ld command line, but it's alr=
eady there:</span></span></span><br>
</span></p>
<p><span style=3D"font-family:monospace"><span style=3D"color: rgb(178, 24,=
 24);"><span style=3D"color: rgb(0, 0, 0);"><span style=3D"font-family: Cal=
ibri, Arial, Helvetica, sans-serif;"></p>
<div><br>
</div>
<div>LDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed</div>
<div><br>
</div>
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;">Here is=
 the&nbsp;<span style=3D"color: rgb(0, 0, 0);">command that produces the of=
fending elf binary:</span></span><br>
</span></span></span></span>
<p></p>
<p><span style=3D"font-family:monospace"><span style=3D"color: rgb(178, 24,=
 24);"><span style=3D"color: rgb(0, 0, 0);"><span style=3D"font-family: Cal=
ibri, Arial, Helvetica, sans-serif;"><br>
</span></span></span></span></p>
<p><span style=3D"font-family:monospace"><span style=3D"color: rgb(178, 24,=
 24);"><span style=3D"color: rgb(0, 0, 0);"></span></span></span></p>
<div>arm-poky-linux-gnueabi-gcc&nbsp; -march=3Darmv7ve -marm -mfpu=3Dneon-v=
fpv4&nbsp; -mfloat-abi=3Dhard -mcpu=3Dcortex-a7 -Wl,-O1 -Wl,--hash-style=3D=
gnu -Wl,--as-needed --sysroot=3D/home/gwilson/Qt-5.9/Yocto-build-RPi3/build=
-raspberrypi3/tmp/sysroots/raspberrypi3 -shared -Wl,-soname,libcanfestival_=
can_socket.so&nbsp;
 -o libcanfestival_can_socket.so can_socket.o</div>
<div><br>
</div>
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><span s=
tyle=3D"color: rgb(0, 0, 0);">Can anyone shed more light on this? Could the=
re be some reason that the flags aren't being passed to the loader? Or some=
 other missing flag?</span></span><br>
<p></p>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><s=
pan style=3D"color: rgb(0, 0, 0);"><br>
</span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><s=
pan style=3D"color: rgb(0, 0, 0);">Regards,</span></span></div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;"><s=
pan style=3D"color: rgb(0, 0, 0);">Greg</span></span></div>
</div>
</body>
</html>

--_000_89836ef330334f32bdad645e73dfd5casakurauscom_--
