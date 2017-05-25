Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EABEE00726; Thu, 25 May 2017 03:42:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E94ECE00349
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 03:42:14 -0700 (PDT)
Received: from 1dDqDc-0000hE-Va by out10a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1dDqDd-0000k3-TF; Thu, 25 May 2017 03:42:13 -0700
Received: by emcmailer; Thu, 25 May 2017 03:42:13 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10a.electric.net with esmtps (TLSv1:ECDHE-RSA-AES256-SHA:256)
	(Exim 4.87) (envelope-from <Adrian.Dudau@enea.com>)
	id 1dDqDc-0000hE-Va; Thu, 25 May 2017 03:42:12 -0700
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0319.002; Thu, 25 May 2017 12:41:51 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] core-image-cgl: Remove
	ROOTFS_PKGMANAGE_BOOTSTRAP
Thread-Index: AQHS1IjhGqV1SUipV0mBI4X4JoqGNaIElykAgABGPXI=
Date: Thu, 25 May 2017 10:41:50 +0000
Message-ID: <C35DE6E3665B10419D70F74D9884ABD49F48C335@sestoex09.enea.se>
References: <1495628439-48206-1-git-send-email-adrian.dudau@enea.com>,
	<1916506369.2432592.1495700906758@mail.yahoo.com>
In-Reply-To: <1916506369.2432592.1495700906758@mail.yahoo.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.1.190]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:ECDHE-RSA-AES256-SHA:256
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Subject: Re: [meta-cgl][PATCH] core-image-cgl: Remove	ROOTFS_PKGMANAGE_BOOTSTRAP
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
X-List-Received-Date: Thu, 25 May 2017 10:42:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C35DE6E3665B10419D70F74D9884ABD49F48C335sestoex09enease_"

--_000_C35DE6E3665B10419D70F74D9884ABD49F48C335sestoex09enease_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

It's been merged already:)

--Adrian

________________________________
From: Alexandru Vaduva [vaduvajanalexandru@yahoo.com]
Sent: Thursday, May 25, 2017 10:28 AM
To: Adrian Dudau; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-cgl][PATCH] core-image-cgl: Remove ROOTFS_PKGMAN=
AGE_BOOTSTRAP

Looks good to me ;)
Can you also please push upstream the following patch: [yocto] [meta-cgl][P=
ATCH] meta-cgl-common: remove dependency on meta-openclovis

Thanks,
Alex V.


On Wednesday, May 24, 2017, 3:25:34 PM GMT+3, Adrian Dudau <adrian.dudau@en=
ea.com> wrote:
run-postinsts is now installed by default in image.bbclass, so no need
to include it in each image.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com<mailto:adrian.dudau@enea=
.com>>
---
meta-cgl-common/images/core-image-cgl-initramfs.bb | 2 +-
meta-cgl-common/images/core-image-cgl.bb          | 1 -
2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-=
common/images/core-image-cgl-initramfs.bb
index 2ebbdf5..477f069 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -3,7 +3,7 @@ require core-image-cgl.bb
# Recipe is based on core-image-minimal.bb
DESCRIPTION =3D "Initramfs used to mount multipath device as root file syst=
em"

-PACKAGE_INSTALL =3D "initramfs-cgl-boot busybox base-passwd udev ${ROOTFS_=
BOOTSTRAP_INSTALL}"
+PACKAGE_INSTALL =3D "initramfs-cgl-boot busybox base-passwd udev"

# Do not pollute the initrd image with rootfs features
IMAGE_FEATURES =3D ""
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/ima=
ges/core-image-cgl.bb
index 7117493..86bf7d4 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -10,7 +10,6 @@ VALGRIND_armv7a ?=3D "valgrind"

# Include modules in rootfs
IMAGE_INSTALL +=3D "\
-    ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
    packagegroup-core-buildessential \
    packagegroup-core-selinux \
    packagegroup-cgl \
--
2.7.4

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_C35DE6E3665B10419D70F74D9884ABD49F48C335sestoex09enease_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" id=3D"owaParaStyle">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body fpstyle=3D"1" ocsi=3D"0">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">It's been merged already:)<br>
<br>
--Adrian<br>
<br>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">
<hr tabindex=3D"-1">
<div id=3D"divRpF135979" style=3D"direction: ltr;"><font size=3D"2" color=
=3D"#000000" face=3D"Tahoma"><b>From:</b> Alexandru Vaduva [vaduvajanalexan=
dru@yahoo.com]<br>
<b>Sent:</b> Thursday, May 25, 2017 10:28 AM<br>
<b>To:</b> Adrian Dudau; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] [meta-cgl][PATCH] core-image-cgl: Remove ROOTFS=
_PKGMANAGE_BOOTSTRAP<br>
</font><br>
</div>
<div></div>
<div>
<div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif; font-s=
ize:small">
<div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif; font-s=
ize:small">
<div>
<div>Looks good to me ;)</div>
<div>Can you also please push upstream the following patch: <span class=3D"=
ydpa98af8f8en_N ydpa98af8f8i_3mCHE" title=3D"[yocto] [meta-cgl][PATCH] meta=
-cgl-common: remove dependency on	meta-openclovis">
<span>[yocto] [meta-cgl][PATCH] meta-cgl-common: remove dependency on meta-=
openclovis</span></span>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div>Alex V.<br>
</div>
<div><br>
</div>
</div>
<div><br>
</div>
</div>
<div id=3D"yahoo_quoted_6640925243" class=3D"yahoo_quoted">
<div>On Wednesday, May 24, 2017, 3:25:34 PM GMT&#43;3, Adrian Dudau &lt;adr=
ian.dudau@enea.com&gt; wrote:</div>
<div>
<div dir=3D"ltr">run-postinsts is now installed by default in image.bbclass=
, so no need<br>
</div>
<div dir=3D"ltr">to include it in each image.<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Signed-off-by: Adrian Dudau &lt;<a href=3D"mailto:adrian.d=
udau@enea.com" target=3D"_blank">adrian.dudau@enea.com</a>&gt;<br>
</div>
<div dir=3D"ltr">---<br>
</div>
<div dir=3D"ltr">meta-cgl-common/images/core-image-cgl-initramfs.bb | 2 &#4=
3;-<br>
</div>
<div dir=3D"ltr">meta-cgl-common/images/core-image-cgl.bb&nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; | 1 -<br>
</div>
<div dir=3D"ltr">2 files changed, 1 insertion(&#43;), 2 deletions(-)<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">diff --git a/meta-cgl-common/images/core-image-cgl-initram=
fs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb<br>
</div>
<div dir=3D"ltr">index 2ebbdf5..477f069 100644<br>
</div>
<div dir=3D"ltr">--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb<b=
r>
</div>
<div dir=3D"ltr">&#43;&#43;&#43; b/meta-cgl-common/images/core-image-cgl-in=
itramfs.bb<br>
</div>
<div dir=3D"ltr">@@ -3,7 &#43;3,7 @@ require core-image-cgl.bb<br>
</div>
<div dir=3D"ltr"># Recipe is based on core-image-minimal.bb<br>
</div>
<div dir=3D"ltr">DESCRIPTION =3D &quot;Initramfs used to mount multipath de=
vice as root file system&quot;<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">-PACKAGE_INSTALL =3D &quot;initramfs-cgl-boot busybox base=
-passwd udev ${ROOTFS_BOOTSTRAP_INSTALL}&quot;<br>
</div>
<div dir=3D"ltr">&#43;PACKAGE_INSTALL =3D &quot;initramfs-cgl-boot busybox =
base-passwd udev&quot;<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"># Do not pollute the initrd image with rootfs features<br>
</div>
<div dir=3D"ltr">IMAGE_FEATURES =3D &quot;&quot;<br>
</div>
<div dir=3D"ltr">diff --git a/meta-cgl-common/images/core-image-cgl.bb b/me=
ta-cgl-common/images/core-image-cgl.bb<br>
</div>
<div dir=3D"ltr">index 7117493..86bf7d4 100644<br>
</div>
<div dir=3D"ltr">--- a/meta-cgl-common/images/core-image-cgl.bb<br>
</div>
<div dir=3D"ltr">&#43;&#43;&#43; b/meta-cgl-common/images/core-image-cgl.bb=
<br>
</div>
<div dir=3D"ltr">@@ -10,7 &#43;10,6 @@ VALGRIND_armv7a ?=3D &quot;valgrind&=
quot;<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"># Include modules in rootfs<br>
</div>
<div dir=3D"ltr">IMAGE_INSTALL &#43;=3D &quot;\<br>
</div>
<div dir=3D"ltr">-&nbsp; &nbsp; ${ROOTFS_PKGMANAGE_BOOTSTRAP} \<br>
</div>
<div dir=3D"ltr">&nbsp; &nbsp; packagegroup-core-buildessential \<br>
</div>
<div dir=3D"ltr">&nbsp; &nbsp; packagegroup-core-selinux \<br>
</div>
<div dir=3D"ltr">&nbsp; &nbsp; packagegroup-cgl \<br>
</div>
<div dir=3D"ltr">-- <br>
</div>
<div dir=3D"ltr">2.7.4<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">-- <br>
</div>
<div dir=3D"ltr">_______________________________________________<br>
</div>
<div dir=3D"ltr">yocto mailing list<br>
</div>
<div dir=3D"ltr"><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
</div>
<div dir=3D"ltr"><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_C35DE6E3665B10419D70F74D9884ABD49F48C335sestoex09enease_--
