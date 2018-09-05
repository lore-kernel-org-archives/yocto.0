Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE298E00B3E; Tue,  4 Sep 2018 17:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AC51E00ABE
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:19:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w850JAYF017440
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:19:10 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:19:08 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:23 +0800
Message-ID: <1536106707-30781-13-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 12/16] semodule-utils: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:19:12 -0000
Content-Type: text/plain

Remove package semodule-deps as it had been removed upstream.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/semodule-utils.inc    | 2 --
 recipes-security/selinux/semodule-utils_2.7.bb | 7 -------
 recipes-security/selinux/semodule-utils_2.8.bb | 7 +++++++
 3 files changed, 7 insertions(+), 9 deletions(-)
 delete mode 100644 recipes-security/selinux/semodule-utils_2.7.bb
 create mode 100644 recipes-security/selinux/semodule-utils_2.8.bb

diff --git a/recipes-security/selinux/semodule-utils.inc b/recipes-security/selinux/semodule-utils.inc
index 23176e5..23cbd14 100644
--- a/recipes-security/selinux/semodule-utils.inc
+++ b/recipes-security/selinux/semodule-utils.inc
@@ -12,12 +12,10 @@ RDEPENDS_${PN}-dev = ""
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 PACKAGES =+ "\
-        ${PN}-semodule-deps \
         ${PN}-semodule-expand \
         ${PN}-semodule-link \
         ${PN}-semodule-package \
 "
-FILES_${PN}-semodule-deps += "${bindir}/semodule_deps"
 FILES_${PN}-semodule-expand += "${bindir}/semodule_expand"
 FILES_${PN}-semodule-link += "${bindir}/semodule_link"
 FILES_${PN}-semodule-package += "\
diff --git a/recipes-security/selinux/semodule-utils_2.7.bb b/recipes-security/selinux/semodule-utils_2.7.bb
deleted file mode 100644
index fbb88bf..0000000
--- a/recipes-security/selinux/semodule-utils_2.7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "678e3a5225f9645d40fd9d13bbaa156f"
-SRC_URI[sha256sum] = "90c98b3362a43b4da2a51a9176820a56f3e615225e23e3395bc566c4490786ba"
diff --git a/recipes-security/selinux/semodule-utils_2.8.bb b/recipes-security/selinux/semodule-utils_2.8.bb
new file mode 100644
index 0000000..c56f776
--- /dev/null
+++ b/recipes-security/selinux/semodule-utils_2.8.bb
@@ -0,0 +1,7 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "51c69e612481ce971e2ae825139d2ca0"
+SRC_URI[sha256sum] = "44f59c13070c637440b143ceab4dfe1efb9018b1e47828dd8789def74c1ccadf"
-- 
2.7.4


