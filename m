Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 721A6E016D6
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 12:06:26 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VWstp-0004u2-Ba; Thu, 17 Oct 2013 19:06:25 +0000
Received: from flihp by longhaul.twobit.us with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VWsti-0007xK-S6; Thu, 17 Oct 2013 19:06:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 17 Oct 2013 19:06:11 +0000
Message-Id: <1382036771-30531-6-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1382036771-30531-1-git-send-email-flihp@twobit.us>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux][PATCH 5/5] Add packagegroup for policycoreutils packages.
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
X-List-Received-Date: Thu, 17 Oct 2013 19:06:28 -0000

The policycoreutils package previously included most everything in
the base package. This packagegroup is intended to fill the role
of the old policycoreutils package and pull in all packages from the
policycoreutils recipe.
---
 .../packagegroups/packagegroup-core-selinux.bb     |    4 +--
 .../packagegroup-selinux-policycoreutils.bb        |   36 ++++++++++++++++++++
 2 files changed, 37 insertions(+), 3 deletions(-)
 create mode 100644 recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 7cd7409..76863b0 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -19,9 +19,7 @@ RDEPENDS_${PN} = " \
 	libsemanage \
 	checkpolicy \
 	sepolgen \
-	policycoreutils \
-	policycoreutils-sandbox \
-	policycoreutils-python \
+	packagegroup-selinux-policycoreutils \
 	setools \
 	setools-console \
 	selinux-config \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
new file mode 100644
index 0000000..296a7e3
--- /dev/null
+++ b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
@@ -0,0 +1,36 @@
+DESCRIPTION = "SELinux policycoreutils packagegroup"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+PACKAGES = "\
+    ${PN} \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+RDEPENDS_${PN} = " \
+	policycoreutils-audit2allow \
+	policycoreutils-chcat \
+	policycoreutils-fixfiles \
+	policycoreutils-genhomedircon \
+	policycoreutils-loadpolicy \
+	policycoreutils-newrole \
+	policycoreutils-python \
+	policycoreutils-runinit \
+	policycoreutils-sandbox \
+	policycoreutils-secon \
+	policycoreutils-semanage \
+	policycoreutils-semodule \
+	policycoreutils-semodule-deps \
+	policycoreutils-semodule-expand \
+	policycoreutils-semodule-link \
+	policycoreutils-semodule-package \
+	policycoreutils-sepolgen-ifgen \
+	policycoreutils-sepolicy \
+	policycoreutils-sestatus \
+	policycoreutils-setfiles \
+	policycoreutils-setsebool \
+	system-config-selinux \
+	"
-- 
1.7.10.4


