Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95E62E0085D; Thu, 25 May 2017 01:28:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.137.64.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic305-22.consmr.mail.gq1.yahoo.com
	(sonic305-22.consmr.mail.gq1.yahoo.com [98.137.64.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4846EE00724
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 01:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1495700914; bh=yXR06M2vHBTJe6Wu69nBZhQReTK/obQj536Pmd76060=;
	h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
	b=XotlmhbULh/N8AlK3Ez0jo96TCKQovlq6Lr3WHOT9WqGN+Czb1I6lMGJevEhGIRk9+SvzrV8A71V9QAAq4Zx/UEqsrpqJ32TviiPUpckcia3YhXo0u4BkAAhI/erJpVMpT1PJVB2+nwGVVE71mWJeZi3P+CfUAT+//H4nfzfpE3fgjcm36WhadBo0kbegTp/JyKo6fX9NAkhXYWpoXR8RiGn21eOTHTmi+nmZIkPBgxuh73Bx0k+vAcsYJQG22xrHUEU4qraasu9lwJDKrUwzyo9YAAxBA6JazzwZF2qS6t+zfbUrsizl0e0Ed70Rs5IYqQjVkNVs4Y+xfZUrGgdDQ==
X-YMail-OSG: 2E3uTr4VM1ndF04A9C8on3a5cwwNgZZyIhVSUoWxBvYlCmrXyBJ7ZhMFfkFZPzg
	jAziVrvO9cSFkqpAdLwGqsPJKmMETLGiLbKwqVI4rw7R3jlVTC1KjFtXi42szazW3WuNVMXFCJqR
	yWSlJsCfebhOw8JIQAzQOnolPr_Pdfs1BtpMEHHKVN28dWOPQh3v83RSwirKjKRYaiywuvevb_fj
	XmQpgL.42FFHq7Uj5ug4EdWYFdrsJU3Oj0XmZ8De5Smr15N32FxUhrA8WLDtJOqNMalF9esPTrdH
	jamSR6oWtt.gCDWYmIExqlF7bR8IHAw2gRyVRwjCbOxF1_PtHDcDoUz3keXeya40XXh4s1JuUYO4
	zyYHVBt4xDuHVf5kk4ZDqNzDEBY52fP8D7RBQ85sP7GbvYMLsvKnsi6JYVK7BvumkPVO9x3IXq.A
	eYc_QWiIXBnDBziNBDj7Ov0q2oCPOjQEvkZT29gcG_ChQm_qFCOIeJScUs4.5YW0ocysz1Mole8z
	JPwnLoqBv0Gjzcg2h7u6cgrmlUrQ8Zi0OXFv6OmQSTQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic305.consmr.mail.gq1.yahoo.com with HTTP;
	Thu, 25 May 2017 08:28:34 +0000
Date: Thu, 25 May 2017 08:28:26 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Adrian Dudau <adrian.dudau@enea.com>, yocto@yoctoproject.org
Message-ID: <1916506369.2432592.1495700906758@mail.yahoo.com>
In-Reply-To: <1495628439-48206-1-git-send-email-adrian.dudau@enea.com>
References: <1495628439-48206-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.9679 YMailNorrin Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:53.0) Gecko/20100101 Firefox/53.0
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
X-List-Received-Date: Thu, 25 May 2017 08:28:36 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2432591_1936364934.1495700906755"

------=_Part_2432591_1936364934.1495700906755
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Looks good to me ;)Can you also please push upstream the following patch: [=
yocto] [meta-cgl][PATCH] meta-cgl-common: remove dependency on meta-openclo=
vis
Thanks,Alex V.


On Wednesday, May 24, 2017, 3:25:34 PM GMT+3, Adrian Dudau <adrian.dudau@en=
ea.com> wrote:run-postinsts is now installed by default in image.bbclass, s=
o no need
to include it in each image.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 2 +-
 meta-cgl-common/images/core-image-cgl.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-=
common/images/core-image-cgl-initramfs.bb
index 2ebbdf5..477f069 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -3,7 +3,7 @@ require core-image-cgl.bb
 # Recipe is based on core-image-minimal.bb
 DESCRIPTION =3D "Initramfs used to mount multipath device as root file sys=
tem"
=20
-PACKAGE_INSTALL =3D "initramfs-cgl-boot busybox base-passwd udev ${ROOTFS_=
BOOTSTRAP_INSTALL}"
+PACKAGE_INSTALL =3D "initramfs-cgl-boot busybox base-passwd udev"
=20
 # Do not pollute the initrd image with rootfs features
 IMAGE_FEATURES =3D ""
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/ima=
ges/core-image-cgl.bb
index 7117493..86bf7d4 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -10,7 +10,6 @@ VALGRIND_armv7a ?=3D "valgrind"
=20
 # Include modules in rootfs
 IMAGE_INSTALL +=3D "\
-=C2=A0 =C2=A0 ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
=C2=A0 =C2=A0 packagegroup-core-buildessential \
=C2=A0 =C2=A0 packagegroup-core-selinux \
=C2=A0 =C2=A0 packagegroup-cgl \
--=20
2.7.4

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

------=_Part_2432591_1936364934.1495700906755
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:small;"><div style=3D"font-family:Helvetica =
Neue, Helvetica, Arial, sans-serif;font-size:small;"><div><div>Looks good t=
o me ;)</div><div>Can you also please push upstream the following patch:=20
<!--StartFragment--><span data-test-id=3D"message-group-subject" class=3D"y=
dpa98af8f8en_N ydpa98af8f8i_3mCHE" title=3D"[yocto] [meta-cgl][PATCH] meta-=
cgl-common: remove dependency on=09meta-openclovis"><span data-test-id=3D"m=
essage-group-subject-text">[yocto] [meta-cgl][PATCH] meta-cgl-common: remov=
e dependency on=09meta-openclovis</span></span><!--EndFragment-->

</div><div><br></div><div>Thanks,</div><div>Alex V.<br></div><div><br></div=
></div><div><br></div></div><div id=3D"yahoo_quoted_6640925243" class=3D"ya=
hoo_quoted"><div>On Wednesday, May 24, 2017, 3:25:34 PM GMT+3, Adrian Dudau=
 &lt;adrian.dudau@enea.com&gt; wrote:</div><div><div dir=3D'ltr'>run-postin=
sts is now installed by default in image.bbclass, so no need<br></div><div =
dir=3D'ltr'>to include it in each image.<br></div><div dir=3D'ltr'><br></di=
v><div dir=3D'ltr'>Signed-off-by: Adrian Dudau &lt;<a ymailto=3D"mailto:adr=
ian.dudau@enea.com" href=3D"mailto:adrian.dudau@enea.com">adrian.dudau@enea=
.com</a>&gt;<br></div><div dir=3D'ltr'>---<br></div><div dir=3D'ltr'> meta-=
cgl-common/images/core-image-cgl-initramfs.bb | 2 +-<br></div><div dir=3D'l=
tr'> meta-cgl-common/images/core-image-cgl.bb&nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp;  | 1 -<br></div><div dir=3D'ltr'> 2 files changed, 1 insertion(+), 2 d=
eletions(-)<br></div><div dir=3D'ltr'><br></div><div dir=3D'ltr'>diff --git=
 a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/ima=
ges/core-image-cgl-initramfs.bb<br></div><div dir=3D'ltr'>index 2ebbdf5..47=
7f069 100644<br></div><div dir=3D'ltr'>--- a/meta-cgl-common/images/core-im=
age-cgl-initramfs.bb<br></div><div dir=3D'ltr'>+++ b/meta-cgl-common/images=
/core-image-cgl-initramfs.bb<br></div><div dir=3D'ltr'>@@ -3,7 +3,7 @@ requ=
ire core-image-cgl.bb<br></div><div dir=3D'ltr'> # Recipe is based on core-=
image-minimal.bb<br></div><div dir=3D'ltr'> DESCRIPTION =3D "Initramfs used=
 to mount multipath device as root file system"<br></div><div dir=3D'ltr'> =
<br></div><div dir=3D'ltr'>-PACKAGE_INSTALL =3D "initramfs-cgl-boot busybox=
 base-passwd udev ${ROOTFS_BOOTSTRAP_INSTALL}"<br></div><div dir=3D'ltr'>+P=
ACKAGE_INSTALL =3D "initramfs-cgl-boot busybox base-passwd udev"<br></div><=
div dir=3D'ltr'> <br></div><div dir=3D'ltr'> # Do not pollute the initrd im=
age with rootfs features<br></div><div dir=3D'ltr'> IMAGE_FEATURES =3D ""<b=
r></div><div dir=3D'ltr'>diff --git a/meta-cgl-common/images/core-image-cgl=
.bb b/meta-cgl-common/images/core-image-cgl.bb<br></div><div dir=3D'ltr'>in=
dex 7117493..86bf7d4 100644<br></div><div dir=3D'ltr'>--- a/meta-cgl-common=
/images/core-image-cgl.bb<br></div><div dir=3D'ltr'>+++ b/meta-cgl-common/i=
mages/core-image-cgl.bb<br></div><div dir=3D'ltr'>@@ -10,7 +10,6 @@ VALGRIN=
D_armv7a ?=3D "valgrind"<br></div><div dir=3D'ltr'> <br></div><div dir=3D'l=
tr'> # Include modules in rootfs<br></div><div dir=3D'ltr'> IMAGE_INSTALL +=
=3D "\<br></div><div dir=3D'ltr'>-&nbsp; &nbsp; ${ROOTFS_PKGMANAGE_BOOTSTRA=
P} \<br></div><div dir=3D'ltr'>&nbsp; &nbsp;  packagegroup-core-buildessent=
ial \<br></div><div dir=3D'ltr'>&nbsp; &nbsp;  packagegroup-core-selinux \<=
br></div><div dir=3D'ltr'>&nbsp; &nbsp;  packagegroup-cgl \<br></div><div d=
ir=3D'ltr'>-- <br></div><div dir=3D'ltr'>2.7.4<br></div><div dir=3D'ltr'><b=
r></div><div dir=3D'ltr'>-- <br></div><div dir=3D'ltr'>____________________=
___________________________<br></div><div dir=3D'ltr'>yocto mailing list<br=
></div><div dir=3D'ltr'><a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br></div><div=
 dir=3D'ltr'><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D_blank>https://lists.yoctoproject.org/listinfo/yocto</a><br></div></di=
v></div></div></body></html>

------=_Part_2432591_1936364934.1495700906755--
