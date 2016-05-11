Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82FAAE00E6C; Wed, 11 May 2016 08:17:30 -0700 (PDT)
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
	*      [98.137.176.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm15-vm5.bullet.mail.gq1.yahoo.com
	(nm15-vm5.bullet.mail.gq1.yahoo.com [98.137.176.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 416D2E00D77
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 08:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1462979823; bh=Z7XlPG0SESIOY0ip0SJOha0Mdq6pTehNMCxoT5ONkzU=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=Ms9eJpVgMvtXB8/sZNkBlV8dCit8OqlHNvelKduiENqbi24DVHxk0J7pMu7gRL9u44bb7i5XFTsiXnN8JBCAqvJUVCJLeqGugNTh8wF8sYcQFhrF5AoPqIXsSqMubptYLGgRDxeHPB6W8JJRErldTWe8Hs3sNPMQ9YCKHPd1qjARdLyq+0WJo+dI1dyADDuJYJI7UNu5NJ9jWnKYkF5T56SRMYoWewI0W02grL8FIPilw6uVhy8zu0l7OuIs0T5wBtOK7hroJOl4/YUFeaH/foGM5qorpvRnLHTOJhTtZqDxRGwN5LmfZRj4ZOVj9GnJA7S4KDIKFwpMqvfr0CzuZg==
Received: from [98.137.12.61] by nm15.bullet.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:17:03 -0000
Received: from [98.137.12.222] by tm6.bullet.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:17:03 -0000
Received: from [127.0.0.1] by omp1030.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:17:03 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 13827.27003.bm@omp1030.mail.gq1.yahoo.com
X-YMail-OSG: gvyP518VM1kH3gbUiGD.4wyyGhmRrLPJLsUb.wuSzeYPMXl0Iuj3p5uJEPUyBHM
	O7SikLFZkmqguH.R0RWWWfBpdI9JvIHIA3ZqyYbBjyvq3Uwp3tZtSjvv_JDGntqhY.KMYGBKbFCM
	yfswgRYG403pZyQ7xEansi8zccjO_oEr7sMdCqLoPTuRAkWKrikEM0rbN.yFtQOoFxU4pI0QFUKU
	BLwQ_xoH3brHb1PpVwY55VTczrHSY3m1OMlmgahUYyuUc6YkeJtWKM7sraIVYJITldrNmx9huxBj
	5mm2UE.qwf.vBIyAFxc9_y1aShgY5HoSMfo04zJJdwnmUwDzUgD6zel5vFP0MUxX86YmlDwIv7Te
	0phDouiQCxe1sUmTL6Figk2ISNl82F4A_OvTaF9G0HrGhjdxRZUgDthCrmsK8xOCZ7UsSrnc59Hz
	hRDIdwBk6cFNMArPoSivEx1otpdISNDdphsMWbzJLv.d9VuKKW8ZQ_xnJITu0hMbxAX6n37FsS6R
	0m8Tkh1M3C67YKXg-
Received: from jws10717.mail.gq1.yahoo.com by sendmailws144.mail.gq1.yahoo.com;
	Wed, 11 May 2016 15:17:02 +0000; 1462979822.572
Date: Wed, 11 May 2016 15:17:02 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Adrian Dudau <adrian.dudau@enea.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <318821325.530639.1462979822235.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1462881836-1524-1-git-send-email-adrian.dudau@enea.com>
References: <1462881836-1524-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH 1/2] distro: Inherit SELinux distro
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
X-List-Received-Date: Wed, 11 May 2016 15:17:30 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_530638_1092483524.1462979822233"

------=_Part_530638_1092483524.1462979822233
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

ok from my side
 

    On Tuesday, May 10, 2016 3:04 PM, Adrian Dudau <adrian.dudau@enea.com> wrote:
 

 meta-selinux defines a distro with refpolicy providers. Inherit that
instead of trying to define our own refpolicies.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/conf/distro/poky-cgl.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-cgl.conf
index 1fd453e..ab102d5 100644
--- a/meta-cgl-common/conf/distro/poky-cgl.conf
+++ b/meta-cgl-common/conf/distro/poky-cgl.conf
@@ -1,7 +1,6 @@
 require conf/distro/poky-lsb.conf
+require conf/distro/poky-selinux.conf
 
 DISTRO = "poky-cgl"
 
-DISTRO_FEATURES_append = " pam selinux"
-
 IMAGE_CLASSES += "image_types_uboot"
-- 
1.9.1

-- 
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


   

------=_Part_530638_1092483524.1462979822233
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:12px"><div id=3D"yui_3_16_0_ym19_1_1462867835057_77137=
" dir=3D"ltr">ok from my side<br></div><div id=3D"yui_3_16_0_ym19_1_1462867=
835057_77136"><span></span></div> <div class=3D"qtdSeparateBR"><br><br></di=
v><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font=
-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sa=
ns-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helv=
etica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;">=
 <div dir=3D"ltr"><font face=3D"Arial" size=3D"2"> On Tuesday, May 10, 2016=
 3:04 PM, Adrian Dudau &lt;adrian.dudau@enea.com&gt; wrote:<br></font></div=
>  <br><br> <div class=3D"y_msg_container">meta-selinux defines a distro wi=
th refpolicy providers. Inherit that<br>instead of trying to define our own=
 refpolicies.<br><br>Signed-off-by: Adrian Dudau &lt;<a ymailto=3D"mailto:a=
drian.dudau@enea.com" href=3D"mailto:adrian.dudau@enea.com">adrian.dudau@en=
ea.com</a>&gt;<br>---<br> meta-cgl-common/conf/distro/poky-cgl.conf | 3 +--=
<br> 1 file changed, 1 insertion(+), 2 deletions(-)<br><br>diff --git a/met=
a-cgl-common/conf/distro/poky-cgl.conf b/meta-cgl-common/conf/distro/poky-c=
gl.conf<br>index 1fd453e..ab102d5 100644<br>--- a/meta-cgl-common/conf/dist=
ro/poky-cgl.conf<br>+++ b/meta-cgl-common/conf/distro/poky-cgl.conf<br>@@ -=
1,7 +1,6 @@<br> require conf/distro/poky-lsb.conf<br>+require conf/distro/p=
oky-selinux.conf<br> <br> DISTRO =3D "poky-cgl"<br> <br>-DISTRO_FEATURES_ap=
pend =3D " pam selinux"<br>-<br> IMAGE_CLASSES +=3D "image_types_uboot"<br>=
-- <br>1.9.1<br><br>-- <br>_______________________________________________<=
br>yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=3D=
"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://l=
ists.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  =
</div></div></body></html>

------=_Part_530638_1092483524.1462979822233--
