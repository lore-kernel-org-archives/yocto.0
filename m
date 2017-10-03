Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14771E00D12; Mon,  2 Oct 2017 17:30:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9A8E00C89
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 17:30:29 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Tue, 03 Oct 2017 00:30:27 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 2 Oct 2017 17:30:25 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 2 Oct 2017 17:30:25 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: package error for custom devtool recipe
Thread-Index: AQHTO953v2swXIiDdUy4BvJzp/pkaA==
Date: Tue, 3 Oct 2017 00:30:25 +0000
Message-ID: <7411926e7a7048e99289a55fdf1af075@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1506990626-298552-26128-77931-1
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185624
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: package error for custom devtool recipe
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
X-List-Received-Date: Tue, 03 Oct 2017 00:30:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7411926e7a7048e99289a55fdf1af075sakurauscom_"

--_000_7411926e7a7048e99289a55fdf1af075sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've got a recipe that I'm trying to get working that was created by devtoo=
l:

# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guess=
es - it is
# your responsibility to verify that the values are complete and correct.
#
# NOTE: multiple licenses have been detected; if that is correct you should=
 separate
# these in the LICENSE value using & if the multiple licenses all apply, or=
 | if there
# is a choice between the multiple licenses. If in doubt, check the accompa=
nying
# documentation to determine which situation is applicable.
#
# The following license files were not able to be identified and are
# represented as "Unknown" below, you will need to check them yourself:
#   src/towitoko/COPYING
#   src/openct/LICENSE
#
LICENSE =3D "LGPL-2.1"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D2d5025d4aa3495befef8f17206a5b0a1=
 \
                    file://src/towitoko/COPYING;md5=3D2fc60379096eee9073e30=
12488ba87cd \
                    file://src/openct/LICENSE;md5=3Debc2e3e5ba280a30e3e1abd=
91a4a6c52"

SRC_URI =3D "https://downloads.sourceforge.net/acsccid/acsccid-${PV}.tar.bz=
2"
SRC_URI[md5sum] =3D "ac77b3aeae0a11723c96c7f98769490e"
SRC_URI[sha256sum] =3D "1607591ee0df07c0157a71f6cb61e1e11fe1fa17331f02d2dff=
020db0e28c0ae"

DEPENDS =3D "flex-native libusb1 pcsc-lite"

# NOTE: if this software is not capable of being built in a separate build =
directory
# from the source, you should replace autotools with autotools-brokensep in=
 the
# inherit line
inherit pkgconfig autotools

# Specify any options you want to pass to the configure script using EXTRA_=
OECONF:
EXTRA_OECONF =3D ""


I get some package errors when I build this:

ERROR: QA Issue: acsccid: Files/directories were installed but not shipped =
in any package:
  /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Info.plist
  /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
acsccid: 2 installed and not shipped files. [installed-vs-shipped]


I've added some FILES =3D lines to try to get rid of the error to no avail:

FILES_${PN} =3D "${libdir}/libacsccid.so"

or:

FILES_${PN} =3D ".libs/libacsccid.so"

or just:

FILES_${PN} =3D "libacsccid.so"

and:

PACKAGE_BEFORE_PN =3D "info"
FILES_${PN}-info =3D "Info.plist"


Where can I find what the specification is for the Info.plist & libacsccid.=
so files so that I can properly package them. I've looked in the log files =
but I haven't been able to find anywhere that has something that would look=
 like what I need to use to specify packaging up the libacsccid.so and not =
even installing the Info.plist file.

Thanks in advanced
Greg

--_000_7411926e7a7048e99289a55fdf1af075sakurauscom_
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
<p></p>
<div>I've got a recipe that I'm trying to get working that was created by d=
evtool:</div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># Rec=
ipe created by recipetool</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># Thi=
s is the basis of a recipe and may need further editing in order to be full=
y functional.</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># (Fe=
el free to remove these comments when editing.)</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># WAR=
NING: the following LICENSE and LIC_FILES_CHKSUM values are best guesses - =
it is</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># you=
r responsibility to verify that the values are complete and correct.</span>=
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">#</sp=
an></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># NOT=
E: multiple licenses have been detected; if that is correct you should sepa=
rate</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># the=
se in the LICENSE value using &amp; if the multiple licenses all apply, or =
| if there</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># is =
a choice between the multiple licenses. If in doubt, check the accompanying=
</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># doc=
umentation to determine which situation is applicable.</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">#</sp=
an></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># The=
 following license files were not able to be identified and are</span></div=
>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># rep=
resented as &quot;Unknown&quot; below, you will need to check them yourself=
:</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">#&nbs=
p; &nbsp;src/towitoko/COPYING</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">#&nbs=
p; &nbsp;src/openct/LICENSE</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">#</sp=
an></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">LICEN=
SE =3D &quot;LGPL-2.1&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">LIC_F=
ILES_CHKSUM =3D &quot;file://COPYING;md5=3D2d5025d4aa3495befef8f17206a5b0a1=
 \</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://src=
/towitoko/COPYING;md5=3D2fc60379096eee9073e3012488ba87cd \</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://src=
/openct/LICENSE;md5=3Debc2e3e5ba280a30e3e1abd91a4a6c52&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRC_U=
RI =3D &quot;https://downloads.sourceforge.net/acsccid/acsccid-${PV}.tar.bz=
2&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRC_U=
RI[md5sum] =3D &quot;ac77b3aeae0a11723c96c7f98769490e&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">SRC_U=
RI[sha256sum] =3D &quot;1607591ee0df07c0157a71f6cb61e1e11fe1fa17331f02d2dff=
020db0e28c0ae&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">DEPEN=
DS =3D &quot;flex-native libusb1 pcsc-lite&quot;</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># NOT=
E: if this software is not capable of being built in a separate build direc=
tory</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># fro=
m the source, you should replace autotools with autotools-brokensep in the<=
/span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># inh=
erit line</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">inher=
it pkgconfig autotools</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># Spe=
cify any options you want to pass to the configure script using EXTRA_OECON=
F:</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">EXTRA=
_OECONF =3D &quot;&quot;</span></div>
<div><br>
</div>
<div><br>
</div>
<div>I get some package errors when I build this:</div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">ERROR=
: QA Issue: acsccid: Files/directories were installed but not shipped in an=
y package:</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Info.plist</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp=
; /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so</sp=
an></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">Pleas=
e set FILES such that these items are packaged. Alternatively if they are u=
nneeded, avoid installing them or delete them within do_install.</span></di=
v>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">acscc=
id: 2 installed and not shipped files. [installed-vs-shipped]</span></div>
<div><br>
</div>
<div><br>
</div>
<div>I've added some FILES =3D lines to try to get rid of the error to no a=
vail:</div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"></spa=
n></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;">FILES_${PN=
} =3D &quot;${libdir}/libacsccid.so&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><br>
</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">or:</=
span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;">FILES_${PN=
} =3D &quot;.libs/libacsccid.so&quot;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;">or just:</=
span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-family: &quot;Courier New&quot;, monospace;">FILES_${PN=
} =3D &quot;libacsccid.so&quot;</span></div>
<div><br>
</div>
<div>and:</div>
</span></div>
<div><br>
</div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace;">PACKA=
GE_BEFORE_PN =3D &quot;info&quot;</span></div>
<div><span style=3D"font-family: &quot;Courier New&quot;, monospace; font-s=
ize: 12pt;">FILES_${PN}-info =3D &quot;Info.plist&quot;</span><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Where can I find what the specification is for the Info.plist &amp; li=
bacsccid.so files so that I can properly package them. I've looked in the l=
og files but I haven't been able to find anywhere that has something that w=
ould look like what I need to use to
 specify packaging up the libacsccid.so and not even installing the Info.pl=
ist file.</div>
<div><br>
</div>
<div>Thanks in advanced</div>
<div>Greg</div>
<p></p>
<p></p>
</div>
</body>
</html>

--_000_7411926e7a7048e99289a55fdf1af075sakurauscom_--
