Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E279DE00A3B; Mon, 27 Jul 2015 05:35:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.138.91.248 listed in list.dnswl.org]
Received: from nm26-vm5.bullet.mail.ne1.yahoo.com
	(nm26-vm5.bullet.mail.ne1.yahoo.com [98.138.91.248])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E900E009D6
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438000502; bh=l1OfozGtO7YEWFzMOYrNoTxFUDMlayugDFaK0iS4Aa8=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=J57T48rJK6DXT1qFLq87y377gm9dNGJHUDoHPR3rGc3IWrXokP+yaZPMBmM1bfHGVzR6omQLNVOqFgRdaO92voy6xF41FQERS8jYkPIYy0Cm4Hubp1MMGpvTNJ6KUXSd+7qA0mB9zlnVOHq1tgg6zcDZixk/Q6cSpjLMxwloRMcW03HRvrj2uCd2577phcgr6cqW+m4Qbx3B6xPwQWdNG9fUxFUr5mkeqH+M1aAUD2YFaYc+KZE4o9dkfQmPbEDUV5eGuWVHtx5DBEEbq9wJ5fcz1IOV2OsNIuOzgVnkf5xJ+A80z0LKCpmdRTCmpoVfIRSKLyTV0VYWCIkSkdN/1g==
Received: from [98.138.226.177] by nm26.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 12:35:02 -0000
Received: from [98.138.89.199] by tm12.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 12:35:02 -0000
Received: from [127.0.0.1] by omp1057.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 12:35:02 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 182828.64131.bm@omp1057.mail.ne1.yahoo.com
X-YMail-OSG: AVcfCxoVM1lU86zsa_44iVuGJuZRNrh4ctRJ_SI9p4vr5lvU7T1GClFpsXvvdd2
	jLEO07LDlLa36.4znd9mwZbjg8uy1Tua0rd6fxY8OmEMsXMKSnJFpQxl5u9M2JUalYjIssjseAfP
	g0ZT5NbsDIAr8ItccTZmyb0Un7fp3zMLyBG0cr6L4qcxT15Ab_DwCCfrB9e_FjZnIhxJCa5DnlFu
	LPURIzcUGAc.FOKDZw13eWAA._2EI9sDi0AFgz3XEqCZ1KrmEZHIZ9PXk4NH2AUQ7T9DKQ.SD_1Z
	.xYwiidbkAzmUeQM6NuxMKzwQGF1gn31PUm2Hd7Eia.Y2DseCKLf2013z_LksGPHj50Kg.KcV2Aa
	SBC2kFOv.nz.k2coenkg3MKpQ0hPqTdfaMWGe_sj5x6hJzq2CXz.Ym4.R4M5FqnRL1hbJX_udwfb
	THNmr2cGBxd.R5iy67hfVZV97LAipNjlju2jmC3IhEUhVSTDURj_US7ldJQkqtedU188YC4nTGdg
	B4.x9kzd8fDgMecqggg05qcXPJ3WRbCA-
Received: by 98.138.101.173; Mon, 27 Jul 2015 12:35:01 +0000 
Date: Mon, 27 Jul 2015 12:34:49 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <714771165.2900148.1438000489720.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: fido LICENSE error opencv
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Jul 2015 12:35:05 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2900147_1841133661.1438000489717"

------=_Part_2900147_1841133661.1438000489717
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
I was able to fix the license error in fido by adding commercial_x264 to LI=
CENSE_FLAGS_WHITELIST variable.=20

LICENSE_FLAGS_WHITELIST =3D "commercial_libmad commercial_mpeg2dec commerci=
al_libav commercial_ffmpeg commercial_x264"

Opencv was installed on the Raspberry core-image-sato with the following ch=
anges

git diff meta/recipes-sato/images/core-image-sato.bb
diff --git a/meta/recipes-sato/images/core-image-sato.bb b/meta/recipes-sat=
o/ima
index e3246d2..f4b2286 100644
--- a/meta/recipes-sato/images/core-image-sato.bb
+++ b/meta/recipes-sato/images/core-image-sato.bb
@@ -8,4 +8,9 @@ LICENSE =3D "MIT"
=C2=A0
=C2=A0inherit core-image
=C2=A0
-IMAGE_INSTALL +=3D "packagegroup-core-x11-sato-games"
+IMAGE_INSTALL +=3D "packagegroup-core-x11-sato-games kernel-dev xterm git =
\
+ jasper gsl gsl-dev python-netserver python-pygtk python-pygtk-dev \
+ python-numpy liba52 liba52-dev libmad libmad-dev libmad-staticdev \
+ chkconfig v4l-utils python-imaging parted python-distribute \
+ python-pyrex python-pexpect gperf tree libav libav-dev \
+ x264 x264-dev libav libav-dev opencv opencv-samples cmake"

What is the preferred method of creating an image with additional software =
installed?

Thanks for all the help.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_2900147_1841133661.1438000489717
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437997116126_12891"><spa=
n>Hello All,<br class=3D"">I was able to fix the license error in fido by a=
dding commercial_x264 to LICENSE_FLAGS_WHITELIST variable. <br class=3D""><=
br class=3D"">LICENSE_FLAGS_WHITELIST =3D "commercial_libmad commercial_mpe=
g2dec commercial_libav commercial_ffmpeg commercial_x264"<br class=3D""><br=
 class=3D"">Opencv was installed on the Raspberry core-image-sato with the =
following changes<br class=3D""><br class=3D"">git diff meta/recipes-sato/i=
mages/core-image-sato.bb<br class=3D"">diff --git a/meta/recipes-sato/image=
s/core-image-sato.bb b/meta/recipes-sato/ima<br class=3D"">index e3246d2..f=
4b2286 100644<br class=3D"">--- a/meta/recipes-sato/images/core-image-sato.=
bb<br class=3D"">+++ b/meta/recipes-sato/images/core-image-sato.bb<br class=
=3D"">@@ -8,4 +8,9 @@ LICENSE =3D "MIT"<br class=3D"">&nbsp;<br class=3D"">=
&nbsp;inherit core-image<br class=3D"">&nbsp;<br class=3D"">-IMAGE_INSTALL =
+=3D "packagegroup-core-x11-sato-games"<br class=3D"">+IMAGE_INSTALL +=3D "=
packagegroup-core-x11-sato-games kernel-dev xterm git \<br class=3D"">+ jas=
per gsl gsl-dev python-netserver python-pygtk python-pygtk-dev \<br class=
=3D"">+ python-numpy liba52 liba52-dev libmad libmad-dev libmad-staticdev \=
<br class=3D"">+ chkconfig v4l-utils python-imaging parted python-distribut=
e \<br class=3D"">+ python-pyrex python-pexpect gperf tree libav libav-dev =
\<br class=3D"">+ x264 x264-dev libav libav-dev opencv opencv-samples cmake=
"<br class=3D""><br class=3D"">What is the preferred method of creating an =
image with additional software installed?<br class=3D""><br class=3D"">Than=
ks for all the help.</span></div><div>&nbsp;</div><div><div>Edward Vidal Jr=
.<br>e-mail develone@sbcglobal.net<br>915-595-1613</div></div></div></body>=
</html>

------=_Part_2900147_1841133661.1438000489717--
