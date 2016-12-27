Return-Path: <prvs=11695b2fec=nidhi.gareja@elektrobit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00593E0055C; Tue, 27 Dec 2016 01:02:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 169 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Dec 2016 01:02:23 PST
Received: from smtpgwcipde.elektrobit.com
	(smtpgwcipde.automotive.elektrobit.com [213.95.163.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFCFAE004E5
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 01:02:23 -0800 (PST)
Received: from denue6es003.localdomain (denue6es003.automotive.elektrobit.com
	[213.95.163.136]) by smtpgwcipde.elektrobit.com with ESMTP id
	uBR92Msr010150-uBR92Mst010150
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 10:02:22 +0100
Received: from denue6es003.securemail.local (localhost [127.0.0.1])
	by denue6es003.localdomain (Postfix) with SMTP id 996352D482
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 10:02:22 +0100 (CET)
Received: from denue6es008.ebgroup.elektrobit.com (unknown [10.5.139.25])
	by denue6es003.localdomain (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 10:02:22 +0100 (CET)
Received: from denue6es007.ebgroup.elektrobit.com (10.5.139.21) by
	denue6es008.ebgroup.elektrobit.com (10.5.139.25) with Microsoft SMTP
	Server (TLS) id 15.0.1210.3; Tue, 27 Dec 2016 10:02:22 +0100
Received: from denue6es007.ebgroup.elektrobit.com ([fe80::3df2:46b8:bd8:b87b])
	by denue6es007.ebgroup.elektrobit.com
	([fe80::3df2:46b8:bd8:b87b%12]) with
	mapi id 15.00.1210.000; Tue, 27 Dec 2016 10:02:22 +0100
From: <Nidhi.Gareja@elektrobit.com>
To: <yocto@yoctoproject.org>
Thread-Topic: ERROR: Function failed: do_compile 
Thread-Index: AdJgH4hB9SCmUyxvRd6khciRqRxF4AAAFmZQ
Date: Tue, 27 Dec 2016 09:02:21 +0000
Message-ID: <5aee1886fae844b596be31c314714faf@denue6es007.ebgroup.elektrobit.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.5.137.27]
MIME-Version: 1.0
Subject: FW: ERROR: Function failed: do_compile
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
X-List-Received-Date: Tue, 27 Dec 2016 09:02:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5aee1886fae844b596be31c314714fafdenue6es007ebgroupelekt_"

--_000_5aee1886fae844b596be31c314714fafdenue6es007ebgroupelekt_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

When I try to bitbake my customized image, I am getting the following error=
s :
---------------------------------------------------------------------------=
-------------------
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at /home/nidhi/proj=
ect/yocto/build/tmp/work/aarch64-poky-linux/udev/182-r9/temp/log.do_compile=
.7454)
ERROR: Logfile of failure stored in: /home/nidhi/project/yocto/build/tmp/wo=
rk/aarch64-poky-linux/udev/182-r9/temp/log.do_compile.7454
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64', 'co=
mmon-linux', 'common-glibc', 'aarch64-linux', 'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
| glib-genmarshal /home/nidhi/project/yocto/build/tmp/work/aarch64-poky-lin=
ux/udev/182-r9/udev-182/src/gudev/gudevmarshal.list --prefix=3Dg_udev_marsh=
al --header > src/gudev/gudevmarshal.h
| echo "#include \"gudevmarshal.h\"" > src/gudev/gudevmarshal.c && \
| glib-genmarshal /home/nidhi/project/yocto/build/tmp/work/aarch64-poky-lin=
ux/udev/182-r9/udev-182/src/gudev/gudevmarshal.list --prefix=3Dg_udev_marsh=
al --body >> src/gudev/gudevmarshal.c
| glib-mkenums --template /home/nidhi/project/yocto/build/tmp/work/aarch64-=
poky-linux/udev/182-r9/udev-182/src/gudev/gudevenumtypes.c.template /home/n=
idhi/project/yocto/build/tmp/work/aarch64-poky-linux/udev/182-r9/udev-182/s=
rc/gudev/gudevenums.h > \
|     src/gudev/gudevenumtypes.c.tmp && mv src/gudev/gudevenumtypes.c.tmp s=
rc/gudev/gudevenumtypes.c
| mkdir -p src/keymap
| gawk '/^#define.*KEY_[^ ]+[ \t]+[0-9]/ { if ($2 !=3D "KEY_MAX") { print $=
2 } }' < /home/nidhi/project/yocto/build/tmp/sysroots/h3ulcb/usr/include/li=
nux/input.h | sed 's/^KEY_COFFEE$/KEY_SCREENLOCK/' > src/keymap/keys.txt
| gawk 'BEGIN{ print "struct key { const char* name; unsigned short id; };"=
; print "%null-strings"; print "%%";} { print $1 ", " $1 }' < src/keymap/ke=
ys.txt > src/keymap/keys-from-name.gperf
| gawk 'BEGIN{ print "const char* const key_names[KEY_CNT] =3D { "} { print=
 "[" $1 "] =3D \"" $1 "\"," } END{print "};"}' < src/keymap/keys.txt > src/=
keymap/keys-to-name.h
| /home/nidhi/project/yocto/build/tmp/sysroots/x86_64-linux/usr/bin/gperf -=
L ANSI-C -t --ignore-case -N lookup_key -H hash_key_name -p -C < src/keymap=
/keys-from-name.gperf > src/keymap/keys-from-name.h
| (standard input): No keywords in input file!
| Makefile:3770: recipe for target 'src/keymap/keys-from-name.h' failed
| make: *** [src/keymap/keys-from-name.h] Error 1
| make: *** Waiting for unfinished jobs....
| WARNING: exit code 1 from a shell command.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /home/nidhi/pr=
oject/yocto /build/tmp/work/aarch64-poky-linux/udev/182-r9/temp/log.do_comp=
ile.7454)
ERROR: Task 5 (/home/nidhi/project/yocto /build/../poky/meta/recipes-core/u=
dev/udev_182.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 597 tasks of which 595 didn't need to be rer=
un and 1 failed.

Summary: 1 task failed:
  /home/nidhi/project/yocto /../poky/meta/recipes-core/udev/udev_182.bb, do=
_compile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
---------------------------------------------------------------------------=
-------------------

Please help me on this.

Thank you in advance.

Regards,
Nidhi


--_000_5aee1886fae844b596be31c314714fafdenue6es007ebgroupelekt_
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
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I try to bitbake my customized image, <span sty=
le=3D"color:#1F497D">
I </span>am getting the following errors :<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------------------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: oe_runmake failed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_compile (log file is loca=
ted at /home/nidhi/project/yocto/build/tmp/work/aarch64-poky-linux/udev/182=
-r9/temp/log.do_compile.7454)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/nidhi/pro=
ject/yocto/build/tmp/work/aarch64-poky-linux/udev/182-r9/temp/log.do_compil=
e.7454<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: SITE files ['endian-little', 'bit-64', 'arm=
-common', 'arm-64', 'common-linux', 'common-glibc', 'aarch64-linux', 'commo=
n']<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_compile<o:p></o=
:p></p>
<p class=3D"MsoNormal">| NOTE: make -j 4<o:p></o:p></p>
<p class=3D"MsoNormal">| glib-genmarshal /home/nidhi/project/yocto/build/tm=
p/work/aarch64-poky-linux/udev/182-r9/udev-182/src/gudev/gudevmarshal.list =
--prefix=3Dg_udev_marshal --header &gt; src/gudev/gudevmarshal.h<o:p></o:p>=
</p>
<p class=3D"MsoNormal">| echo &quot;#include \&quot;gudevmarshal.h\&quot;&q=
uot; &gt; src/gudev/gudevmarshal.c &amp;&amp; \<o:p></o:p></p>
<p class=3D"MsoNormal">| glib-genmarshal /home/nidhi/project/yocto/build/tm=
p/work/aarch64-poky-linux/udev/182-r9/udev-182/src/gudev/gudevmarshal.list =
--prefix=3Dg_udev_marshal --body &gt;&gt; src/gudev/gudevmarshal.c<o:p></o:=
p></p>
<p class=3D"MsoNormal">| glib-mkenums --template /home/nidhi/project/yocto/=
build/tmp/work/aarch64-poky-linux/udev/182-r9/udev-182/src/gudev/gudevenumt=
ypes.c.template /home/nidhi/project/yocto/build/tmp/work/aarch64-poky-linux=
/udev/182-r9/udev-182/src/gudev/gudevenums.h
 &gt; \<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; src/gudev/gudevenumtypes.c=
.tmp &amp;&amp; mv src/gudev/gudevenumtypes.c.tmp src/gudev/gudevenumtypes.=
c<o:p></o:p></p>
<p class=3D"MsoNormal">| mkdir -p src/keymap<o:p></o:p></p>
<p class=3D"MsoNormal">| gawk '/^#define.*KEY_[^ ]&#43;[ \t]&#43;[0-9]/ { i=
f ($2 !=3D &quot;KEY_MAX&quot;) { print $2 } }' &lt; /home/nidhi/project/yo=
cto/build/tmp/sysroots/h3ulcb/usr/include/linux/input.h | sed 's/^KEY_COFFE=
E$/KEY_SCREENLOCK/' &gt; src/keymap/keys.txt<o:p></o:p></p>
<p class=3D"MsoNormal">| gawk 'BEGIN{ print &quot;struct key { const char* =
name; unsigned short id; };&quot;; print &quot;%null-strings&quot;; print &=
quot;%%&quot;;} { print $1 &quot;, &quot; $1 }' &lt; src/keymap/keys.txt &g=
t; src/keymap/keys-from-name.gperf<o:p></o:p></p>
<p class=3D"MsoNormal">| gawk 'BEGIN{ print &quot;const char* const key_nam=
es[KEY_CNT] =3D { &quot;} { print &quot;[&quot; $1 &quot;] =3D \&quot;&quot=
; $1 &quot;\&quot;,&quot; } END{print &quot;};&quot;}' &lt; src/keymap/keys=
.txt &gt; src/keymap/keys-to-name.h<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/nidhi/project/yocto/build/tmp/sysroots/x86_6=
4-linux/usr/bin/gperf -L ANSI-C -t --ignore-case -N lookup_key -H hash_key_=
name -p -C &lt; src/keymap/keys-from-name.gperf &gt; src/keymap/keys-from-n=
ame.h<o:p></o:p></p>
<p class=3D"MsoNormal">| (standard input): No keywords in input file!<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| Makefile:3770: recipe for target 'src/keymap/keys-=
from-name.h' failed<o:p></o:p></p>
<p class=3D"MsoNormal">| make: *** [src/keymap/keys-from-name.h] Error 1<o:=
p></o:p></p>
<p class=3D"MsoNormal">| make: *** Waiting for unfinished jobs....<o:p></o:=
p></p>
<p class=3D"MsoNormal">| WARNING: exit code 1 from a shell command.<o:p></o=
:p></p>
<p class=3D"MsoNormal">| ERROR: oe_runmake failed<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_compile (log file is lo=
cated at /home/nidhi/project/yocto /build/tmp/work/aarch64-poky-linux/udev/=
182-r9/temp/log.do_compile.7454)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 5 (/home/nidhi/project/yocto /build/../p=
oky/meta/recipes-core/udev/udev_182.bb, do_compile) failed with exit code '=
1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 597 tasks of which 59=
5 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /home/nidhi/project/yocto /../poky/meta/recip=
es-core/udev/udev_182.bb, do_compile<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
------------------------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please help me on this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you in advance.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Nidhi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_5aee1886fae844b596be31c314714fafdenue6es007ebgroupelekt_--
