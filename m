Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F38DEE00AB3; Tue,  4 Sep 2018 17:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49936E00A4F
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w850IlFe026643
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:48 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:46 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:16 +0800
Message-ID: <1536106707-30781-6-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 05/16] checkpolicy: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:18:57 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/checkpolicy.inc    | 1 -
 recipes-security/selinux/checkpolicy_2.7.bb | 7 -------
 recipes-security/selinux/checkpolicy_2.8.bb | 7 +++++++
 3 files changed, 7 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_2.7.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.8.bb

diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/selinux/checkpolicy.inc
index 878c656..1d84ebb 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy.inc
@@ -11,7 +11,6 @@ LICENSE = "GPLv2+"
 
 DEPENDS += "libsepol bison-native flex-native"
 
-EXTRA_OEMAKE += "PREFIX=${D}" 
 EXTRA_OEMAKE += "LEX='flex'"
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
diff --git a/recipes-security/selinux/checkpolicy_2.7.bb b/recipes-security/selinux/checkpolicy_2.7.bb
deleted file mode 100644
index 90b8109..0000000
--- a/recipes-security/selinux/checkpolicy_2.7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "5c718eaad4d3015bd5665ffde77b50fd"
-SRC_URI[sha256sum] = "5413479f1dcde866c19896b4dbfec315d822aa431606e1d03c944408984c3201"
diff --git a/recipes-security/selinux/checkpolicy_2.8.bb b/recipes-security/selinux/checkpolicy_2.8.bb
new file mode 100644
index 0000000..05e738e
--- /dev/null
+++ b/recipes-security/selinux/checkpolicy_2.8.bb
@@ -0,0 +1,7 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "5d23a3209048c8cf70f3c13c4ce4245f"
+SRC_URI[sha256sum] = "9dec811c24b88e58c3bf741365eacf1dbb945531a2fcb8f284aacf68098194c8"
-- 
2.7.4


