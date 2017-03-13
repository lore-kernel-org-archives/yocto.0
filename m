Return-Path: <sven.schoenfeld@automationselektronik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D962FE00A48; Mon, 13 Mar 2017 02:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 460 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Mar 2017 02:40:10 PDT
Received: from mout-ka2.netarix.net (mout-ka2.netarix.net [212.227.174.240])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC53E00655
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 02:40:10 -0700 (PDT)
Received: from ML150.automationselektronik.de
	(mailgate.automationselektronik.de [217.92.142.1])
	by mout-ka2.netarix.net (Postfix) with ESMTPS id 48D2AC0850
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 10:32:28 +0100 (CET)
X-Footer: YXV0b21hdGlvbnNlbGVrdHJvbmlrLmRl
Received: from [192.168.155.114] ([192.168.155.114])
	(authenticated user sven.schoenfeld@automationselektronik.de)
	by ML150.automationselektronik.de (Kerio Connect 9.0.1) with ESMTPSA
	for yocto@yoctoproject.org; Mon, 13 Mar 2017 10:32:06 +0100
Date: Mon, 13 Mar 2017 10:32:05 +0100
Importance: Normal
X-Priority: 3
Thread-Index: AdKZoaeOr+bcom9TSiG5lxmnZf/8UQ==
Message-ID: <ecc88f5f-e58d-4ac8-8cd6-1e3ce98b061d@automationselektronik.de>
X-Mailer: Kerio Outlook Connector (Offline Edition) (9.0.2.749 T0)
From: =?iso-8859-1?q?Sven_Sch=F6nfeld?=
	<sven.schoenfeld@automationselektronik.de>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Mar 2017 07:47:23 -0700
Subject: directory doesn't contain library
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
X-List-Received-Date: Mon, 13 Mar 2017 09:40:14 -0000
Content-Type: multipart/alternative; boundary="=-pc2TYdGdgtnmE2cqwOVq"

--=-pc2TYdGdgtnmE2cqwOVq
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Yocto-Community
=20
I=B4m trying to create an image containing gnash_0.8.7.bb with yocto morty =
(2.2.1) and bitbake 1.32.0. I added the folders to my bblayers.conf and inc=
luded the recipe for gnash in my local.conf file.
=20
In my bblayers.conf :
=20
...
BBLAYERS =3D " \
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ...
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 \
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${BSPDIR}/sources/meta-qt5 \
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${BSPDIR}/sources/meta-SFA \
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "
=20
In my local.conf:
=20
...
IMAGE_INSTALL_append =3D " cairo gnash"
=20
LICENSE_FLAGS_WHITELIST =3D "commercial_ffmpeg commercial_libav commercial_=
x264"
=20
Now when I try to bitbake my image, I receive the following error:
=20
| checking for libatk library... -latk-1.0
| checking for cairo.h header in specified directory... yes
| checking for libcairo library in specified directory... configure: error:=
 /home/name/yocto/build/tmp/sysroots/sfa2/usr/lib directory doesn=B4t conta=
in library cairo.
| ERROR: Function failed: do_configure (log file is located at /home/name/y=
octo/build/tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi/gnash/0.8.7-r=
0/temp/log.do_configure.2556)
=20
Obviously it can=B4t find the library in the directory. However, when I che=
ck the directory in my file browser, I find a folder named cairo as well as=
 several files called libcairo-* (see below).
=20
cairo
cairo/libcairo-trace.so.0
cairo/libcairo-trace.so
cairo/libcairo-trace.la
cairo/libcairo-trace.so.0.0.0
=20
libcairo-gobject.la
libcairo-gobject.so
libcairo-gobject.so.2
libcairo-gobject.so.2.11400.6
libcairo-script-interpreter.la=20
libcairo-script-interpreter.so=20
libcairo-script-interpreter.so.2
libcairo-script-interpreter.so.2.11400.6
libcairo.la
libcairo.so=20
libcairo.so.2
libcairo.so.2.11400.6
=20
As I=B4m pretty new to yocto I don=B4t really understand why this error occ=
urs. Searching the web didn=B4t bring up anything helpful so I=B4m asking y=
ou for help. Please light my path and tell me how I can fix this error.
=20
Thanks in advance
=20
Sven=

--=-pc2TYdGdgtnmE2cqwOVq
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.E-MailFormatvorlage18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal>Dear Yoc=
to-Community<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>I&#8217;m trying to create an image containing gnash_0.8.7.b=
b with yocto morty (2.2.1) and bitbake 1.32.0. I added the folders to my bb=
layers.conf and included the recipe for gnash in my local.conf file.<o:p></=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>In m=
y bblayers.conf :<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p class=3DMsoNormal>&#8230;<o:p></o:p></p><p class=3DMsoNormal>BBLAYERS =3D=
 &#8222; \<o:p></o:p></p><p class=3DMsoNormal>=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 &#8230;<o:p></o:p></p><p class=3DMsoNormal>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 \<o:p></o:p></p><p class=3DMsoNormal>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${BSPDIR}/sources/meta-qt5 \<o:p=
></o:p></p><p class=3DMsoNormal>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 ${BSPDIR}/sources/meta-SFA \<o:p></o:p></p><p class=3DMsoNormal>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &#8222;<o:p></o:p></p><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>In my local.conf:<o:p></o=
:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>&#823=
0;<o:p></o:p></p><p class=3DMsoNormal>IMAGE_INSTALL_append =3D &#8222; cair=
o gnash&#8220;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p c=
lass=3DMsoNormal>LICENSE_FLAGS_WHITELIST =3D &#8222;commercial_ffmpeg comme=
rcial_libav commercial_x264&#8220;<o:p></o:p></p><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p><p class=3DMsoNormal>Now when I try to bitbake my image, I =
receive the following error:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;=
</o:p></p><p class=3DMsoNormal>| checking for libatk library&#8230; -latk-1=
.0<o:p></o:p></p><p class=3DMsoNormal>| checking for cairo.h header in spec=
ified directory&#8230; yes<o:p></o:p></p><p class=3DMsoNormal>| checking fo=
r libcairo library in specified directory&#8230; configure: error: /home/na=
me/yocto/build/tmp/sysroots/sfa2/usr/lib directory doesn&#8217;t contain li=
brary cairo.<o:p></o:p></p><p class=3DMsoNormal>| ERROR: Function failed: d=
o_configure (log file is located at /home/name/yocto/build/tmp/work/cortexa=
9hf-neon-mx6qdl-poky-linux-gnueabi/gnash/0.8.7-r0/temp/log.do_configure.255=
6)<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNo=
rmal>Obviously it can&#8217;t find the library in the directory. However, w=
hen I check the directory in my file browser, I find a folder named cairo a=
s well as several files called libcairo-* (see below).<o:p></o:p></p><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>cairo<o:p></o:p></=
p><p class=3DMsoNormal>cairo/libcairo-trace.so.0<o:p></o:p></p><p class=3DM=
soNormal>cairo/libcairo-trace.so<o:p></o:p></p><p class=3DMsoNormal>cairo/l=
ibcairo-trace.la<o:p></o:p></p><p class=3DMsoNormal>cairo/libcairo-trace.so=
.0.0.0<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DM=
soNormal>libcairo-gobject.la<o:p></o:p></p><p class=3DMsoNormal>libcairo-go=
bject.so<o:p></o:p></p><p class=3DMsoNormal>libcairo-gobject.so.2<o:p></o:p=
></p><p class=3DMsoNormal>libcairo-gobject.so.2.11400.6<o:p></o:p></p><p cl=
ass=3DMsoNormal>libcairo-script-interpreter.la <o:p></o:p></p><p class=3DMs=
oNormal>libcairo-script-interpreter.so <o:p></o:p></p><p class=3DMsoNormal>=
libcairo-script-interpreter.so.2<o:p></o:p></p><p class=3DMsoNormal>libcair=
o-script-interpreter.so.2.11400.6<o:p></o:p></p><p class=3DMsoNormal>libcai=
ro.la<o:p></o:p></p><p class=3DMsoNormal>libcairo.so <o:p></o:p></p><p clas=
s=3DMsoNormal>libcairo.so.2<o:p></o:p></p><p class=3DMsoNormal>libcairo.so.=
2.11400.6<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>As I&#8217;m pretty new to yocto I don&#8217;t really understa=
nd why this error occurs. Searching the web didn&#8217;t bring up anything =
helpful so I&#8217;m asking you for help. Please light my path and tell me =
how I can fix this error.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p><p class=3DMsoNormal>Thanks in advance<o:p></o:p></p><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Sven<o:p></o:p></p></div></=
body></html>=

--=-pc2TYdGdgtnmE2cqwOVq--
