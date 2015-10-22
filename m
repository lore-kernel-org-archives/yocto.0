Return-Path: <dwsmith@ball.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49C9DE00B1A; Thu, 22 Oct 2015 11:26:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.86.201.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx0b-0014fe01.pphosted.com (mx0b-0014fe01.pphosted.com
	[208.86.201.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC5DE00AF6
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 11:26:55 -0700 (PDT)
Received: from pps.filterd (m0046820.ppops.net [127.0.0.1])
	by m0046820.ppops.net (8.15.0.59/8.15.0.59) with SMTP id t9MIOiPT031634
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 12:26:54 -0600
Received: from owa.ballaerospace.com ([162.18.172.11])
	by m0046820.ppops.net with ESMTP id 1xq38d8h4e-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 12:26:54 -0600
Received: from EX2010-CO-02.AERO.BALL.com ([fe80::1c1b:3704:218f:e8b6]) by
	EX2010-CO-03.AERO.BALL.com ([fe80::1892:27e7:c852:983b%13]) with mapi
	id 14.03.0181.006; Thu, 22 Oct 2015 12:26:54 -0600
From: "Smith, Daniel W" <dwsmith@ball.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: using do_install_append?
Thread-Index: AdEM9zPyKXhEjiuuQxChBtODIydEZA==
Date: Thu, 22 Oct 2015 18:26:53 +0000
Message-ID: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5180@EX2010-CO-02.AERO.BALL.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.255.105]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-10-22_12:2015-10-22, 2015-10-22,
	1970-01-01 signatures=0
Subject: using do_install_append?
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
X-List-Received-Date: Thu, 22 Oct 2015 18:26:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5180EX2010CO02AEROB_"

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5180EX2010CO02AEROB_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

This seems like it should be an easy task, but perhaps I'm missing somethin=
g very basic so it is not working.

I have working recipe that installs the fluxbox window manager.  However I =
want to customize the default runtime configuration files located in /usr/s=
hare/fluxbox.  To do this I created fluxbox_1.3.5.bbappend in order to repl=
ace the default configuration files with my own.

This file contains the following:

FILESEXTRAPATHS_prepend_poky :=3D "${THISDIR}/files:"

SRC_URI =3D "file://apps \
           file://init \
           file://keys \
           file://menu \
           file://overlay \
           file://windowmenu "

#
# Install the customized Fluxbox configuration files.
#
do_install_append() {
  install -m 0644 ${WORKDIR}/apps          ${D}{datadir}/fluxbox/apps
  install -m 0644 ${WORKDIR}/init          ${D}{datadir}/fluxbox/init
  install -m 0644 ${WORKDIR}/keys          ${D}{datadir}/fluxbox/keys
  install -m 0644 ${WORKDIR}/menu          ${D}{datadir}/fluxbox/menu
  install -m 0644 ${WORKDIR}/windowmenu    ${D}{datadir}/fluxbox/windowmenu
}

However now when I bitbake fluxbox it fails to configure:

ERROR: Function failed: fluxbox: LIC_FILES_CHKSUM points to an invalid file=
: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/work/ppc7400-poky-linux/f=
luxbox/1.3.5-r0/git/COPYING
ERROR: Logfile of failure stored in: /export/home/dwsmith/poky-fido-13.0.0/=
build/tmp/work/ppc7400-poky-linux/fluxbox/1.3.5-r0/temp/log.do_configure.32=
643
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common', 'common-linu=
x', 'common-glibc', 'powerpc32-linux', 'powerpc-linux', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_copy_aclocals
| DEBUG: Python function autotools_copy_aclocals finished
| DEBUG: Executing shell function do_configure
| NOTE: nothing to configure
| DEBUG: Shell function do_configure finished
| DEBUG: Executing python function do_qa_configure
| NOTE: Checking autotools environment for common misconfiguration
| DEBUG: Python function do_qa_configure finished
| ERROR: Function failed: fluxbox: LIC_FILES_CHKSUM points to an invalid fi=
le: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/work/ppc7400-poky-linux=
/fluxbox/1.3.5-r0/git/COPYING
ERROR: Task 5 (/export/home/dwsmith/poky-fido-13.0.0/meta-lightwm-master/re=
cipes-fluxbox/fluxbox/fluxbox_1.3.5.bb, do_configure) failed with exit code=
 '1'
NOTE: Tasks Summary: Attempted 793 tasks of which 792 didn't need to be rer=
un and 1 failed.


Why would adding a do_install_append cause the config to now fail?  What am=
 I missing?  I can remove  fluxbox_1.3.5.bbappend and it works fine, so the=
re is obviously something I'm not doing right.

Thanks for nay help you can provide.
-Daniel Smith




This message and any enclosures are intended only for the addressee.  Pleas=
e=20
notify the sender by email if you are not the intended recipient.  If you a=
re=20
not the intended recipient, you may not use, copy, disclose, or distribute =
this=20
message or its contents or enclosures to any other person and any such acti=
ons=20
may be unlawful.  Ball reserves the right to monitor and review all message=
s=20
and enclosures sent to or from this email address.

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5180EX2010CO02AEROB_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This seems like it should be an easy task, but perha=
ps I&#8217;m missing something very basic so it is not working.<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have working recipe that installs the fluxbox wind=
ow manager.&nbsp; However I want to customize the default runtime configura=
tion files located in /usr/share/fluxbox.&nbsp; To do this I created fluxbo=
x_1.3.5.bbappend in order to replace the default
 configuration files with my own.&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This file contains the following:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend_poky :=3D &quot;${THISDIR}/f=
iles:&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;file://apps \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://init \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://keys \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://menu \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://overlay \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; file://windowmenu &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal"># Install the customized Fluxbox configuration files=
.<o:p></o:p></p>
<p class=3D"MsoNormal">#<o:p></o:p></p>
<p class=3D"MsoNormal">do_install_append() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 0644 ${WORKDIR}/apps&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${D}{datadir}/fluxbox/apps<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 0644 ${WORKDIR}/init&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${D}{datadir}/fluxbox/init<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 0644 ${WORKDIR}/keys&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${D}{datadir}/fluxbox/keys<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 0644 ${WORKDIR}/menu&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${D}{datadir}/fluxbox/menu<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 0644 ${WORKDIR}/windowmenu&nbsp;&n=
bsp;&nbsp; ${D}{datadir}/fluxbox/windowmenu<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However now when I bitbake fluxbox it fails to confi=
gure:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: fluxbox: LIC_FILES_CHKSUM po=
ints to an invalid file: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/wo=
rk/ppc7400-poky-linux/fluxbox/1.3.5-r0/git/COPYING<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /export/home/dw=
smith/poky-fido-13.0.0/build/tmp/work/ppc7400-poky-linux/fluxbox/1.3.5-r0/t=
emp/log.do_configure.32643<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function sysroot_cleanssta=
te<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function sysroot_cleansstate finishe=
d<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: SITE files ['endian-big', 'bit-32', 'powerp=
c-common', 'common-linux', 'common-glibc', 'powerpc32-linux', 'powerpc-linu=
x', 'common']<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function autotools_preconfi=
gure<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Shell function autotools_preconfigure finis=
hed<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function autotools_copy_ac=
locals<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function autotools_copy_aclocals fin=
ished<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_configure<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| NOTE: nothing to configure<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Shell function do_configure finished<o:p></=
o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function do_qa_configure<o=
:p></o:p></p>
<p class=3D"MsoNormal">| NOTE: Checking autotools environment for common mi=
sconfiguration<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function do_qa_configure finished<o:=
p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: fluxbox: LIC_FILES_CHKSUM =
points to an invalid file: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/=
work/ppc7400-poky-linux/fluxbox/1.3.5-r0/git/COPYING<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 5 (/export/home/dwsmith/poky-fido-13.0.0=
/meta-lightwm-master/recipes-fluxbox/fluxbox/fluxbox_1.3.5.bb, do_configure=
) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 793 tasks of which 79=
2 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Why would adding a do_install_append cause the confi=
g to now fail?&nbsp; What am I missing?&nbsp; I can remove &nbsp;fluxbox_1.=
3.5.bbappend and it works fine, so there is obviously something I&#8217;m n=
ot doing right.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for nay help you can provide.<o:p></o:p></p>
<p class=3D"MsoNormal">-Daniel Smith<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>

<DIV>
<BR>
<BR>
This message and any enclosures are intended only for the addressee.  Pleas=
e <BR>
notify the sender by email if you are not the intended recipient.  If you a=
re <BR>
not the intended recipient, you may not use, copy, disclose, or distribute =
this <BR>
message or its contents or enclosures to any other person and any such acti=
ons <BR>
may be unlawful.  Ball reserves the right to monitor and review all message=
s <BR>
and enclosures sent to or from this email address.<BR>
</DIV></body>
</html>

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4DE5180EX2010CO02AEROB_--
