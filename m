Return-Path: <Noor_Ahsan@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC135E01472
	for <yocto@yoctoproject.org>; Fri, 31 May 2013 05:02:52 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1UiO2i-0007Lx-MI from Noor_Ahsan@mentor.com ;
	Fri, 31 May 2013 05:02:48 -0700
Received: from SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Fri, 31 May 2013 05:02:48 -0700
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.178]) by
	SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) with mapi id
	14.02.0247.003; Fri, 31 May 2013 13:02:46 +0100
From: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
To: "Usman, Fahad" <Fahad_Usman@mentor.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "holger.behrens@windriver.com"
	<holger.behrens@windriver.com>, "florin.sarbu@windriver.co"
	<florin.sarbu@windriver.co>
Thread-Topic: [yocto] [meta-ivi][RFC] packagegroups: restructure the
	yocto-ivi PGs
Thread-Index: AQHOW3k8sqqJFV+zZEOyoR01xffVz5kfNftw
Date: Fri, 31 May 2013 12:02:46 +0000
Message-ID: <365E1805BC95084CBE82381A0B869994DE4BA071@EU-MBX-01.mgc.mentorg.com>
References: <1369209603-29493-1-git-send-email-fahad_usman@mentor.com>
	<CAHVMiV-RdhpmWgxzq5A2JNfERV3SbcrxutvJT2mpLDVniHSW6w@mail.gmail.com>
In-Reply-To: <CAHVMiV-RdhpmWgxzq5A2JNfERV3SbcrxutvJT2mpLDVniHSW6w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
X-OriginalArrivalTime: 31 May 2013 12:02:48.0735 (UTC)
	FILETIME=[C4EA4AF0:01CE5DF6]
Subject: Re: [meta-ivi][RFC] packagegroups: restructure the	yocto-ivi PGs
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
X-List-Received-Date: Fri, 31 May 2013 12:02:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_365E1805BC95084CBE82381A0B869994DE4BA071EUMBX01mgcmento_"

--_000_365E1805BC95084CBE82381A0B869994DE4BA071EUMBX01mgcmento_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Holger and Florin,

Do you have any comments on the following?

Thanks.

Noor

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Usman, Fahad
Sent: Tuesday, May 28, 2013 12:58 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-ivi][RFC] packagegroups: restructure the yocto-i=
vi PGs

Hi all,
Kindly review the following change.

Thanks,
Fahad

On Wed, May 22, 2013 at 1:00 PM, Fahad Usman <fahad_usman@mentor.com<mailto=
:fahad_usman@mentor.com>> wrote:
with the current implementation of packagegroups, it's not clear how a
particular recipe map to the GENIVI baseline document.

this scheme remove confusion about which packagegroup a certain recipe belo=
ng
to. And provide guidance to the customers about modifying the image. For
instance customers should be careful about replacing specific-p1 components=
 if
they wish to maintain GENIVI compliance.

Signed-off-by: Fahad Usman <fahad_usman@mentor.com<mailto:fahad_usman@mento=
r.com>>
---
 recipes-yocto-ivi/images/foton-image.bb<http://foton-image.bb>            =
 |  8 +++++++-
 .../packagegroup-foton-abstract-component-p1.bb<http://packagegroup-foton-=
abstract-component-p1.bb>     | 21 +++++++++++++++++++++
 ... =3D> packagegroup-foton-abstract-component-p2.bb<http://packagegroup-f=
oton-abstract-component-p2.bb>} | 14 ++++++--------
 .../packagegroup-foton-placeholder-component-p1.bb<http://packagegroup-fot=
on-placeholder-component-p1.bb>  | 20 ++++++++++++++++++++
 ... =3D> packagegroup-foton-specific-component-p1.bb<http://packagegroup-f=
oton-specific-component-p1.bb>} | 21 +++++++--------------
 .../packagegroup-foton-specific-component-p2.bb<http://packagegroup-foton-=
specific-component-p2.bb>     | 19 +++++++++++++++++++
 6 files changed, 80 insertions(+), 23 deletions(-)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-foton-abst=
ract-component-p1.bb<http://packagegroup-foton-abstract-component-p1.bb>
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p2.bb<http://pac=
kagegroup-core-p2.bb> =3D> packagegroup-foton-abstract-component-p2.bb<http=
://packagegroup-foton-abstract-component-p2.bb>} (61%)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-foton-plac=
eholder-component-p1.bb<http://packagegroup-foton-placeholder-component-p1.=
bb>
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p1.bb<http://pac=
kagegroup-core-p1.bb> =3D> packagegroup-foton-specific-component-p1.bb<http=
://packagegroup-foton-specific-component-p1.bb>} (67%)
 create mode 100644 recipes-yocto-ivi/packagegroups/packagegroup-foton-spec=
ific-component-p2.bb<http://packagegroup-foton-specific-component-p2.bb>

diff --git a/recipes-yocto-ivi/images/foton-image.bb<http://foton-image.bb>=
 b/recipes-yocto-ivi/images/foton-image.bb<http://foton-image.bb>
index 6532519..f83aaf9 100644
--- a/recipes-yocto-ivi/images/foton-image.bb<http://foton-image.bb>
+++ b/recipes-yocto-ivi/images/foton-image.bb<http://foton-image.bb>
@@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc
 PV =3D "4.0.0"
 #PR =3D "r1"

-IMAGE_INSTALL_append =3D " packagegroup-core-p1 packagegroup-core-p2"
+IMAGE_INSTALL_append =3D " \
+    packagegroup-foton-abstract-component-p1 \
+    packagegroup-foton-placeholder-component-p1 \
+    packagegroup-foton-specific-component-p2 \
+    packagegroup-foton-abstract-component-p2 \
+    packagegroup-foton-specific-component-p1 \
+"

 # Add image specific packages
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-co=
mponent-p1.bb<http://packagegroup-foton-abstract-component-p1.bb> b/recipes=
-yocto-ivi/packagegroups/packagegroup-foton-abstract-component-p1.bb<http:/=
/packagegroup-foton-abstract-component-p1.bb>
new file mode 100644
index 0000000..9ff02b2
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component=
-p1.bb<http://packagegroup-foton-abstract-component-p1.bb>
@@ -0,0 +1,21 @@
+DESCRIPTION =3D "GENIVI 4.0 (Foton) P1 Abstract components (AC)"
+LICENSE =3D "MIT"
+LIC_FILES_CHKSUM =3D "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3D3d=
a9cfbcb788c80a0384361b4de20420<file:///\\$%7bIVI_COREBASE%7d\meta-ivi\COPYI=
NG.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420>"
+PR =3D "r0"
+
+inherit packagegroup
+
+PACKAGES =3D "\
+    packagegroup-foton-abstract-component-p1 \
+    "
+
+ALLOW_EMPTY =3D "1"
+
+RDEPENDS_${PN} +=3D "\
+    bluez4 \
+    bluez4-systemd \
+    eglibc \
+    layer-management \
+    obex-client \
+    obexd \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb<http:/=
/packagegroup-core-p2.bb> b/recipes-yocto-ivi/packagegroups/packagegroup-fo=
ton-abstract-component-p2.bb<http://packagegroup-foton-abstract-component-p=
2.bb>
similarity index 61%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb<http://=
packagegroup-core-p2.bb>
rename to recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-compo=
nent-p2.bb<http://packagegroup-foton-abstract-component-p2.bb>
index e9b7b86..ac6af13 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb<http://packag=
egroup-core-p2.bb>
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-abstract-component=
-p2.bb<http://packagegroup-foton-abstract-component-p2.bb>
@@ -1,4 +1,4 @@
-DESCRIPTION =3D "P2 packages"
+DESCRIPTION =3D "GENIVI 4.0 (Foton) P2 Abstract components (SC)"
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3D3d=
a9cfbcb788c80a0384361b4de20420<file:///\\$%7bIVI_COREBASE%7d\meta-ivi\COPYI=
NG.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420>"
 PR =3D "r0"
@@ -6,16 +6,14 @@ PR =3D "r0"
 inherit packagegroup

 PACKAGES =3D "\
-    packagegroup-core-p2 \
+    packagegroup-foton-abstract-component-p2 \
     "

-RDEPENDS_packagegroup-core-p2 =3D "\
+ALLOW_EMPTY =3D "1"
+
+
+RDEPENDS_${PN} +=3D "\
     node-state-manager \
     ofono \
     ofono-systemd \
-    pulseaudio-server \
-    wireless-tools \
     "
-
-
-
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder=
-component-p1.bb<http://packagegroup-foton-placeholder-component-p1.bb> b/r=
ecipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder-component-p1.=
bb<http://packagegroup-foton-placeholder-component-p1.bb>
new file mode 100644
index 0000000..fd76884
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-placeholder-compon=
ent-p1.bb<http://packagegroup-foton-placeholder-component-p1.bb>
@@ -0,0 +1,20 @@
+DESCRIPTION =3D "GENIVI 4.0 (Foton) P1 Placeholder components"
+LICENSE =3D "MIT"
+LIC_FILES_CHKSUM =3D "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3D3d=
a9cfbcb788c80a0384361b4de20420<file:///\\$%7bIVI_COREBASE%7d\meta-ivi\COPYI=
NG.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420>"
+PR =3D "r0"
+
+inherit packagegroup
+
+PACKAGES =3D "\
+    packagegroup-foton-placeholder-component-p1 \
+    "
+
+ALLOW_EMPTY =3D "1"
+
+
+RDEPENDS_${PN} +=3D "\
+    "
+
+RRECOMMENDS_${PN} =3D "\
+    packagegroup-xserver-ivi \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb<http:/=
/packagegroup-core-p1.bb> b/recipes-yocto-ivi/packagegroups/packagegroup-fo=
ton-specific-component-p1.bb<http://packagegroup-foton-specific-component-p=
1.bb>
similarity index 67%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb<http://=
packagegroup-core-p1.bb>
rename to recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-compo=
nent-p1.bb<http://packagegroup-foton-specific-component-p1.bb>
index f3ec738..06cf375 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb<http://packag=
egroup-core-p1.bb>
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component=
-p1.bb<http://packagegroup-foton-specific-component-p1.bb>
@@ -1,45 +1,38 @@
-DESCRIPTION =3D "P1 packages"
+DESCRIPTION =3D "GENIVI 4.0 (Foton) P1 Specific components (SC)"
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3D3d=
a9cfbcb788c80a0384361b4de20420<file:///\\$%7bIVI_COREBASE%7d\meta-ivi\COPYI=
NG.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420>"
-PR =3D "r1"
+PR =3D "r0"

 inherit packagegroup

 PACKAGES =3D "\
-    packagegroup-core-p1 \
+    packagegroup-foton-specific-component-p1 \
     "

-RDEPENDS_packagegroup-core-p1 =3D "\
+ALLOW_EMPTY =3D "1"
+
+
+RDEPENDS_${PN} +=3D "\
     kernel-modules \
     audiomanager \
     dlt-daemon \
     dlt-daemon-systemd \
     alsa-lib  \
     alsa-utils \
-    bluez4 \
-    bluez4-systemd \
     connman \
     curl \
     dbus \
     ecryptfs-utils \
-    eglibc \
     fuse \
     gstreamer \
     gst-plugins-good \
     gst-plugins-base \
-    layer-management \
     libusb1 \
     nfs-utils \
     node-startup-controller \
-    obex-client \
-    obexd \
     openssl \
     quota \
     sqlite3 \
     udev \
     wpa-supplicant \
     "
-
-RRECOMMENDS_${PN} =3D "\
-    packagegroup-xserver-ivi \
-    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-co=
mponent-p2.bb<http://packagegroup-foton-specific-component-p2.bb> b/recipes=
-yocto-ivi/packagegroups/packagegroup-foton-specific-component-p2.bb<http:/=
/packagegroup-foton-specific-component-p2.bb>
new file mode 100644
index 0000000..6348ba4
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-foton-specific-component=
-p2.bb<http://packagegroup-foton-specific-component-p2.bb>
@@ -0,0 +1,19 @@
+DESCRIPTION =3D "GENIVI 4.0 (Foton) P2 Specific components (SC)"
+LICENSE =3D "MIT"
+LIC_FILES_CHKSUM =3D "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3D3d=
a9cfbcb788c80a0384361b4de20420<file:///\\$%7bIVI_COREBASE%7d\meta-ivi\COPYI=
NG.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420>"
+PR =3D "r0"
+
+inherit packagegroup
+
+PACKAGES =3D "\
+    packagegroup-foton-specific-component-p2 \
+    "
+
+ALLOW_EMPTY =3D "1"
+
+
+RDEPENDS_${PN} +=3D "\
+    pulseaudio-server \
+    wireless-tools \
+    "
+
--
1.8.2.3


--_000_365E1805BC95084CBE82381A0B869994DE4BA071EUMBX01mgcmento_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hello Holger and Florin,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Do you have any comments =
on the following?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Noor<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Usman, Fahad<br>
<b>Sent:</b> Tuesday, May 28, 2013 12:58 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [meta-ivi][RFC] packagegroups: restructure the =
yocto-ivi PGs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Kindly review the following change.&nbsp;<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Fahad<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, May 22, 2013 at 1:00 PM, Fahad Usman &lt;<a =
href=3D"mailto:fahad_usman@mentor.com" target=3D"_blank">fahad_usman@mentor=
.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">with the current impl=
ementation of packagegroups, it's not clear how a<br>
particular recipe map to the GENIVI baseline document.<br>
<br>
this scheme remove confusion about which packagegroup a certain recipe belo=
ng<br>
to. And provide guidance to the customers about modifying the image. For<br=
>
instance customers should be careful about replacing specific-p1 components=
 if<br>
they wish to maintain GENIVI compliance.<br>
<br>
Signed-off-by: Fahad Usman &lt;<a href=3D"mailto:fahad_usman@mentor.com">fa=
had_usman@mentor.com</a>&gt;<br>
---<br>
&nbsp;recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"=
_blank">foton-image.bb</a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbs=
p;8 &#43;&#43;&#43;&#43;&#43;&#43;&#43;-<br>
&nbsp;.../<a href=3D"http://packagegroup-foton-abstract-component-p1.bb" ta=
rget=3D"_blank">packagegroup-foton-abstract-component-p1.bb</a> &nbsp; &nbs=
p; | 21 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;... =3D&gt; <a href=3D"http://packagegroup-foton-abstract-component-p=
2.bb" target=3D"_blank">
packagegroup-foton-abstract-component-p2.bb</a>} | 14 &#43;&#43;&#43;&#43;&=
#43;&#43;--------<br>
&nbsp;.../<a href=3D"http://packagegroup-foton-placeholder-component-p1.bb"=
 target=3D"_blank">packagegroup-foton-placeholder-component-p1.bb</a> &nbsp=
;| 20 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;... =3D&gt; <a href=3D"http://packagegroup-foton-specific-component-p=
1.bb" target=3D"_blank">
packagegroup-foton-specific-component-p1.bb</a>} | 21 &#43;&#43;&#43;&#43;&=
#43;&#43;&#43;--------------<br>
&nbsp;.../<a href=3D"http://packagegroup-foton-specific-component-p2.bb" ta=
rget=3D"_blank">packagegroup-foton-specific-component-p2.bb</a> &nbsp; &nbs=
p; | 19 &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;<br>
&nbsp;6 files changed, 80 insertions(&#43;), 23 deletions(-)<br>
&nbsp;create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://=
packagegroup-foton-abstract-component-p1.bb" target=3D"_blank">packagegroup=
-foton-abstract-component-p1.bb</a><br>
&nbsp;rename recipes-yocto-ivi/packagegroups/{<a href=3D"http://packagegrou=
p-core-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a> =3D&gt;
<a href=3D"http://packagegroup-foton-abstract-component-p2.bb" target=3D"_b=
lank">packagegroup-foton-abstract-component-p2.bb</a>} (61%)<br>
&nbsp;create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://=
packagegroup-foton-placeholder-component-p1.bb" target=3D"_blank">packagegr=
oup-foton-placeholder-component-p1.bb</a><br>
&nbsp;rename recipes-yocto-ivi/packagegroups/{<a href=3D"http://packagegrou=
p-core-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a> =3D&gt;
<a href=3D"http://packagegroup-foton-specific-component-p1.bb" target=3D"_b=
lank">packagegroup-foton-specific-component-p1.bb</a>} (67%)<br>
&nbsp;create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://=
packagegroup-foton-specific-component-p2.bb" target=3D"_blank">packagegroup=
-foton-specific-component-p2.bb</a><br>
<br>
diff --git a/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" tar=
get=3D"_blank">foton-image.bb</a> b/recipes-yocto-ivi/images/<a href=3D"htt=
p://foton-image.bb" target=3D"_blank">foton-image.bb</a><br>
index 6532519..f83aaf9 100644<br>
--- a/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"=
_blank">foton-image.bb</a><br>
&#43;&#43;&#43; b/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb=
" target=3D"_blank">foton-image.bb</a><br>
@@ -4,6 &#43;4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc<br>
&nbsp;PV =3D &quot;4.0.0&quot;<br>
&nbsp;#PR =3D &quot;r1&quot;<br>
<br>
-IMAGE_INSTALL_append =3D &quot; packagegroup-core-p1 packagegroup-core-p2&=
quot;<br>
&#43;IMAGE_INSTALL_append =3D &quot; \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-abstract-component-p1 \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-placeholder-component-p1 \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-specific-component-p2 \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-abstract-component-p2 \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-specific-component-p1 \<br>
&#43;&quot;<br>
<br>
&nbsp;# Add image specific packages<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-foton-abstract-component-p1.bb" target=3D"_blank">packagegroup-foton-abstr=
act-component-p1.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http:/=
/packagegroup-foton-abstract-component-p1.bb" target=3D"_blank">packagegrou=
p-foton-abstract-component-p1.bb</a><br>
new file mode 100644<br>
index 0000000..9ff02b2<br>
--- /dev/null<br>
&#43;&#43;&#43; b/recipes-yocto-ivi/packagegroups/<a href=3D"http://package=
group-foton-abstract-component-p1.bb" target=3D"_blank">packagegroup-foton-=
abstract-component-p1.bb</a><br>
@@ -0,0 &#43;1,21 @@<br>
&#43;DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P1 Abstract components (AC)&q=
uot;<br>
&#43;LICENSE =3D &quot;MIT&quot;<br>
&#43;LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///\\$%7bIVI_COREBASE%7d\me=
ta-ivi\COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420">file://${IVI_COR=
EBASE}/meta-ivi/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420</a>&quot=
;<br>
&#43;PR =3D &quot;r0&quot;<br>
&#43;<br>
&#43;inherit packagegroup<br>
&#43;<br>
&#43;PACKAGES =3D &quot;\<br>
&#43; &nbsp; &nbsp;packagegroup-foton-abstract-component-p1 \<br>
&#43; &nbsp; &nbsp;&quot;<br>
&#43;<br>
&#43;ALLOW_EMPTY =3D &quot;1&quot;<br>
&#43;<br>
&#43;RDEPENDS_${PN} &#43;=3D &quot;\<br>
&#43; &nbsp; &nbsp;bluez4 \<br>
&#43; &nbsp; &nbsp;bluez4-systemd \<br>
&#43; &nbsp; &nbsp;eglibc \<br>
&#43; &nbsp; &nbsp;layer-management \<br>
&#43; &nbsp; &nbsp;obex-client \<br>
&#43; &nbsp; &nbsp;obexd \<br>
&#43; &nbsp; &nbsp;&quot;<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-core-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a> b/recipes-yocto-=
ivi/packagegroups/<a href=3D"http://packagegroup-foton-abstract-component-p=
2.bb" target=3D"_blank">packagegroup-foton-abstract-component-p2.bb</a><br>
similarity index 61%<br>
rename from recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-=
core-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a><br>
rename to recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-fo=
ton-abstract-component-p2.bb" target=3D"_blank">packagegroup-foton-abstract=
-component-p2.bb</a><br>
index e9b7b86..ac6af13 100644<br>
--- a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-core-p=
2.bb" target=3D"_blank">packagegroup-core-p2.bb</a><br>
&#43;&#43;&#43; b/recipes-yocto-ivi/packagegroups/<a href=3D"http://package=
group-foton-abstract-component-p2.bb" target=3D"_blank">packagegroup-foton-=
abstract-component-p2.bb</a><br>
@@ -1,4 &#43;1,4 @@<br>
-DESCRIPTION =3D &quot;P2 packages&quot;<br>
&#43;DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P2 Abstract components (SC)&q=
uot;<br>
&nbsp;LICENSE =3D &quot;MIT&quot;<br>
&nbsp;LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///\\$%7bIVI_COREBASE%7d\m=
eta-ivi\COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420">file://${IVI_CO=
REBASE}/meta-ivi/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420</a>&quo=
t;<br>
&nbsp;PR =3D &quot;r0&quot;<br>
@@ -6,16 &#43;6,14 @@ PR =3D &quot;r0&quot;<br>
&nbsp;inherit packagegroup<br>
<br>
&nbsp;PACKAGES =3D &quot;\<br>
- &nbsp; &nbsp;packagegroup-core-p2 \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-abstract-component-p2 \<br>
&nbsp; &nbsp; &nbsp;&quot;<br>
<br>
-RDEPENDS_packagegroup-core-p2 =3D &quot;\<br>
&#43;ALLOW_EMPTY =3D &quot;1&quot;<br>
&#43;<br>
&#43;<br>
&#43;RDEPENDS_${PN} &#43;=3D &quot;\<br>
&nbsp; &nbsp; &nbsp;node-state-manager \<br>
&nbsp; &nbsp; &nbsp;ofono \<br>
&nbsp; &nbsp; &nbsp;ofono-systemd \<br>
- &nbsp; &nbsp;pulseaudio-server \<br>
- &nbsp; &nbsp;wireless-tools \<br>
&nbsp; &nbsp; &nbsp;&quot;<br>
-<br>
-<br>
-<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-foton-placeholder-component-p1.bb" target=3D"_blank">packagegroup-foton-pl=
aceholder-component-p1.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"=
http://packagegroup-foton-placeholder-component-p1.bb" target=3D"_blank">pa=
ckagegroup-foton-placeholder-component-p1.bb</a><br>
new file mode 100644<br>
index 0000000..fd76884<br>
--- /dev/null<br>
&#43;&#43;&#43; b/recipes-yocto-ivi/packagegroups/<a href=3D"http://package=
group-foton-placeholder-component-p1.bb" target=3D"_blank">packagegroup-fot=
on-placeholder-component-p1.bb</a><br>
@@ -0,0 &#43;1,20 @@<br>
&#43;DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P1 Placeholder components&quo=
t;<br>
&#43;LICENSE =3D &quot;MIT&quot;<br>
&#43;LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///\\$%7bIVI_COREBASE%7d\me=
ta-ivi\COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420">file://${IVI_COR=
EBASE}/meta-ivi/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420</a>&quot=
;<br>
&#43;PR =3D &quot;r0&quot;<br>
&#43;<br>
&#43;inherit packagegroup<br>
&#43;<br>
&#43;PACKAGES =3D &quot;\<br>
&#43; &nbsp; &nbsp;packagegroup-foton-placeholder-component-p1 \<br>
&#43; &nbsp; &nbsp;&quot;<br>
&#43;<br>
&#43;ALLOW_EMPTY =3D &quot;1&quot;<br>
&#43;<br>
&#43;<br>
&#43;RDEPENDS_${PN} &#43;=3D &quot;\<br>
&#43; &nbsp; &nbsp;&quot;<br>
&#43;<br>
&#43;RRECOMMENDS_${PN} =3D &quot;\<br>
&#43; &nbsp; &nbsp;packagegroup-xserver-ivi \<br>
&#43; &nbsp; &nbsp;&quot;<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-core-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a> b/recipes-yocto-=
ivi/packagegroups/<a href=3D"http://packagegroup-foton-specific-component-p=
1.bb" target=3D"_blank">packagegroup-foton-specific-component-p1.bb</a><br>
similarity index 67%<br>
rename from recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-=
core-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a><br>
rename to recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-fo=
ton-specific-component-p1.bb" target=3D"_blank">packagegroup-foton-specific=
-component-p1.bb</a><br>
index f3ec738..06cf375 100644<br>
--- a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-core-p=
1.bb" target=3D"_blank">packagegroup-core-p1.bb</a><br>
&#43;&#43;&#43; b/recipes-yocto-ivi/packagegroups/<a href=3D"http://package=
group-foton-specific-component-p1.bb" target=3D"_blank">packagegroup-foton-=
specific-component-p1.bb</a><br>
@@ -1,45 &#43;1,38 @@<br>
-DESCRIPTION =3D &quot;P1 packages&quot;<br>
&#43;DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P1 Specific components (SC)&q=
uot;<br>
&nbsp;LICENSE =3D &quot;MIT&quot;<br>
&nbsp;LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///\\$%7bIVI_COREBASE%7d\m=
eta-ivi\COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420">file://${IVI_CO=
REBASE}/meta-ivi/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420</a>&quo=
t;<br>
-PR =3D &quot;r1&quot;<br>
&#43;PR =3D &quot;r0&quot;<br>
<br>
&nbsp;inherit packagegroup<br>
<br>
&nbsp;PACKAGES =3D &quot;\<br>
- &nbsp; &nbsp;packagegroup-core-p1 \<br>
&#43; &nbsp; &nbsp;packagegroup-foton-specific-component-p1 \<br>
&nbsp; &nbsp; &nbsp;&quot;<br>
<br>
-RDEPENDS_packagegroup-core-p1 =3D &quot;\<br>
&#43;ALLOW_EMPTY =3D &quot;1&quot;<br>
&#43;<br>
&#43;<br>
&#43;RDEPENDS_${PN} &#43;=3D &quot;\<br>
&nbsp; &nbsp; &nbsp;kernel-modules \<br>
&nbsp; &nbsp; &nbsp;audiomanager \<br>
&nbsp; &nbsp; &nbsp;dlt-daemon \<br>
&nbsp; &nbsp; &nbsp;dlt-daemon-systemd \<br>
&nbsp; &nbsp; &nbsp;alsa-lib &nbsp;\<br>
&nbsp; &nbsp; &nbsp;alsa-utils \<br>
- &nbsp; &nbsp;bluez4 \<br>
- &nbsp; &nbsp;bluez4-systemd \<br>
&nbsp; &nbsp; &nbsp;connman \<br>
&nbsp; &nbsp; &nbsp;curl \<br>
&nbsp; &nbsp; &nbsp;dbus \<br>
&nbsp; &nbsp; &nbsp;ecryptfs-utils \<br>
- &nbsp; &nbsp;eglibc \<br>
&nbsp; &nbsp; &nbsp;fuse \<br>
&nbsp; &nbsp; &nbsp;gstreamer \<br>
&nbsp; &nbsp; &nbsp;gst-plugins-good \<br>
&nbsp; &nbsp; &nbsp;gst-plugins-base \<br>
- &nbsp; &nbsp;layer-management \<br>
&nbsp; &nbsp; &nbsp;libusb1 \<br>
&nbsp; &nbsp; &nbsp;nfs-utils \<br>
&nbsp; &nbsp; &nbsp;node-startup-controller \<br>
- &nbsp; &nbsp;obex-client \<br>
- &nbsp; &nbsp;obexd \<br>
&nbsp; &nbsp; &nbsp;openssl \<br>
&nbsp; &nbsp; &nbsp;quota \<br>
&nbsp; &nbsp; &nbsp;sqlite3 \<br>
&nbsp; &nbsp; &nbsp;udev \<br>
&nbsp; &nbsp; &nbsp;wpa-supplicant \<br>
&nbsp; &nbsp; &nbsp;&quot;<br>
-<br>
-RRECOMMENDS_${PN} =3D &quot;\<br>
- &nbsp; &nbsp;packagegroup-xserver-ivi \<br>
- &nbsp; &nbsp;&quot;<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-foton-specific-component-p2.bb" target=3D"_blank">packagegroup-foton-speci=
fic-component-p2.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http:/=
/packagegroup-foton-specific-component-p2.bb" target=3D"_blank">packagegrou=
p-foton-specific-component-p2.bb</a><br>
new file mode 100644<br>
index 0000000..6348ba4<br>
--- /dev/null<br>
&#43;&#43;&#43; b/recipes-yocto-ivi/packagegroups/<a href=3D"http://package=
group-foton-specific-component-p2.bb" target=3D"_blank">packagegroup-foton-=
specific-component-p2.bb</a><br>
@@ -0,0 &#43;1,19 @@<br>
&#43;DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P2 Specific components (SC)&q=
uot;<br>
&#43;LICENSE =3D &quot;MIT&quot;<br>
&#43;LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///\\$%7bIVI_COREBASE%7d\me=
ta-ivi\COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420">file://${IVI_COR=
EBASE}/meta-ivi/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420</a>&quot=
;<br>
&#43;PR =3D &quot;r0&quot;<br>
&#43;<br>
&#43;inherit packagegroup<br>
&#43;<br>
&#43;PACKAGES =3D &quot;\<br>
&#43; &nbsp; &nbsp;packagegroup-foton-specific-component-p2 \<br>
&#43; &nbsp; &nbsp;&quot;<br>
&#43;<br>
&#43;ALLOW_EMPTY =3D &quot;1&quot;<br>
&#43;<br>
&#43;<br>
&#43;RDEPENDS_${PN} &#43;=3D &quot;\<br>
&#43; &nbsp; &nbsp;pulseaudio-server \<br>
&#43; &nbsp; &nbsp;wireless-tools \<br>
&#43; &nbsp; &nbsp;&quot;<br>
&#43;<br>
--<br>
1.8.2.3<o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_365E1805BC95084CBE82381A0B869994DE4BA071EUMBX01mgcmento_--
