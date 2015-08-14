Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF47EE0095C; Fri, 14 Aug 2015 05:45:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 5D592E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 05:45:28 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 14 Aug 2015 14:45:26 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id C780228BA20;
	Fri, 14 Aug 2015 14:45:26 +0200 (CEST)
From: "Maxin B. John" <maxin.john@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Aug 2015 14:45:20 +0200
Message-ID: <1439556320-37622-1-git-send-email-maxin.john@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: Josep Puigdemont <josep.puigdemont@enea.com>
Subject: [meta-selinux][PATCH] selinux-config: make DEFAULT_POLICY and DEFAULT_ENFORCING configurable
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
X-List-Received-Date: Fri, 14 Aug 2015 12:45:47 -0000
Content-Type: text/plain

From: Josep Puigdemont <josep.puigdemont@enea.com>

Make DEFAULT_POLICY and DEFAULT_ENFORCING configurations more flexible.

Signed-off-by: Maxin B. John <maxin.john@enea.com>
---
 recipes-security/selinux/selinux-config_0.1.bb | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
index 98f6d5f..f77b490 100644
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ b/recipes-security/selinux/selinux-config_0.1.bb
@@ -1,15 +1,15 @@
-DEFAULT_POLICY = "mls"
-DEFAULT_ENFORCING = "enforcing"
+DEFAULT_POLICY ??= "mls"
+DEFAULT_ENFORCING ??= "enforcing"
 
 SUMMARY = "SELinux configuration"
 DESCRIPTION = "\
-This is the configuration files for SELinux on WRLinux system.  \
+SELinux configuration files for Yocto. \
 "
 
 SECTION = "base"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r3"
+PR = "r4"
 
 S = "${WORKDIR}"
 
@@ -37,9 +37,11 @@ do_install () {
 #     permissive - SELinux prints warnings instead of enforcing.
 #     disabled - No SELinux policy is loaded.
 SELINUX=${DEFAULT_ENFORCING}
-# SELINUXTYPE= can take one of these two values:
+# SELINUXTYPE= can take one of these values:
 #     standard - Standard Security protection.
 #     mls - Multi Level Security protection.
+#     targeted - Targeted processes are protected.
+#     mcs - Multi Category Security protection.
 SELINUXTYPE=${DEFAULT_POLICY}
 " > ${WORKDIR}/config
 	install -d ${D}/${sysconfdir}/selinux
-- 
1.9.1


