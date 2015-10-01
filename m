Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0086DE00D87; Thu,  1 Oct 2015 11:20:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB7A8E00FDB
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:19:47 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so1312278wic.1
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=g7UU09FfI42yQEOi5qK09PmC0NjAxoT2f6KoWe1pE8E=;
	b=OPXXeZ6X4rmhmxFc85P4E0vK1TfDaGdseIaH8tLM/sv9nnLYKw+0hke/YAAB/vDwkv
	u/iEPxpOgmVrYWogjRziYaw6wyjROYcIR1vFwmUHVd2hsWtiacrmoXZuaKcUOZlRtkba
	0HNIQVZ/VQT0OrPCjSEom0JGaDGteCealqNgohInlr53A3hmFhIXLLQbb2ep2eaKi3De
	af2seW3HDO/NjIKvEcZGDtHCI+JMEMR7GxEGMP6rVUsKaulK7Ng+kynCkEUlad4bDfj9
	5JXsDD8c6TzU2v4WqA4MWEPMskgJCTo+mTicGEfm3IVz/AsFiEKuBdiEWmGmFjnhcw2O
	+ARQ==
X-Received: by 10.195.13.138 with SMTP id ey10mr13617885wjd.14.1443723586845; 
	Thu, 01 Oct 2015 11:19:46 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id
	go2sm4374751wib.20.2015.10.01.11.19.46 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:19:46 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <3BD0AC54-FFF3-44B4-975D-CC5930232E83@gmail.com>
Date: Thu, 1 Oct 2015 20:19:46 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 7/7][meta-openembedded] Update nftables userland tools from 0.4 to 0.5
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
X-List-Received-Date: Thu, 01 Oct 2015 18:20:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-networking/recipes-filter/nftables/nftables_0.4.bb | 17 =
-----------------
 meta-networking/recipes-filter/nftables/nftables_0.5.bb | 17 =
+++++++++++++++++
 2 files changed, 17 insertions(+), 17 deletions(-)
 delete mode 100644 =
meta-networking/recipes-filter/nftables/nftables_0.4.bb
 create mode 100644 =
meta-networking/recipes-filter/nftables/nftables_0.5.bb

diff --git a/meta-networking/recipes-filter/nftables/nftables_0.4.bb =
b/meta-networking/recipes-filter/nftables/nftables_0.4.bb
deleted file mode 100644
index 741b330..0000000
--- a/meta-networking/recipes-filter/nftables/nftables_0.4.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-SUMMARY =3D "Netfilter Tables userspace utillites"
-LICENSE =3D "GPLv2"
-LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd1a78fdd879a263a5e0b42d1fc565e79"
-SECTION =3D "net"
-
-DEPENDS =3D "libmnl libnftnl readline gmp"
-RRECOMMENDS_${PN} +=3D "kernel-module-nf-tables \
-    "
-
-SRC_URI =3D =
"http://www.netfilter.org/projects/nftables/files/${BP}.tar.bz2 \
-           file://fix-to-generate-ntf.8.patch \
-          "
-
-SRC_URI[md5sum] =3D "09b686c489ff10db670ca60dbed7ff43"
-SRC_URI[sha256sum] =3D =
"f6ca69b75c68915f9f3a3972274ec68354dfbbcfc0b9fc55c813a0525c351d3c"
-
-inherit autotools pkgconfig
diff --git a/meta-networking/recipes-filter/nftables/nftables_0.5.bb =
b/meta-networking/recipes-filter/nftables/nftables_0.5.bb
new file mode 100644
index 0000000..11b5e5a
--- /dev/null
+++ b/meta-networking/recipes-filter/nftables/nftables_0.5.bb
@@ -0,0 +1,17 @@
+SUMMARY =3D "Netfilter Tables userspace utillites"
+LICENSE =3D "GPLv2"
+LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd1a78fdd879a263a5e0b42d1fc565e79"
+SECTION =3D "net"
+
+DEPENDS =3D "libmnl libnftnl readline gmp"
+RRECOMMENDS_${PN} +=3D "kernel-module-nf-tables \
+    "
+
+SRC_URI =3D =
"http://www.netfilter.org/projects/nftables/files/${BP}.tar.bz2 \
+           file://fix-to-generate-ntf.8.patch \
+          "
+
+SRC_URI[md5sum] =3D "94bfe1c54bcb9f6ed974835f2fca8069"
+SRC_URI[sha256sum] =3D =
"1fb6dff333d8a4fc347cbbe273bf905a2634b27a8c39df0d3a45d5a3fde10ad6"
+
+inherit autotools pkgconfig
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


