Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1C64E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 12:05:57 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Vggh0-0000IA-4x; Wed, 13 Nov 2013 20:05:39 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VgghF-0004an-CH; Wed, 13 Nov 2013 20:05:53 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 20:05:53 +0000
Message-Id: <1384373153-17622-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=ALL_TRUSTED,URI_HEX
	autolearn=no version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][RFC v2] refpolicy: Add generic refpolicy recipe and make policy type configurable.
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
X-List-Received-Date: Wed, 13 Nov 2013 20:05:58 -0000

This is a fix up for my previous RFC. I've cleaned up an error with some \
variable use. The intent remains the same:

This RFC is a significant departure from the way the policy packages are
currently set up. The noteworthy differences are:
1) the POLICY_TYPE variable can be set as configuration outside the policy recipe
2) a single refpolicy recipe can be used to build all 3 policy types
3) DEFAULT_POLICY from selinux-config has been changed to be the same POLICY_TYPE variable as the policy
4) refpolicy depends on the config and sets the POLICY_TYPE accordingly

This approach was taken to allow the use of a policy type beyond the default
 MLS. I've left the other refpolicy-* recipes in tact but if this approach is
acceptable they could be removed if we're willing to accept the limitation
that only one policy may be installed on a given image. If this limitation
isn't acceptable then they can be left as is.

After thinking about this a bit I've realized that the same effect can likely
be achieved using the virtual provider mechanism. If this approach would be
preferred I'm happy to whip up a prototype.

Comments and input would be appreciated.

Regards,
- Philip

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../packagegroups/packagegroup-selinux-minimal.bb      |    3 +--
 recipes-security/refpolicy/refpolicy_2.20130424.bb     |   16 ++++++++++++++++
 recipes-security/selinux/selinux-config_0.1.bb         |    4 ++--
 3 files changed, 19 insertions(+), 4 deletions(-)
 create mode 100644 recipes-security/refpolicy/refpolicy_2.20130424.bb

diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 072320d..af29da1 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -13,6 +13,5 @@ ALLOW_EMPTY_${PN} = "1"
 RDEPENDS_${PN} = "\
 	policycoreutils-semodule \
 	policycoreutils-sestatus \
-	selinux-config \
-	refpolicy-mls \
+	refpolicy \
 "
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.bb b/recipes-security/refpolicy/refpolicy_2.20130424.bb
new file mode 100644
index 0000000..f1fa2f8
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.bb
@@ -0,0 +1,16 @@
+SUMMARY = "The SELinux reference policy."
+DESCRIPTION = "\
+This is the reference policy for the SELinux mandatory access control \
+system. There are 3 supported policy types: standard, MCS and MLS. The \
+standard policy is the most simple of the three providing the standard \
+type enforcement policy. The MCS policy adds an additional element to the \
+SELinux label called a category. Finally the MLS variant allows giving data \
+labels such as \"Top Secret\" and preventing such data from leaking to \
+processes or files with lower classification. \
+"
+
+PR = "r0"
+POLICY_TYPE ??= "mls"
+RDEPENDS_${PN} = "selinux-config"
+
+include refpolicy_${PV}.inc
diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
index 27d9995..066581e 100644
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ b/recipes-security/selinux/selinux-config_0.1.bb
@@ -1,4 +1,4 @@
-DEFAULT_POLICY = "mls"
+POLICY_TYPE ??= "mls"
 
 SUMMARY = "SELinux configuration"
 DESCRIPTION = "\
@@ -45,7 +45,7 @@ SELINUX=enforcing
 # SELINUXTYPE= can take one of these two values:
 #     standard - Standard Security protection.
 #     mls - Multi Level Security protection.
-SELINUXTYPE=${DEFAULT_POLICY}
+SELINUXTYPE=${POLICY_TYPE}
 " > ${WORKDIR}/config
 	install -d ${D}/${sysconfdir}/selinux
 	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
-- 
1.7.10.4


