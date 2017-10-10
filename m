Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB0D5E00D0E; Tue, 10 Oct 2017 09:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.235 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEE94E00D0E
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 09:34:33 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx3.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Tue, 10 Oct 2017 16:34:31 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 10 Oct 2017 09:34:28 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 10 Oct 2017 09:34:28 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: errors in recipe after move from devtool
Thread-Index: AQHTQeR3bS5Hw1lI/kCbrgtXNT82jKLdRhRG
Date: Tue, 10 Oct 2017 16:34:28 +0000
Message-ID: <994eabee7682438ea53aba932c7759c6@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
In-Reply-To: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507653270-298554-28199-271881-1
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185860
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Tue, 10 Oct 2017 16:34:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_994eabee7682438ea53aba932c7759c6sakurauscom_"

--_000_994eabee7682438ea53aba932c7759c6sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry, hit the wrong button in my mailer and sent this before I was finishe=
d.


So to continue, what is the problem with symlinked libraries in a non-dev p=
ackage, don't most libraries have syslink's to them?

Secondly, the redundant  RPATH, most of the links that I've found mentionin=
g this show a link with something like lib/../lib, the error that I'm getti=
ng doesn't have that. Any insight would be appreciated.


Regards,

Greg

________________________________
From: Greg Wilson-Lindberg
Sent: Tuesday, October 10, 2017 9:29:11 AM
To: yocto@yoctoproject.org
Subject: errors in recipe after move from devtool


I'm trying to develop a new recipe for zint, barcode generating software. I=
 initially built the recipe under devtool and got it to the point that ther=
e were no errors. I then did a devtool finish command to move it to my yoct=
o build tree under our private recipe and now when I build it I get 2 diffe=
rent errors that don't make any sense to me:


ERROR: zint-2.6.1-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk- pack=
age contains symlink .so: zint path '/work/cortexa7hf-neon-vfpv4-poky-linux=
-gnueabi/zint/2.6.1-r0/packages-split/
zint/usr/lib/libzint.so'
non -dev/-dbg/nativesdk- package contains symlink .so: zint path '/work/cor=
texa7hf-neon-vfpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr=
/lib/libQZint.so' [dev-so]
ERROR: zint-2.6.1-r0 do_package_qa: QA Issue: zint: /work/cortexa7hf-neon-v=
fpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/libzint.s=
o.2.6.1 contains probably-redundant RP
ATH /usr/lib
zint: /work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages=
-split/zint/usr/lib/libQZint.so.2.6.1 contains probably-redundant RPATH /us=
r/lib [useless-rpaths]
ERROR: zint-2.6.1-r0 do_package_qa: QA run found fatal errors. Please consi=
der fixing them.
ERROR: zint-2.6.1-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/gwilson/Qt-5.9/Yocto-build-RPi3/=
build-raspberrypi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/zint/2=
.6.1-r0/temp/log.do_package_qa.3282
ERROR: Task (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-sakura/reci=
pes-sakura/Scribe-support/zint_2.6.1.bb:do_package_qa) failed with exit cod=
e '1'



--_000_994eabee7682438ea53aba932c7759c6sakurauscom_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Sorry, hit the wrong button in my mailer and sent this before I was fini=
shed.</p>
<p><br>
</p>
<p>So to continue, what is the problem with symlinked libraries in a non-de=
v package, don't most libraries have syslink's to them?</p>
<p>Secondly, the redundant&nbsp; RPATH, most of the links that I've found m=
entioning this show a link with something like lib/../lib, the error that I=
'm getting doesn't have that. Any insight would be appreciated.</p>
<p><br>
</p>
<p>Regards,</p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Greg Wilson-Lindberg<=
br>
<b>Sent:</b> Tuesday, October 10, 2017 9:29:11 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> errors in recipe after move from devtool</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I'm trying to develop a new recipe for zint, barcode generating software=
. I initially built the recipe under devtool and got it to the point that t=
here were no errors. I then did a devtool finish command to move it to my y=
octo build tree under our private
 recipe and now when I build it I get 2 different errors that don't make an=
y sense to me:</p>
<p><br>
</p>
<p><span style=3D"font-family:monospace"><span style=3D"font-weight: bold; =
color: rgb(255, 84, 84);">ERROR</span>:
<span style=3D"color: rgb(178, 24, 24);">zint-2.6.1-r0 do_package_qa: QA Is=
sue: non -dev/-dbg/nativesdk- package contains symlink .so: zint path '/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/</s=
pan><br>
zint/usr/lib/libzint.so' <br>
<span style=3D"color: rgb(178, 24, 24);">non -dev/-dbg/nativesdk- package c=
ontains symlink .so: zint path '/work/cortexa7hf-neon-vfpv4-poky-linux-gnue=
abi/zint/2.6.1-r0/packages-split/zint/usr/lib/libQZint.so' [dev-so]</span>
<br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>: <=
span style=3D"color: rgb(178, 24, 24);">
zint-2.6.1-r0 do_package_qa: QA Issue: zint: /work/cortexa7hf-neon-vfpv4-po=
ky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/libzint.so.2.6.1=
 contains probably-redundant RP</span><br>
ATH /usr/lib <br>
<span style=3D"color: rgb(178, 24, 24);">zint: /work/cortexa7hf-neon-vfpv4-=
poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/libQZint.so.2.=
6.1 contains probably-redundant RPATH /usr/lib [useless-rpaths]</span>
<br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>: <=
span style=3D"color: rgb(178, 24, 24);">
zint-2.6.1-r0 do_package_qa: QA run found fatal errors. Please consider fix=
ing them.</span>
<br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>: <=
span style=3D"color: rgb(178, 24, 24);">
zint-2.6.1-r0 do_package_qa: Function failed: do_package_qa</span> <br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>: <=
span style=3D"color: rgb(178, 24, 24);">
Logfile of failure stored in: /home/gwilson/Qt-5.9/Yocto-build-RPi3/build-r=
aspberrypi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/zint/2.6.1-r0=
/temp/log.do_package_qa.3282</span>
<br>
<span style=3D"font-weight: bold; color: rgb(255, 84, 84);">ERROR</span>: <=
span style=3D"color: rgb(178, 24, 24);">
Task (/home/gwilson/Qt-5.9/Yocto-build-RPi3/sources/meta-sakura/recipes-sak=
ura/Scribe-support/zint_2.6.1.bb:do_package_qa) failed with exit code '1'</=
span><br>
<br>
</span><br>
</p>
</div>
</div>
</body>
</html>

--_000_994eabee7682438ea53aba932c7759c6sakurauscom_--
