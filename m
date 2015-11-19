Return-Path: <marcin.krzeminski@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE17FE00985; Thu, 19 Nov 2015 03:05:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [93.183.12.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 392 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Nov 2015 03:05:43 PST
Received: from demumfd002.nsn-inter.net (demumfd002.nsn-inter.net
	[93.183.12.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BFA1E007DA
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 03:05:43 -0800 (PST)
Received: from demuprx016.emea.nsn-intra.net ([10.150.129.55])
	by demumfd002.nsn-inter.net (8.15.2/8.15.2) with ESMTPS id
	tAJAxAAE007445
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 10:59:10 GMT
Received: from DEMUHTC003.nsn-intra.net ([10.159.42.34])
	by demuprx016.emea.nsn-intra.net (8.12.11.20060308/8.12.11) with ESMTP
	id tAJAx90V019135
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 19 Nov 2015 11:59:09 +0100
Received: from DEMUHTC012.nsn-intra.net (10.159.42.43) by
	DEMUHTC003.nsn-intra.net (10.159.42.34) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 19 Nov 2015 11:59:09 +0100
Received: from DEMUMBX005.nsn-intra.net ([169.254.5.30]) by
	DEMUHTC012.nsn-intra.net ([10.159.42.43]) with mapi id 14.03.0248.002;
	Thu, 19 Nov 2015 11:59:08 +0100
From: "Krzeminski, Marcin (Nokia - PL/Wroclaw)" <marcin.krzeminski@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: After update to yocto 2.0 from 1.8 can not install app to
	/usr/sbin in SDK
Thread-Index: AdEiuUoGfH/C7i9YRR+H5+t0g2ZH8w==
Date: Thu, 19 Nov 2015 10:59:07 +0000
Message-ID: <CA0E6F9BA6AED7458C23277BD87075E510107688@DEMUMBX005.nsn-intra.net>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.159.42.116]
MIME-Version: 1.0
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for
	further information)
X-purgate-size: 6868
X-purgate-ID: 151667::1447930750-000015C7-74ABBF67/0/0
Subject: After update to yocto 2.0 from 1.8 can not install app to /usr/sbin in SDK
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
X-List-Received-Date: Thu, 19 Nov 2015 11:05:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CA0E6F9BA6AED7458C23277BD87075E510107688DEMUMBX005nsnin_"

--_000_CA0E6F9BA6AED7458C23277BD87075E510107688DEMUMBX005nsnin_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

After migration to poky 2.0 there is a problem with SDK creation for custom=
 cmake app.
Cmake install line is:

install(TARGETS flashcreator DESTINATION sbin)

Here is a recipe (without SRC URI):

SECTION =3D "libs"
LICENSE =3D "CLOSED"
PR =3D "r1"

S =3D "${WORKDIR}/git"

DEPENDS =3D "libxml2"
RDEPENDS_${PN} =3D "libxml2"

inherit cmake
BBCLASSEXTEND =3D "native nativesdk"

In yocto 2.0 it is not possible to create SDK with this app:

ERROR: QA Issue: nativesdk-net-bootcreator: Files/directories were installe=
d but not shipped in any package:
  /opt
  /opt/poky
  /opt/poky/2.0
  /opt/poky/2.0/sysroots
  /opt/poky/2.0/sysroots/i686-pokysdk-linux
  /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr
  /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/sbin
  /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/sbin/netbootcreator
  /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/sbin/.debug
  /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/sbin/.debug/netbootcreator
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
nativesdk-net-bootcreator: 10 installed and not shipped files. [installed-v=
s-shipped]

From bitbake conf file it seem that /usr/sbin directory is under FILES filt=
er.
Adding FILES_${PN} +=3D "${sbin}/*} did not helped.
If I change cmake to install in /usr/bin all is working fine.
Does this behavior is somehow expected?

Regards,
Marcin Krzeminski



--_000_CA0E6F9BA6AED7458C23277BD87075E510107688DEMUMBX005nsnin_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Arial" size=3D"3"><span style=3D"font-size:12pt;">
<div><font color=3D"#222222">Hello,</font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222">After migration to poky 2.0 there is a problem=
 with SDK creation for custom cmake app.</font></div>
<div><font color=3D"#222222">Cmake install line is:</font></div>
<div><font color=3D"#222222">&nbsp;</font></div>
<div><font color=3D"#222222"><i>install(TARGETS flashcreator DESTINATION sb=
in)</i></font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222">Here is a recipe (without SRC URI):</font></di=
v>
<div><font color=3D"#222222">&nbsp;</font></div>
<div><font color=3D"#222222"><i>SECTION =3D &quot;libs&quot;</i></font></di=
v>
<div><font color=3D"#222222"><i>LICENSE =3D &quot;CLOSED&quot;</i></font></=
div>
<div><font color=3D"#222222"><i>PR =3D &quot;r1&quot;</i></font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222"><i>S =3D &quot;${WORKDIR}/git&quot;</i></font>=
</div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222"><i>DEPENDS =3D &quot;libxml2&quot;</i></font><=
/div>
<div><font color=3D"#222222"><i>RDEPENDS_${PN} =3D &quot;libxml2&quot;</i><=
/font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222"><i>inherit cmake</i></font></div>
<div><font color=3D"#222222"><i>BBCLASSEXTEND =3D &quot;native nativesdk&qu=
ot;</i></font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222">In yocto 2.0 it is not possible to create SDK =
with this app:</font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222"><i>ERROR: QA Issue: nativesdk-net-bootcreator:=
 Files/directories were installed but not shipped in any package:</i></font=
></div>
<div><font color=3D"#222222"><i>&nbsp; /opt</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots</i></font></d=
iv>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots/i686-pokysdk-=
linux</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots/i686-pokysdk-=
linux/usr</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots/i686-pokysdk-=
linux/usr/sbin</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots/i686-pokysdk-=
linux/usr/sbin/netbootcreator</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots/i686-pokysdk-=
linux/usr/sbin/.debug</i></font></div>
<div><font color=3D"#222222"><i>&nbsp; /opt/poky/2.0/sysroots/i686-pokysdk-=
linux/usr/sbin/.debug/netbootcreator</i></font></div>
<div><font color=3D"#222222"><i>Please set FILES such that these items are =
packaged. Alternatively if they are unneeded, avoid installing them or dele=
te them within do_install.</i></font></div>
<div><font color=3D"#222222"><i>nativesdk-net-bootcreator: 10 installed and=
 not shipped files. [installed-vs-shipped]</i></font></div>
<div><font face=3D"Calibri" size=3D"2" color=3D"#222222"><span style=3D"fon=
t-size:11pt;">&nbsp;</span></font></div>
<div><font color=3D"#222222">From bitbake conf file it seem that /usr/sbin =
directory is under FILES filter.</font></div>
<div><font color=3D"#222222">Adding FILES_${PN} &#43;=3D &#8220;${sbin}/*} =
did not helped.</font></div>
<div><font color=3D"#222222">If I change cmake to install in /usr/bin all i=
s working fine.</font></div>
<div><font color=3D"#222222">Does this behavior is somehow expected?</font>=
</div>
<div><font color=3D"#222222">&nbsp;</font></div>
<div><font color=3D"#222222">Regards,</font></div>
<div><font color=3D"#222222">Marcin Krzeminski</font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_CA0E6F9BA6AED7458C23277BD87075E510107688DEMUMBX005nsnin_--
