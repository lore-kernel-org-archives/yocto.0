Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5403DE002F9; Fri, 13 Feb 2015 20:44:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7F2E00289
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 20:44:54 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id kx10so23042444pab.13
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 20:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=GSlP6BcX79qzqnYTByhF75UC4g8o62ey/Odehz9BLm0=;
	b=hiCHAgZzz2YFUGnaP0rXFS+cKyA9LO/rMJpNz1IUOVjzaRu/Dof+RGS0Xf/UymL0gZ
	FrWG0E0okEA0G8u7w8RvdV9SkjYmmRoZRCEi/md7Pq+rPSZVrVBAI3CVoIm7q4xve4Er
	M6YB/sJ6NqcDkxo2OKbLPy1irMam0QcsZzNAmlk1q8X3GyhKlIdy0Qqu/kYEB2De/LFV
	hipk1pP/xYX14jmjNDympXK90QEr0vqbiMHJKg1VmIq46RobsNSjif5v50aaalJAEpqN
	gyhAKwqAGQwzItdFBm+uwEbhzJ82KtExewRhYAgrS+vyn/H5oRH3EzwWZ4QJJoaKN395
	JwDw==
X-Received: by 10.70.53.65 with SMTP id z1mr21310180pdo.38.1423889093494;
	Fri, 13 Feb 2015 20:44:53 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id dq4sm8107190pdb.96.2015.02.13.20.44.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Feb 2015 20:44:52 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Feb 2015 20:44:46 -0800
Message-Id: <1423889086-23673-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH][meta-cgl] cluster-glue: fix build issues
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
X-List-Received-Date: Sat, 14 Feb 2015 04:44:59 -0000

From: Armin Kuster <akuster@mvista.com>

WARNING: QA Issue: cluster-glue requires /usr/bin/perl, but no providers in its RDEPENDS [file-rdeps]
WARNING: QA Issue: cluster-glue-plugin-stonith2 requires /bin/bash, but no providers in its RDEPENDS [file-rdeps]
WARNING: QA Issue: cluster-glue-plugin-stonith-external requires /usr/bin/python, /usr/bin/perl, /bin/bash, but no providers in its RDEPENDS [file-rdeps]

and

checking for special libxml2 includes... --should-not-have-used-/usr/bin/xml2-config

Dropped PR.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
index 93ebf38..de348e8 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
@@ -6,8 +6,6 @@ is not the cluster messaging layer (Heartbeat), nor the cluster resource manager
 LICENSE = "GPLv2"
 DEPENDS = "libxml2 libtool glib-2.0 bzip2 util-linux"
 
-PR = "r3"
-
 SRC_URI = " \
 	http://hg.linux-ha.org/glue/archive/glue-${PV}.tar.bz2 \
     file://glue-repair-libxml-support.patch \
@@ -28,6 +26,8 @@ S = "${WORKDIR}/Reusable-Cluster-Components-glue--glue-${PV}"
 
 EXTRA_OECONF = "--with-daemon-user=hacluster --with-daemon-group=haclient --disable-fatal-warnings"
 
+CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0"
+
 do_configure_prepend() {
     ln -sf ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml2/libxml ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml
 }
@@ -83,7 +83,6 @@ FILES_${PN}-plugin-stonith2 = " \
 	/usr/lib/stonith/plugins/stonith2/*.so \
 	"
 FILES_${PN}-plugin-stonith2-ribcl = "/usr/lib/stonith/plugins/stonith2/ribcl.py"
-RDEPENDS_${PN}-plugin-stonith2-ribcl += "python"
 
 FILES_${PN}-plugin-stonith2-dbg = "/usr/lib/stonith/plugins/stonith2/.debug/"
 FILES_${PN}-plugin-stonith2-staticdev = "/usr/lib/stonith/plugins/stonith2/*.*a"
@@ -98,3 +97,8 @@ FILES_${PN}-plugin-interfacemgr-staticdev = "/usr/lib/heartbeat/plugins/Interfac
 FILES_${PN}-plugin-interfacemgr-dbg = "/usr/lib/heartbeat/plugins/InterfaceMgr/.debug/"
 
 FILES_${PN}-lrmtest = "/usr/share/cluster-glue/lrmtest/"
+
+RDEPENDS_${PN} += "perl"
+RDEPENDS_${PN}-plugin-stonith2 += "bash"
+RDEPENDS_${PN}-plugin-stonith-external += "bash python perl"
+RDEPENDS_${PN}-plugin-stonith2-ribcl += "python"
-- 
1.9.1


