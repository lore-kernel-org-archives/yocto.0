Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6681DE00AD8; Sun,  3 Apr 2016 17:22:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BE5E00AD7
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 17:22:03 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1amsFr-0002qF-IJ; Mon, 04 Apr 2016 00:20:33 +0000
From: Philip Tricca <flihp@twobit.us>
To: mark.hatle@windriver.com, Joe_MacDonald@mentor.com, yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 00:21:33 +0000
Message-Id: <1459729295-79553-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1459729295-79553-1-git-send-email-flihp@twobit.us>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 1/3] refpolicy: Setup virtual/refpolicy provider.
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
X-List-Received-Date: Mon, 04 Apr 2016 00:22:06 -0000

This allows us to provide a default policy through the
PREFERRED_PROVIDER mechanism for each of the example distro configs.
Consumers of meta-selinux will be able to override this at the config
level instead of having to depend on a specific policy package. We do
lose the ability install more than one policy package but this falls
in line with the embedded nature of the project.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 conf/distro/oe-selinux.conf                                    | 1 +
 recipes-security/packagegroups/packagegroup-core-selinux.bb    | 3 +--
 recipes-security/packagegroups/packagegroup-selinux-minimal.bb | 2 +-
 recipes-security/refpolicy/refpolicy_common.inc                | 3 +++
 recipes-security/selinux/selinux-config_0.1.bb                 | 3 +--
 5 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/conf/distro/oe-selinux.conf b/conf/distro/oe-selinux.conf
index 6e55a32..0011d45 100644
--- a/conf/distro/oe-selinux.conf
+++ b/conf/distro/oe-selinux.conf
@@ -2,3 +2,4 @@ DISTRO = "oe-selinux"
 DISTROOVERRIDES .= ":selinux"
 
 DISTRO_FEATURES_append = " acl xattr pam selinux"
+PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-mls"
diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index a2480a3..62c5a76 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -26,7 +26,6 @@ RDEPENDS_${PN} = " \
 	selinux-autorelabel \
 	selinux-init \
 	selinux-labeldev \
-	refpolicy-standard \
-	refpolicy-mls \
+	virtual/refpolicy \
 	coreutils \
 	"
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 34c5f7c..87ae686 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -23,5 +23,5 @@ RDEPENDS_${PN} = "\
 	policycoreutils-setfiles \
 	selinux-config \
 	selinux-labeldev \
-	refpolicy-mls \
+	virtual/refpolicy \
 "
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 67d0426..ba887e4 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -3,6 +3,9 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
+PROVIDES += "virtual/refpolicy"
+RPROVIDES_${PN} += "virtual/refpolicy"
+
 # Specific config files for Poky
 SRC_URI += "file://customizable_types \
             file://setrans-mls.conf \
diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
index 37fe4b7..e902e98 100644
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ b/recipes-security/selinux/selinux-config_0.1.bb
@@ -1,4 +1,3 @@
-DEFAULT_POLICY ??= "mls"
 DEFAULT_ENFORCING ??= "enforcing"
 
 SUMMARY = "SELinux configuration"
@@ -30,7 +29,7 @@ SELINUX=${DEFAULT_ENFORCING}
 #     mls - Multi Level Security protection.
 #     targeted - Targeted processes are protected.
 #     mcs - Multi Category Security protection.
-SELINUXTYPE=${DEFAULT_POLICY}
+SELINUXTYPE=${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy", False)[len("refpolicy-"):]}
 " > ${WORKDIR}/config
 	install -d ${D}/${sysconfdir}/selinux
 	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
-- 
2.1.4


