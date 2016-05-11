Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D412E00F15; Wed, 11 May 2016 08:18:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.136.216.160 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm1.bullet.mail.gq1.yahoo.com
	(nm28-vm1.bullet.mail.gq1.yahoo.com [98.136.216.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66DAFE00D79
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 08:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1462979868; bh=Wtl5sWLEs9hblHJ6Z08kePQ5N9HqGl8Ts00KHw1F6tw=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=r3dcXpaH4Pa0xTL3fmaXQSq7xNSTrEBMEdWUeKRiZO47gLpfU5ZQtDgiLnzqc9vdpldSEUiAtIddscQx5jcVNHYDEgbmOJu5mjXspBqaRfJggsoxd18j6R3iGvuWZHA0guLpsqUd4RobfPFSiXIkOHj4KuEGyUalwGhyFPjKVBYMfN2cLcKXT8cTpWZ+hkeXudhgj/GO613cMIQ53yg1kekH2lWc56gut1HxKHtvc7UPWpzIANSHQMZZ4/cMh76JVSAs7qy0TdlSCjeU6x2xMWe53qqyRuxNZnrwEh4tuehrd/QDJWlFxYHqYWGiDlsU9LPhwNyUjDxa0MUAOuSVXA==
Received: from [98.137.12.63] by nm28.bullet.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:17:48 -0000
Received: from [98.137.12.206] by tm8.bullet.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:17:48 -0000
Received: from [127.0.0.1] by omp1014.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:17:48 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 110926.53553.bm@omp1014.mail.gq1.yahoo.com
X-YMail-OSG: M9rayLYVM1kusgAZmQBib6PnOG82jD8_IY6hVni3zATaSlzzmhqQChn9Gz.tek6
	jqvTneAgTWNqVc3H6P7TN0PaVgTizXLaD2.aBFZab2Ar5kBnlUuaG1mv7xgmzfkI9UOyZypVjcq3
	HPLxNZxmWQuuWyuc33wQwd08c6GLfn9Jx_7CYG4iIx3KQ5OScQ4DIxIr.fSjR3gGrOy6sQ2vpfCA
	_y4G5fm3G4qXaw2WCCce0bi4Z7R6lpwjUiTp8P_SKjoONWabPci3ENbkIZdmMPY4tFurgoD7WFwY
	twgsxBQiOvV_KFA47mDXfm4M7OfO84p5wbnbcmEHXfvwL_dsXKNOyAF4duntRn7FA7Ix404PS6w6
	yJgxFg5.pyORoCCHGiQfkjBVtNvHr9JMMhVhHYHTEx5gOmdwZfQUJ7ndaq1SKJKwTQ8O_VnhNnfU
	HOxC2QXKUAmqrb_mRcG6Oy9VhVDYt2rv0Vaxh0H0Ki1IHaM.f4TLgtqWzdDwcnTDOugvFsRNFtT4
	ATM8sm86IPDSdMq0-
Received: from jws10778.mail.gq1.yahoo.com by sendmailws123.mail.gq1.yahoo.com;
	Wed, 11 May 2016 15:17:47 +0000; 1462979867.659
Date: Wed, 11 May 2016 15:17:46 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Adrian Dudau <adrian.dudau@enea.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <951737827.495345.1462979866245.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1462874748-57412-2-git-send-email-adrian.dudau@enea.com>
References: <1462874748-57412-2-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH 2/2] distro: Move IMAGE_CLASSES inheritance
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2016 15:18:10 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_495344_397828440.1462979866241"

------=_Part_495344_397828440.1462979866241
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Adi,=C2=A0Cannot this two patches be redone by:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 removingfro=
m =C2=A0"[PATCH 1/2] Added devicemanager multipath support for root file sy=
stem" the line "+IMAGE_CLASSES+=3D "image_types_uboot""=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 onlykeep=
ing in "[PATCH 2/2] distro: Move IMAGE_CLASSES inheritance" =C2=A0the line =
from " poky-cgl.conf".
=C2=A0Thanks,Alex V.=20

    On Tuesday, May 10, 2016 1:06 PM, Adrian Dudau <adrian.dudau@enea.com> =
wrote:
=20

 The IMAGE_CLASSES variable affects all images, so it must be defined at
distro level. Move it from the core-image-cgl-initramfs where it has no
effect into the distro definition.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 2 ++
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 1 -
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/co=
nf/distro/poky-cgl.conf
index aff5dec..1fd453e 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -3,3 +3,5 @@ require conf/distro/poky-lsb.conf
 DISTRO =3D "poky-cgl"
=20
 DISTRO_FEATURES_append =3D " pam selinux"
+
+IMAGE_CLASSES +=3D "image_types_uboot"
diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-=
common/images/core-image-cgl-initramfs.bb
index 845fa07..881f517 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -14,7 +14,6 @@ IMAGE_LINGUAS =3D ""
 LICENSE =3D "MIT"
=20
 IMAGE_FSTYPES =3D "cpio.gz.u-boot"
-IMAGE_CLASSES +=3D "image_types_uboot"
 inherit core-image
=20
 IMAGE_ROOTFS_SIZE =3D "8192"
--=20
1.9.1

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  

------=_Part_495344_397828440.1462979866241
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:12px"><div id=3D"yui_3_16_0_ym19_1_1462867835057_79567=
"></div><div id=3D"yui_3_16_0_ym19_1_1462867835057_79546">Hello Adi,</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_79547">&nbsp;</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_79548">Cannot this two patches b=
e redone by:</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_79549"><span id=3D"yui_3_16_0_ym=
19_1_1462867835057_79550" style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>removing
from <span id=3D"yui_3_16_0_ym19_1_1462867835057_79551" style=3D"">&nbsp;</=
span>"[PATCH 1/2] Added device
manager multipath support for root file system" the line "+IMAGE_CLASSES
+=3D "image_types_uboot""</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_79552"><span id=3D"yui_3_16_0_ym=
19_1_1462867835057_79553" style=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>only
keeping in "[PATCH 2/2] distro: Move IMAGE_CLASSES inheritance" <span id=3D=
"yui_3_16_0_ym19_1_1462867835057_79554" style=3D"">&nbsp;</span>the line fr=
om " poky-cgl.conf".</div><br><div id=3D"yui_3_16_0_ym19_1_1462867835057_79=
562">&nbsp;</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_79563">Thanks,</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_79564"><div id=3D"yui_3_16_0_ym1=
9_1_1462867835057_79568" dir=3D"ltr">Alex V.</div></div> <div class=3D"qtdS=
eparateBR"><br><br></div><div style=3D"display: block;" class=3D"yahoo_quot=
ed"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, A=
rial, Lucida Grande, sans-serif; font-size: 12px;"> <div style=3D"font-fami=
ly: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-se=
rif; font-size: 16px;"> <div dir=3D"ltr"><font face=3D"Arial" size=3D"2"> O=
n Tuesday, May 10, 2016 1:06 PM, Adrian Dudau &lt;adrian.dudau@enea.com&gt;=
 wrote:<br></font></div>  <br><br> <div class=3D"y_msg_container">The IMAGE=
_CLASSES variable affects all images, so it must be defined at<br clear=3D"=
none">distro level. Move it from the core-image-cgl-initramfs where it has =
no<br clear=3D"none">effect into the distro definition.<br clear=3D"none"><=
br clear=3D"none">Signed-off-by: Adrian Dudau &lt;<a shape=3D"rect" ymailto=
=3D"mailto:adrian.dudau@enea.com" href=3D"mailto:adrian.dudau@enea.com">adr=
ian.dudau@enea.com</a>&gt;<br clear=3D"none">---<br clear=3D"none"> meta-cg=
l-common/conf/distro/poky-cgl.conf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | 2 ++=
<br clear=3D"none"> meta-cgl-common/images/core-image-cgl-initramfs.bb | 1 =
-<br clear=3D"none"> 2 files changed, 2 insertions(+), 1 deletion(-)<br cle=
ar=3D"none"><br clear=3D"none">diff --git a/meta-cgl-common/conf/distro/pok=
y-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf<br clear=3D"none">in=
dex aff5dec..1fd453e 100644<br clear=3D"none">--- a/meta-cgl-common/conf/di=
stro/poky-cgl.conf<br clear=3D"none">+++ b/meta-cgl-common/conf/distro/poky=
-cgl.conf<br clear=3D"none">@@ -3,3 +3,5 @@ require conf/distro/poky-lsb.co=
nf<br clear=3D"none"> DISTRO =3D "poky-cgl"<br clear=3D"none"> <br clear=3D=
"none"> DISTRO_FEATURES_append =3D " pam selinux"<br clear=3D"none">+<br cl=
ear=3D"none">+IMAGE_CLASSES +=3D "image_types_uboot"<br clear=3D"none">diff=
 --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-comm=
on/images/core-image-cgl-initramfs.bb<br clear=3D"none">index 845fa07..881f=
517 100644<br clear=3D"none">--- a/meta-cgl-common/images/core-image-cgl-in=
itramfs.bb<br clear=3D"none">+++ b/meta-cgl-common/images/core-image-cgl-in=
itramfs.bb<br clear=3D"none">@@ -14,7 +14,6 @@ IMAGE_LINGUAS =3D ""<div cla=
ss=3D"yqt2641683088" id=3D"yqtfd36724"><br clear=3D"none"> LICENSE =3D "MIT=
"<br clear=3D"none"> <br clear=3D"none"> IMAGE_FSTYPES =3D "cpio.gz.u-boot"=
<br clear=3D"none">-IMAGE_CLASSES +=3D "image_types_uboot"<br clear=3D"none=
"> inherit core-image<br clear=3D"none"> <br clear=3D"none"> IMAGE_ROOTFS_S=
IZE =3D "8192"<br clear=3D"none">-- <br clear=3D"none">1.9.1<br clear=3D"no=
ne"><br clear=3D"none">-- <br clear=3D"none">______________________________=
_________________<br clear=3D"none">yocto mailing list<br clear=3D"none"><a=
 shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yo=
cto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=
=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"=
></div><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_495344_397828440.1462979866241--
