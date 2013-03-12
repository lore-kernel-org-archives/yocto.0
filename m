Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
	[149.32.232.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57EB1E0131E
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 08:07:48 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.84,831,1355097600"; d="scan'208,217";a="429221"
X-IronPort-AV: E=Sophos;i="4.84,831,1355097600"; d="scan'208,217";a="2305305"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Makefile package missing 
Thread-Index: Ac4fMlOIPoLs5uSiTXKxPqibImFdmg==
Date: Tue, 12 Mar 2013 15:07:45 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Subject: Makefile package missing
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
X-List-Received-Date: Tue, 12 Mar 2013 15:07:48 -0000
Message-ID: <MADEUP.15D9584F950DC9D5.29417@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B98BBFB67D89184E8E876F332BDBC3E0A152E8GLDMS85001goldlnk_"

--_000_B98BBFB67D89184E8E876F332BDBC3E0A152E8GLDMS85001goldlnk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a recipe for a set of simple user applications I need on the rootfs.=
 However, my application package was only built w/ -dev & -dbg suffixes (wh=
ereas it looks like everything else also has a 3rd package w/o any suffix).

For the moment I'm explicitly adding the -dbg version to IMAGE_INSTALL to g=
et around this. Any idea why I'm not getting the 3rd package built?  The re=
cipe is pretty thin (other suggestions also welcome):

DESCRIPTION =3D "Test Applications"
LICENSE =3D "SDK"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D528a726dd12b5c980054892aae4ff93d=
<file:///\\COPYING;md5=3D528a726dd12b5c980054892aae4ff93d>"
# SECTION defaults to "base" -- doesn't seem to do anything....
SECTION =3D "examples"

# Everything inherits from base

PR =3D "r0"
PV =3D "0.1"

SRC_URI =3D "file://.<file:///\\.>"

S =3D "${WORKDIR}"

DEPENDS =3D "demo-fpga"
RDEPENDS =3D "demo-fpga"

# Guess PKG_CONFIG_SYSROOT_DIR is the way to pick up sysroot dir for fpga d=
river header files...
EXTRA_OEMAKE =3D "'CC=3D${CC}' 'RANLIB=3D${RANLIB}' 'AR=3D${AR}' \
        'CFLAGS=3D${CFLAGS}' 'DRIVERS_SRC=3D${PKG_CONFIG_SYSROOT_DIR}/usr/i=
nclude/demo-fpga' 'BUILDDIR=3D${S}'"

#my_bindir =3D "${bindir}"
my_bindir =3D "/usr/local/bin"

do_install () {
  make INSTALL_DIR=3D${D}${my_bindir} install
}

PARALLEL_MAKE =3D ""

BBCLASSEXTEND =3D "native"


Thanks,
Dean


--_000_B98BBFB67D89184E8E876F332BDBC3E0A152E8GLDMS85001goldlnk_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have a recipe for a =
set of simple user applications I need on the rootfs. However, my applicati=
on package was only built w/ -dev &amp; -dbg suffixes (whereas it looks lik=
e everything else also has a 3<sup>rd</sup>
 package w/o any suffix).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">For the moment I&#8217=
;m explicitly adding the -dbg version to IMAGE_INSTALL to get around this. =
Any idea why I&#8217;m not getting the 3<sup>rd</sup> package built? &nbsp;=
The recipe is pretty thin (other suggestions also welcome):<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">DESCRIPTION =3D &quot;Test Applications&quot;=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">LICENSE =3D &quot;SDK&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">LIC_FILES_CHKSUM =3D &quot;<a href=3D"file://=
/\\COPYING;md5=3D528a726dd12b5c980054892aae4ff93d">file://COPYING;md5=3D528=
a726dd12b5c980054892aae4ff93d</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"># SECTION defaults to &quot;base&quot; -- doe=
sn't seem to do anything....<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">SECTION =3D &quot;examples&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"># Everything inherits from base<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">PR =3D &quot;r0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">PV =3D &quot;0.1&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">SRC_URI =3D &quot;<a href=3D"file:///\\.">fil=
e://.</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">S =3D &quot;${WORKDIR}&quot;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">DEPENDS =3D &quot;demo-fpga&quot;<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">RDEPENDS =3D &quot;demo-fpga&quot;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"># Guess PKG_CONFIG_SYSROOT_DIR is the way to =
pick up sysroot dir for fpga driver header files...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">EXTRA_OEMAKE =3D &quot;'CC=3D${CC}' 'RANLIB=
=3D${RANLIB}' 'AR=3D${AR}' \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'C=
FLAGS=3D${CFLAGS}' 'DRIVERS_SRC=3D${PKG_CONFIG_SYSROOT_DIR}/usr/include/dem=
o-fpga' 'BUILDDIR=3D${S}'&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">#my_bindir =3D &quot;${bindir}&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">my_bindir =3D &quot;/usr/local/bin&quot;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">do_install () {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">&nbsp; make INSTALL_DIR=3D${D}${my_bindir} in=
stall<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">PARALLEL_MAKE =3D &quot;&quot;<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Cou=
rier New&quot;;color:#1F497D">BBCLASSEXTEND =3D &quot;native&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Dean <o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_B98BBFB67D89184E8E876F332BDBC3E0A152E8GLDMS85001goldlnk_--
