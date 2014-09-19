Return-Path: <Parthiban.Nallathambi@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 801CFE00790; Fri, 19 Sep 2014 00:32:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Fri, 19 Sep 2014 00:32:25 PDT
Received: from imta21.fe.bosch.de (imta21.fe.bosch.de [139.15.243.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C939EE006EF
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 00:32:25 -0700 (PDT)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta21.fe.bosch.de (Postfix) with ESMTP id 1F8EDC07B1
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 09:26:06 +0200 (CEST)
Received: from vsmta12.fe.internet.bosch.com (unknown [10.4.98.52])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 2B338D80212;
	Fri, 19 Sep 2014 09:26:04 +0200 (CEST)
Received: from localhost (vsgw24.fe.internet.bosch.com [10.4.98.24])
	by vsmta12.fe.internet.bosch.com (Postfix) with SMTP id 2A0781B80F3B;
	Fri, 19 Sep 2014 09:26:04 +0200 (CEST)
Received: from SI-PUB1004.de.bosch.com (10.3.38.196) by fe-hub03.de.bosch.com
	(10.3.153.62) with Microsoft SMTP Server (TLS) id 8.3.348.2;
	Fri, 19 Sep 2014 09:26:01 +0200
Received: from sgphub13.APAC.bosch.com (10.187.48.75) by
	SI-PUB1004.de.bosch.com (10.3.38.196) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Fri, 19 Sep 2014 09:26:01 +0200
Received: from SGPMBX02.APAC.bosch.com ([10.187.64.46]) by
	sgphub13.APAC.bosch.com ([10.187.48.75]) with mapi;
	Fri, 19 Sep 2014 15:25:45 +0800
From: "Parthiban Nallathambi (RBEI/ECF3)" <Parthiban.Nallathambi@in.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 19 Sep 2014 15:25:43 +0800
Thread-Topic: [meta-raspberrypi][PATCH]gstreamer1.0-plugins-bad_1.4.0.bbappend
	file renamed
Thread-Index: Ac/T2uwBHqY5ma9bSu2TUAyAdTqvRQ==
Message-ID: <6F2093CB556E954CA31D14D8021221F93134B4864D@SGPMBX02.APAC.bosch.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: disable
Cc: "Parthiban Nallathambi \(RBEI/ECF3\)" <Parthiban.Nallathambi@in.bosch.com>,
	"parthitce@gmail.com" <parthitce@gmail.com>
Subject: [meta-raspberrypi][PATCH]gstreamer1.0-plugins-bad_1.4.0.bbappend file renamed
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
X-List-Received-Date: Fri, 19 Sep 2014 07:32:36 -0000
X-Groupsio-MsgNum: 21508
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_"

--_004_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_
Content-Type: multipart/alternative;
	boundary="_000_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_"

--_000_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have attached a patch file for renaming the "gstreamer1.0-plugins-bad_1.4=
.0.bbappend" to make it version independent. Please review the same and upd=
ate.

History:
Changes done after I faced the below error while building with poky system.
---Snip---
parthiban@ubuntu:~/git/yocto/poky$ source oe-init-build-env rpi

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    adt-installer
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86=
'
parthiban@ubuntu:~/git/yocto/poky/rpi$ bitbake -c fetchall core-image-minim=
al
Loading cache: 100% |######################################################=
###########################################################################=
#######################################| ETA:  00:00:00
Loaded 1306 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################| Time: 00:00:00
Parsing of 909 .bb files complete (907 cached, 2 parsed). 1305 targets, 66 =
skipped, 0 masked, 0 errors.
ERROR: No recipes available for:
  /home/parthiban/git/yocto/poky/meta-raspberrypi/recipes-multimedia/gstrea=
mer/gstreamer1.0-plugins-bad_1.4.0.bbappend

Summary: There was 1 ERROR message shown, returning a non-zero exit code.
---Snip---

Thanks,
Parthiban N

--_000_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:425923993;
	mso-list-type:hybrid;
	mso-list-template-ids:-15828038 -738700282 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F06E;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:SimSun;
	mso-bidi-font-family:"Times New Roman";}
@list l1
	{mso-list-id:1525091881;
	mso-list-type:hybrid;
	mso-list-template-ids:1705539498 1232606274 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:SimSun;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'c=
olor:#1F497D'>Hello All,<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'color:#1F497D'>I have attached a patch file for renaming the &#8=
220;gstreamer1.0-plugins-bad_1.4.0.bbappend&#8221; to make it version indep=
endent. Please review the same and update.<o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p clas=
s=3DMsoNormal><b><span style=3D'color:#1F497D'>History:<o:p></o:p></span></=
b></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>Changes done after=
 I faced the below error while building with poky system.<o:p></o:p></span>=
</p><p class=3DMsoNormal><span style=3D'color:#1F497D'>---Snip---<o:p></o:p=
></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>parthiban@ub=
untu:~/git/yocto/poky$ source oe-init-build-env rpi<o:p></o:p></span></p><p=
 class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><span style=3D'color:#1F497D'>### Shell environment =
set up for builds. ###<o:p></o:p></span></p><p class=3DMsoNormal><span styl=
e=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>You can now run 'bitbake &lt;target&gt;'<o:p></o:p>=
</span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>Common ta=
rgets are:<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#=
1F497D'>&nbsp;&nbsp;&nbsp; core-image-minimal<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; core-image-sa=
to<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>=
&nbsp;&nbsp;&nbsp; meta-toolchain<o:p></o:p></span></p><p class=3DMsoNormal=
><span style=3D'color:#1F497D'>&nbsp;&nbsp;&nbsp; adt-installer<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'color:#1F497D'>&nbsp;&nbsp;&n=
bsp; meta-ide-support<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'color:#1F497D'>You can also run generated qemu images with a comman=
d like 'runqemu qemux86'<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'color:#1F497D'>parthiban@ubuntu:~/git/yocto/poky/rpi$ bitbake -c fet=
chall core-image-minimal<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'color:#1F497D'>Loading cache: 100% |################################=
###########################################################################=
#############################################################| ETA:&nbsp; 0=
0:00:00<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1F4=
97D'>Loaded 1306 entries from dependency cache.<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'color:#1F497D'>Parsing recipes: 100% |#######=
###########################################################################=
###########################################################################=
#########| Time: 00:00:00<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'color:#1F497D'>Parsing of 909 .bb files complete (907 cached, 2 par=
sed). 1305 targets, 66 skipped, 0 masked, 0 errors.<o:p></o:p></span></p><p=
 class=3DMsoNormal><b><span style=3D'color:red'>ERROR</span></b><span style=
=3D'color:red'>: No recipes available for:<o:p></o:p></span></p><p class=3D=
MsoNormal><span style=3D'color:red'>&nbsp; /home/parthiban/git/yocto/poky/m=
eta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0=
.bbappend<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1=
F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'colo=
r:#1F497D'>Summary: There was 1 ERROR message shown, returning a non-zero e=
xit code.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'color:#1=
F497D'>---Snip---<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=
=3D'color:#1F497D'>Thanks,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Parthiban N<o:p></o:p></span></p></div></body></htm=
l>=

--_000_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_--

--_004_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_
Content-Type: application/octet-stream;
	name="rename-gstreamer-bbappend.patch"
Content-Description: rename-gstreamer-bbappend.patch
Content-Disposition: attachment; filename="rename-gstreamer-bbappend.patch";
	size=1622; creation-date="Fri, 19 Sep 2014 07:16:13 GMT";
	modification-date="Fri, 19 Sep 2014 07:16:13 GMT"
Content-Transfer-Encoding: base64

Y29tbWl0IGMyOGVkZjI4M2VjODM4MmZhNjFiNDNlNWU2YzliOGNlZWU4YzJmZDUKQXV0aG9yOiBQ
YXJ0aGliYW4gTiA8cGFydGhpYmFuLm5hbGxhdGhhbWJpQGluLmJvc2NoLmNvbT4KRGF0ZTogICBG
cmkgU2VwIDE5IDEyOjM1OjUwIDIwMTQgKzA1MzAKCiAgICBnc3QgYmJhcHBlbmQ6IFZlcnNpb24g
aW5kZXBlbmRlbnQgYmJhcHBlbmQKICAgIAogICAgJ2dzdHJlYW1lcjEuMC1wbHVnaW5zLWJhZF8x
LjQuMC5iYmFwcGVuZCcgZGVwZW5kcyBvbiB0aGUgdmVyc2lvbiBpbiBuYXRpdmUgcG9reSBtZXRh
L3JlY2lwZXMtbXVsdGltZWRpYS9nc3RyZWFtZXIvZ3N0cmVhbWVyMS4wLXBsdWdpbnMtYmFkXzEu
NC4xLmJiCiAgICAKICAgIFVwc3RyZWFtLVN0YXR1cyA6IFN1Ym1pdHRlZCBbbWFpbGluZyBsaXN0
XQogICAgU2lnbmVkLW9mZi1ieSAgIDogUGFydGhpYmFuIE48cGFydGhpYmFuLm5hbGxhdGhhbWJp
QGluLmJvc2NoLmNvbT4KCmRpZmYgLS1naXQgYS9yZWNpcGVzLW11bHRpbWVkaWEvZ3N0cmVhbWVy
L2dzdHJlYW1lcjEuMC1wbHVnaW5zLWJhZF8lLmJiYXBwZW5kIGIvcmVjaXBlcy1tdWx0aW1lZGlh
L2dzdHJlYW1lci9nc3RyZWFtZXIxLjAtcGx1Z2lucy1iYWRfJS5iYmFwcGVuZApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi5mYmE3ZTFhCi0tLSAvZGV2L251bGwKKysrIGIvcmVj
aXBlcy1tdWx0aW1lZGlhL2dzdHJlYW1lci9nc3RyZWFtZXIxLjAtcGx1Z2lucy1iYWRfJS5iYmFw
cGVuZApAQCAtMCwwICsxLDMgQEAKK0VYVFJBX09FQ09ORl9hcHBlbmRfcmFzcGJlcnJ5cGkgPSAi
IENQUEZMQUdTPSctSSR7U1RBR0lOR19ESVJfVEFSR0VUfS91c3IvaW5jbHVkZS9pbnRlcmZhY2Uv
dmNvcy9wdGhyZWFkcyBcCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC1JJHtT
VEFHSU5HX0RJUl9UQVJHRVR9L3Vzci9pbmNsdWRlL2ludGVyZmFjZS92bWNzX2hvc3QvbGludXgn
IFwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0td2l0aC1lZ2wtd2luZG93
LXN5c3RlbT1ycGkiCmRpZmYgLS1naXQgYS9yZWNpcGVzLW11bHRpbWVkaWEvZ3N0cmVhbWVyL2dz
dHJlYW1lcjEuMC1wbHVnaW5zLWJhZF8xLjQuMC5iYmFwcGVuZCBiL3JlY2lwZXMtbXVsdGltZWRp
YS9nc3RyZWFtZXIvZ3N0cmVhbWVyMS4wLXBsdWdpbnMtYmFkXzEuNC4wLmJiYXBwZW5kCmRlbGV0
ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBmYmE3ZTFhLi4wMDAwMDAwCi0tLSBhL3JlY2lwZXMt
bXVsdGltZWRpYS9nc3RyZWFtZXIvZ3N0cmVhbWVyMS4wLXBsdWdpbnMtYmFkXzEuNC4wLmJiYXBw
ZW5kCisrKyAvZGV2L251bGwKQEAgLTEsMyArMCwwIEBACi1FWFRSQV9PRUNPTkZfYXBwZW5kX3Jh
c3BiZXJyeXBpID0gIiBDUFBGTEFHUz0nLUkke1NUQUdJTkdfRElSX1RBUkdFVH0vdXNyL2luY2x1
ZGUvaW50ZXJmYWNlL3Zjb3MvcHRocmVhZHMgXAotICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAtSSR7U1RBR0lOR19ESVJfVEFSR0VUfS91c3IvaW5jbHVkZS9pbnRlcmZhY2Uvdm1j
c19ob3N0L2xpbnV4JyBcCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLXdp
dGgtZWdsLXdpbmRvdy1zeXN0ZW09cnBpIgo=

--_004_6F2093CB556E954CA31D14D8021221F93134B4864DSGPMBX02APACb_--
