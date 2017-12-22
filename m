Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C479E00D9D; Fri, 22 Dec 2017 11:51:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E5F8E00D1C
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 11:51:24 -0800 (PST)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 22 Dec 2017 19:51:23 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 22 Dec 2017 11:51:22 -0800
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 22 Dec 2017 11:51:22 -0800
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Kernel configuration problem/confusion
Thread-Index: AQHTe1t4oY5w7F8IEEKB1Z4cuyo8mw==
Date: Fri, 22 Dec 2017 19:51:22 +0000
Message-ID: <a56c815971a74fedaf7f9676840447f1@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1513972282-321458-19118-30390-1
X-BESS-VER: 2017.16-r1712182224
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.188269
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 HTML_MESSAGE           BODY: HTML included in message 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, HTML_MESSAGE
X-BESS-BRTS-Status: 1
Subject: Kernel configuration problem/confusion
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
X-List-Received-Date: Fri, 22 Dec 2017 19:51:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a56c815971a74fedaf7f9676840447f1sakurauscom_"

--_000_a56c815971a74fedaf7f9676840447f1sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to add some kernel configuration to a Raspberry pi3 yocto build.=
  I've got the .cfg fragment being read in, but I'm getting warnings that i=
ndicate that they are not making the desired changes.


The first one is CONFIG_SND_SOC_MAX9768. This is a sound codec and the Kcon=
fig file has it in a long list of select's. the one for the MAX9768 is:

    select CONFIG_SND_SOC_MAX9768 if I2C

I2C is set, but CONFIG_SND_SOC_MAX9768 ends up undefined. the warning I'm g=
etting is:

---------- CONFIG_SND_SOC_MAX9768 -----------------
Config: CONFIG_SND_SOC_MAX9768
From: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-sha=
red/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_SND_SOC_MAX9768=3Dy
Actual value:

Config 'SND_SOC_MAX9768' has the following conditionals:

Dependency values are:



SND_SOC_MAX9768 ends up not being selected even though I try to set it ti '=
y'


The second one is CONFIG_MAX1363, this is an ADC that I'm trying to set, th=
e warning is:

---------- CONFIG_MAX1363 -----------------
Config: CONFIG_MAX1363
From: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/work-sha=
red/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
Requested value:  CONFIG_MAX1363=3Dy
Actual value:     # CONFIG_MAX1363 is not set

Config 'MAX1363' has the following conditionals:
  I2C (value: "y")
Dependency values are:
  I2C [y]

It ends up being not set. In both cases the value that I'm trying to set is=
 ignored. Any insight would be greatly appreciated.


Regards,

Greg

--_000_a56c815971a74fedaf7f9676840447f1sakurauscom_
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
<p>I'm trying to add some kernel configuration to a Raspberry pi3 yocto bui=
ld.&nbsp; I've got the .cfg fragment being read in, but I'm getting warning=
s that indicate that they are not making the desired changes.</p>
<p><br>
</p>
<p>The first one is&nbsp;<span>CONFIG_SND_SOC_MAX9768. This is a sound code=
c and the Kconfig file has it in a long list of select's. the one for the M=
AX9768 is:</span></p>
<p><span>&nbsp; &nbsp; select&nbsp;<span style=3D"font-family: Calibri, Ari=
al, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Em=
oji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji=
&quot;, EmojiSymbols; font-size: 16px;">CONFIG_SND_SOC_MAX9768 if I2C</span=
></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">I2C is set, but&nbsp;<span style=3D"font-family: Calibri, Ari=
al, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Em=
oji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji=
&quot;, EmojiSymbols; font-size: 16px;">CONFIG_SND_SOC_MAX9768
 ends up undefined. the warning I'm getting is:</span></span></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;"></span></span></span></p>
<div>---------- CONFIG_SND_SOC_MAX9768 -----------------</div>
<div>Config: CONFIG_SND_SOC_MAX9768</div>
<div>From: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</div>
<div>Requested value:&nbsp; CONFIG_SND_SOC_MAX9768=3Dy</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;</div>
<div><br>
</div>
<div>Config 'SND_SOC_MAX9768' has the following conditionals:&nbsp;</div>
<div>&nbsp;&nbsp;</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp;</div>
<div><br>
</div>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">SND_SOC_MAX9768 ends up not being selected even though I try
 to set it ti 'y'</span><br>
</span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><br>
</span></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">The second one is&nbsp;<span>CONFIG_MAX1363, this is an ADC t=
hat
 I'm trying to set, the warning is:</span></span></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span></p>
<div>---------- CONFIG_MAX1363 -----------------</div>
<div>Config: CONFIG_MAX1363</div>
<div>From: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-raspberrypi3/tmp/wor=
k-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg</div>
<div>Requested value:&nbsp; CONFIG_MAX1363=3Dy</div>
<div>Actual value:&nbsp; &nbsp; &nbsp;# CONFIG_MAX1363 is not set</div>
<div><br>
</div>
<div>Config 'MAX1363' has the following conditionals:&nbsp;</div>
<div>&nbsp; I2C (value: &quot;y&quot;)</div>
<div>Dependency values are:&nbsp;</div>
<div>&nbsp; I2C [y]</div>
<div><br>
</div>
It ends up being not set. In both cases the value that I'm trying to set is=
 ignored. Any insight would be greatly appreciated.</span></span></span>
<p></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span><br>
</span></span></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span>Regards,</span></span></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span>Greg</span></span></span></p>
</div>
</body>
</html>

--_000_a56c815971a74fedaf7f9676840447f1sakurauscom_--
