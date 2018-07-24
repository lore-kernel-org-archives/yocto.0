Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CA28E00B81; Tue, 24 Jul 2018 16:53:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	HTTP_ESCAPED_HOST,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.237 listed in list.dnswl.org]
	*  1.1 HTTP_ESCAPED_HOST URI: Uses %-escapes inside a URL's hostname
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 4158 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Jul 2018 16:53:19 PDT
Received: from 15pmail.ess.barracuda.com (15pmail.ess.barracuda.com
	[64.235.150.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07F3EE00B58
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2018 16:53:19 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Tue, 24 Jul 2018 23:53:17 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 24 Jul 2018 16:53:16 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 24 Jul 2018 16:53:15 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can't get *.a's into SDK sysroot
Thread-Index: AdQjqSG9UJPq4OgeRXaVtKcKq40hDg==
Date: Tue, 24 Jul 2018 23:53:15 +0000
Message-ID: <e90846d06efa4e6c8a9fc52370af9ada@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1532476397-298552-8945-85881-1
X-BESS-VER: 2018.9-r1807111811
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Envelope-From: GWilson@sakuraus.com
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.196415
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 HTTP_ESCAPED_HOST URI: Uses %-escapes inside a URL's hostname 
	0.50 BSF_RULE7568M          META: Custom Rule 7568M 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, HTTP_ESCAPED_HOST,
	BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-Orig-Rcpt: yocto@yoctoproject.org
X-BESS-BRTS-Status: 1
Subject: Can't get *.a's into SDK sysroot
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
X-List-Received-Date: Tue, 24 Jul 2018 23:53:21 -0000
X-Groupsio-MsgNum: 41927
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_006_e90846d06efa4e6c8a9fc52370af9adasakurauscom_";
	type="multipart/alternative"

--_006_e90846d06efa4e6c8a9fc52370af9adasakurauscom_
Content-Type: multipart/alternative;
	boundary="_000_e90846d06efa4e6c8a9fc52370af9adasakurauscom_"

--_000_e90846d06efa4e6c8a9fc52370af9adasakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've created a recipe for Canfestival (a CAN bus CANOpen support library). =
I have had it building for a while, but I had the configuration set up to b=
uild all parts of it as .so's. I need to change it so that parts of the lib=
rary are .a's. My problem is that I can't get the .a's to copy to the SDK s=
ysroot /usr/lib directory. The .a's are in the canfestival image/usr/lib & =
sysroot-destdir/usr/lib directories, but nothing that I've tried has gotten=
 them to the SDK sysroot.



Here is the canfestival_3-asc.bb file that I'm using:



SUMMARY =3D "Independent CANOpen(r) stack"

DESCRIPTION =3D "CanFestival focuses on providing an ANSI-C platform indepe=
ndent \

               CANOpen(r) stack that can be built as master or slave nodes =
on PCs, \

               Real-time IPCs, and Microcontrollers."



HOMEPAGE =3D "http://www(dot)canfestival(dot)org/<http://www%20(dot)%20canf=
estival%20(dot)%20org/>" // obfuscated to get past our email system



SRCREV =3D "895:8973dd8be7e8"



SRC_URI =3D "hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestival=
-3-asc \

           file://canfestival_3-asc-configure.patch<file:///\\canfestival_3=
-asc-configure.patch> \

           file://canfestival_3-asc-makefile.in.patch<file:///\\canfestival=
_3-asc-makefile.in.patch> \

           file://canfestival_3-asc-src_makefile.in.patch<file:///\\canfest=
ival_3-asc-src_makefile.in.patch> \

           \

           file://sdo.c.patch<file:///\\sdo.c.patch> \

           file://def.h.patch<file:///\\def.h.patch> \

           "

PR =3D 'r01'



LICENSE =3D "LGPLv2"

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D46ec399d3928b6c91e3634ab7263af44=
 \

                    file://LICENCE;md5=3D085e7fb76fb3fa8ba9e9ed0ce95a43f9<f=
ile:///\\LICENCE;md5=3D085e7fb76fb3fa8ba9e9ed0ce95a43f9>"



TARGET_CC_ARCH +=3D "${LDFLAGS}"







do_configure() {

    bbplain "Starting Configure"

    #bbplain "rootfs: ${D}"

    ./configure --target=3Dunix --prefix=3D${D}/usr/ --can=3Dsocket --timer=
s=3Dunix  --SDO_MAX_SIMULTANEOUS_TRANSFERS=3D30 --SDO_MAX_LENGTH_TRANSFER=
=3D4096 --MAX_NB_TIMER=3D128 --SDO_TIMEOUT_MS=3D3000 --debug=3D"WAR"



    bbplain "Configure Done"

}



do_compile() {

    oe_runmake canfestival

}



do_install() {

    bbplain "Starting Install"

    #bbplain "rootfs: ${D}"

    oe_runmake install PREFIX=3D${D}/usr/



    bbplain "Install Done"

}



FILES_${PN}-dbg =3D "/usr/src/debug/canfestival"

FILES_${PN}-dev =3D "/usr/lib/libcanfestival*.a /usr/include/canfestival/*.=
h"

FILES_${PN} =3D "/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so"



#PACKAGE_BEFORE_PN =3D "${PN}-info"

#FILES_${PN}-info =3D "usr/lib/pkgconfig"


I've fiddled with the various FILES lines, but nothing that I do gets the .=
a files copied to the SDK sysroot /usr/lib directory.



Any insight into what is going wrong would be greatly appreciated.



Thanks in advance,


Greg Wilson-Lindberg

Principal Firmware Engineer | Sakura Finetek USA, Inc.



1750 W 214th Street | Torrance, CA 90501 | U.S.A.

T: +1 310 783 5075

F: +1 310 618 6902 | E: gwilson@sakuraus.com<mailto:gwilson@sakuraus.com>

www.sakuraus.com<http://www.sakuraus.com>



[cid:image002.png@01D35D7D.179A7510]

[cid:image003.png@01D35D7D.179A7510]


________________________________

Confidentiality Notice: This e-mail transmission may contain confidential o=
r legally privileged information that is intended only for the individual o=
r entity named in the e-mail address. If you are not the intended recipient=
, you are hereby notified that any disclosure, copying, distribution, or re=
liance upon the contents of this e-mail is strictly prohibited. If you have=
 received this e-mail transmission in error, please reply to the sender, so=
 that Sakura Finetek USA, Inc. can arrange for proper delivery, and then pl=
ease delete the message from your inbox. Thank you.




--_000_e90846d06efa4e6c8a9fc52370af9adasakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:black;
	font-weight:normal;
	font-style:normal;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p><span style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black">I've created a recipe for Canfestival (a CAN bus CANOpen supp=
ort library). I have had it building for a while, but I had the configurati=
on set up to build all parts of it as .so's.
 I need to change it so that parts of the library are .a's. My problem is t=
hat I can't get the&nbsp;.a's to copy to the SDK sysroot /usr/lib directory=
. The .a's are in the canfestival image/usr/lib &amp; sysroot-destdir/usr/l=
ib directories, but nothing that I've tried
 has gotten them to&nbsp;the SDK sysroot.</span><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></s=
pan></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black">Here is the canfestival_3-asc.bb file that I'm using:</span><=
span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;c=
olor:black"><o:p></o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black"><o:p>&nbsp;</o:p></span></p>
<pre style=3D"background:white"><span style=3D"color:black">SUMMARY =3D &qu=
ot;Independent CANOpen&reg; stack&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">DESCRIPTION =3D=
 &quot;CanFestival focuses on providing an ANSI-C platform independent \<o:=
p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CANOp=
en&reg; stack that can be built as master or slave nodes on PCs, \<o:p></o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Real-=
time IPCs, and Microcontrollers.&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">HOMEPAGE =3D &q=
uot;<a href=3D"http://www%20(dot)%20canfestival%20(dot)%20org/">http://www(=
dot)canfestival(dot)org/</a>&quot; // obfuscated to get past our email syst=
em<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRCREV =3D &quo=
t;895:8973dd8be7e8&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI =3D &qu=
ot;hg://bitbucket.org/Mongo;protocol=3Dhttps;module=3Dcanfestival-3-asc \<o=
:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\canfesti=
val_3-asc-configure.patch">file://canfestival_3-asc-configure.patch</a> \<o=
:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\canfesti=
val_3-asc-makefile.in.patch">file://canfestival_3-asc-makefile.in.patch</a>=
 \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\canfesti=
val_3-asc-src_makefile.in.patch">file://canfestival_3-asc-src_makefile.in.p=
atch</a> \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\sdo.c.pa=
tch">file://sdo.c.patch</a> \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\def.h.pa=
tch">file://def.h.patch</a> \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<o:p></o:p></span></pre=
>
<pre style=3D"background:white"><span style=3D"color:black">PR =3D 'r01'<o:=
p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">LICENSE =3D &qu=
ot;LGPLv2&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">LIC_FILES_CHKSU=
M =3D &quot;file://COPYING;md5=3D46ec399d3928b6c91e3634ab7263af44 \<o:p></o=
:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:///\\LICENCE;md5=3D085e7fb76fb3fa8=
ba9e9ed0ce95a43f9">file://LICENCE;md5=3D085e7fb76fb3fa8ba9e9ed0ce95a43f9</a=
>&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">TARGET_CC_ARCH =
&#43;=3D &quot;${LDFLAGS}&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">do_configure() =
{<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; bbplain &quot;Starting Configure&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; #bbplain &quot;rootfs: ${D}&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; ./configure --target=3Dunix --prefix=3D${D}/usr/ --can=3Dsocket --timer=
s=3Dunix&nbsp; --SDO_MAX_SIMULTANEOUS_TRANSFERS=3D30 --SDO_MAX_LENGTH_TRANS=
FER=3D4096 --MAX_NB_TIMER=3D128 --SDO_TIMEOUT_MS=3D3000 --debug=3D&quot;WAR=
&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; bbplain &quot;Configure Done&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">}<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">do_compile() {<=
o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; oe_runmake canfestival<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">}<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">do_install() {<=
o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; bbplain &quot;Starting Install&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; #bbplain &quot;rootfs: ${D}&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; oe_runmake install PREFIX=3D${D}/usr/<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp;&nbsp;&nb=
sp; bbplain &quot;Install Done&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">}<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES_${PN}-dbg=
 =3D &quot;/usr/src/debug/canfestival&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES_${PN}-dev=
 =3D &quot;/usr/lib/libcanfestival*.a /usr/include/canfestival/*.h&quot;<o:=
p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES_${PN} =3D=
 &quot;/usr/lib/libcanfestival*.a /usr/lib/libcanfestival*.so&quot;<o:p></o=
:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#PACKAGE_BEFORE=
_PN =3D &quot;${PN}-info&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#FILES_${PN}-in=
fo =3D &quot;usr/lib/pkgconfig&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<p class=3D"MsoNormal"><span style=3D"color:black">I've fiddled with the va=
rious FILES lines, but nothing that I do gets the .a files copied to the SD=
K&nbsp;sysroot /usr/lib directory.
</span><span style=3D"font-size:12.0pt;color:black"><o:p></o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black">Any insight into what is going wrong would be greatly appreci=
ated.</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:black"><o:p></o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:black"><o:p>&nbsp;</o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black">Thanks in advance,&nbsp;</span><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:black"><o:p></o:p></span=
></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"97%" style=3D"width:97.66%;margin-top:-1.75p=
t;margin-bottom:-1.75pt">
<tbody>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:12.0pt;line-height:105%;font-family:&quot;Times Ne=
w Roman&quot;,serif;color:black"><img border=3D"0" width=3D"36" height=3D"7=
" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01D4236E.BFB6A5E0" alt=3D"=
cid:image001.png@01D35D7D.179A7510"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#0089D1">G=
reg Wilson-Lindberg&nbsp;
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<b><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#58595B">P=
rincipal Firmware Engineer | Sakura Finetek USA, Inc.&nbsp;
<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<b><span style=3D"font-size:10.5pt;line-height:105%;font-family:&quot;Arial=
&quot;,sans-serif;color:#58595B">&nbsp;<o:p></o:p></span></b></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&qu=
ot;,sans-serif;color:#58595B">1750 W 214<sup>th</sup> Street | Torrance, CA=
 90501 | U.S.A.&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span lang=3D"DE" style=3D"font-size:10.0pt;line-height:105%;font-family:&q=
uot;Arial&quot;,sans-serif;color:#58595B">T: &#43;1 310 783 5075&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span lang=3D"DE" style=3D"font-size:10.0pt;line-height:105%;font-family:&q=
uot;Arial&quot;,sans-serif;color:#58595B">F: &#43;1 310 618 6902 | E:&nbsp;=
</span><span lang=3D"DE" style=3D"color:black"><a href=3D"mailto:gwilson@sa=
kuraus.com"><span style=3D"color:#0563C1">gwilson</span><span style=3D"font=
-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;colo=
r:#0563C1">@sakuraus.com</span></a></span><span lang=3D"DE" style=3D"font-s=
ize:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-serif;color:=
#58595B">&nbsp;&nbsp;
 &nbsp;&nbsp; <o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"color:black"><a href=3D"http://www.sakuraus.com"><span style=
=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quot;,sans-se=
rif;color:#0089D1;text-decoration:none">www.sakuraus.com</span></a></span><=
span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Arial&quo=
t;,sans-serif;color:#0089D1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:9.0pt;line-height:105%;font-family:&quot;Arial&quo=
t;,sans-serif;color:#58595B">&nbsp;<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%;margin-bottom:5.=
75pt">
<tbody>
<tr>
<td valign=3D"bottom" style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:12.0pt;line-height:105%;font-family:&quot;Times Ne=
w Roman&quot;,serif;color:black"><img border=3D"0" width=3D"188" height=3D"=
12" id=3D"Picture_x0020_2" src=3D"cid:image002.png@01D4236E.BFB6A5E0" alt=
=3D"cid:image002.png@01D35D7D.179A7510"><o:p></o:p></span></p>
</td>
<td width=3D"80" valign=3D"bottom" style=3D"width:60.0pt;padding:0in 0in 0i=
n 0in">
<p class=3D"MsoNormal" align=3D"right" style=3D"text-align:right;line-heigh=
t:105%;mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-frame-=
vspace:.5pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;m=
so-element-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:12.0pt;line-height:105%;font-family:&quot;Times Ne=
w Roman&quot;,serif;color:black"><img border=3D"0" width=3D"66" height=3D"6=
4" id=3D"Picture_x0020_3" src=3D"cid:image003.png@01D4236E.BFB6A5E0" alt=3D=
"cid:image003.png@01D35D7D.179A7510"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-h=
eight:105%;mso-element:frame;mso-element-frame-hspace:2.25pt;mso-element-fr=
ame-vspace:.5pt;mso-element-wrap:around;mso-element-anchor-vertical:paragra=
ph;mso-element-anchor-horizontal:column;mso-height-rule:exactly">
<span style=3D"font-size:12.0pt;line-height:105%;font-family:&quot;Times Ne=
w Roman&quot;,serif;color:black">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
</td>
</tr>
<tr>
<td style=3D"padding:0in 0in 0in 0in">
<p class=3D"MsoNormal" style=3D"line-height:105%;mso-element:frame;mso-elem=
ent-frame-hspace:2.25pt;mso-element-frame-vspace:.5pt;mso-element-wrap:arou=
nd;mso-element-anchor-vertical:paragraph;mso-element-anchor-horizontal:colu=
mn;mso-height-rule:exactly">
<span style=3D"font-size:7.0pt;line-height:105%;font-family:&quot;Arial&quo=
t;,sans-serif;color:#58595B">Confidentiality Notice: This e-mail transmissi=
on may contain confidential or legally privileged information that is inten=
ded only for the individual or entity named
 in the e-mail address. If you are not the intended recipient, you are here=
by notified that any disclosure, copying, distribution, or reliance upon th=
e contents of this e-mail is strictly prohibited. If you have received this=
 e-mail transmission in error, please
 reply to the sender, so that Sakura Finetek USA, Inc. can arrange for prop=
er delivery, and then please delete the message from your inbox. Thank you.=
</span><span style=3D"font-size:7.0pt;line-height:105%;font-family:&quot;Ar=
ial&quot;,sans-serif;color:#58595B"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_e90846d06efa4e6c8a9fc52370af9adasakurauscom_--

--_006_e90846d06efa4e6c8a9fc52370af9adasakurauscom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=949;
	creation-date="Tue, 24 Jul 2018 23:53:14 GMT";
	modification-date="Tue, 24 Jul 2018 23:53:14 GMT"
Content-ID: <image001.png@01D4236E.BFB6A5E0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAACQAAAAHCAYAAABgOO8AAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1
OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MzVGQUUxQUI3NTA4MTFFNzkxQjVGODM1RkYyQThFQkQiIHht
cE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MzVGQUUxQUE3NTA4MTFFNzkxQjVGODM1RkYyQThFQkQi
IHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgTWFjaW50b3NoIj4gPHht
cE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MUVBMEU0OEM0Q0YzMTFF
NzkwRTZGNDNENDJEOEY5RTEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBMEU0OEQ0Q0Yz
MTFFNzkwRTZGNDNENDJEOEY5RTEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94
OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5STp/zAAAAJUlEQVR42mK8LW39n2EQASaGQQYG
nYMY////PxpCow6iBAAEGACEIQU6y9MNmAAAAABJRU5ErkJggg==

--_006_e90846d06efa4e6c8a9fc52370af9adasakurauscom_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=1916;
	creation-date="Tue, 24 Jul 2018 23:53:15 GMT";
	modification-date="Tue, 24 Jul 2018 23:53:15 GMT"
Content-ID: <image002.png@01D4236E.BFB6A5E0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAALwAAAAMCAYAAADYg9feAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMDY3IDc5LjE1
Nzc0NywgMjAxNS8wMy8zMC0yMzo0MDo0MiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAv
IiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RS
ZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpD
cmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiIHhtcE1NOklu
c3RhbmNlSUQ9InhtcC5paWQ6MUVBMEU0ODg0Q0YzMTFFNzkwRTZGNDNENDJEOEY5RTEiIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MUVBMEU0ODk0Q0YzMTFFNzkwRTZGNDNENDJEOEY5RTEiPiA8
eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGMjVCRjk3RjRDRjIx
MUU3OTBFNkY0M0Q0MkQ4RjlFMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGMjVCRjk4MDRD
RjIxMUU3OTBFNkY0M0Q0MkQ4RjlFMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8
L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PjV7eI0AAAPqSURBVHja7FnLkZtAEJ1VbQLs
2b6wBweA7/aBDUGEACGgEKQQIAQRAhwcgLnbB83FdxGCPKhe1z7PDgNoWa/sUld1iYH5vH7d09Og
ux8fvqiFZW10a/QR7ZPRxGilrkuuCRdz1l/vjd4tNHc/b/4Oti5h06iPPv36NmvC1RsYGhgNqb0x
qtX1yTXhYs40sC0lfbDvjDbvaFPwynkWEwn4HliNHfXdaEyL9TvzCN3S2APa8iyGFrQ7FRm9xhoy
5kDrnPBcOdqC7QhsPN9pYEyEvieMdZEWjtjCmPeYq7Ac4eLmaPXbYw5l2V4QB0OcScAO8Z/j92Q9
4z4yRzzBn7llv0hNa4l9wUybFO7ZvvfZqCbwrX5+/Lo1ejR6wHWN64L67Pv7KzKolyejHYGtQX6C
rJPSQiECIjPaYkyLbCJzKYyJADjGdYJMVnh2cmBhkzG1Z+cHFGQtYSgcfQXXkC2KMHd4xmOGuKks
Z8bIrjn6bKAxxtucRegngZBj7czBf07z5YRNEWeKMvyYP/s5SsfJF9NaGZUrU21i/9i+99lob7oX
2E0QC4YM99fE+Qs/3BPIBEA1AKxB4GfcF8ApHbk7ODiAAR2RNXSEJugXDgSiTXQI0jT04MhAvuM0
m3gs2rawZLRxZPMOcSNOC6EB5q0RTCX1d3GWWpuypBqWg5wxS6aNCI+ia41nU/y5G+GHcXQzbcoc
vh+zUVGidGHvpTS1fIVMLhj6dmraf/hhRYHB5HCQMIGdddxeIt2MvlzX8u8YhgT4a5Q20cL1aejh
psE1ZxqNZ5w59cR1tLVG8Eouff70zdc6cMy1qbvAxjHsTgxmA9h+aM09vXIEUYRA6RzBFf6FF73A
QWAwsAGGxkc4FR6x04uFMeoRbqSsWdNJpx39pySHYCH+9Sv9GVjX+kKbLrHRh901XtHpElPiUfeU
gbY4WnI6hqXW2mGi1HPkucqRZoYz1vhNLcCCQbBpqz5LrQzeoV9IJcrSm7QZ4aaid42S7qXkpHyA
Mxa2Wc3kfy7mKZ83JdhzsmuuTWqmjeFILIYoXTS9EyjifM9l6T2VAAWc1NDLzhPd144ar3McVUJs
v9CD5yjrrBq5wJiKDHRhe6J1SjxrBsak1surD0Pnueca4+NGjtOW+m8QLFuqfWMHZ5n16ZTfKcoB
/sdKkm6mP11SAbskww1tgDk22ev4bJTN0HqwBxQ7HdYNrfdIbcqZczl09wZ/PN3k/5MTAq65Qmzn
r2gS0CbTn7/emPYD2v1Hjsq0N5zhb3KTf1XOJa0J7IzaFb7ORFQSnWV14+smEySxvpBck2Tq+f+Z
vXr+pzpCeyfZv5ffAgwAvCfP5+7+KRkAAAAASUVORK5CYII=

--_006_e90846d06efa4e6c8a9fc52370af9adasakurauscom_
Content-Type: image/png; name="image003.png"
Content-Description: image003.png
Content-Disposition: inline; filename="image003.png"; size=3012;
	creation-date="Tue, 24 Jul 2018 23:53:15 GMT";
	modification-date="Tue, 24 Jul 2018 23:53:15 GMT"
Content-ID: <image003.png@01D4236E.BFB6A5E0>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAEIAAABDCAYAAAAoCNNNAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdp
bj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6
eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1
OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJo
dHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlw
dGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVz
b3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1N
OkRvY3VtZW50SUQ9InhtcC5kaWQ6MEY0Q0M1RkE3NTA3MTFFNzkxQjVGODM1RkYyQThFQkQiIHht
cE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MEY0Q0M1Rjk3NTA3MTFFNzkxQjVGODM1RkYyQThFQkQi
IHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKE1hY2ludG9zaCkiPiA8
eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpGMjVCRjk3RDRDRjIx
MUU3OTBFNkY0M0Q0MkQ4RjlFMSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpGMjVCRjk3RTRD
RjIxMUU3OTBFNkY0M0Q0MkQ4RjlFMSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8
L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PrnG8fYAAAgySURBVHja7FsLlA5VHL8fu2RZ
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

--_006_e90846d06efa4e6c8a9fc52370af9adasakurauscom_--
