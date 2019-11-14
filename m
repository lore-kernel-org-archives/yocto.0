Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA6ABE00E44; Wed, 13 Nov 2019 17:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 795C7E00E57
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAE1nV50016996
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:32 -0800
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:31 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:50 +0800
Message-ID: <20191114014901.22862-9-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 08/19] secilc: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:07 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/secilc_2.8.bb | 7 -------
 recipes-security/selinux/secilc_2.9.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/secilc_2.8.bb
 create mode 100644 recipes-security/selinux/secilc_2.9.bb

diff --git a/recipes-security/selinux/secilc_2.8.bb b/recipes-security/selinux/secilc_2.8.bb
deleted file mode 100644
index 89e0684..0000000
--- a/recipes-security/selinux/secilc_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
-
-SRC_URI[md5sum] = "a3c363545842aadc6645a94112b476e7"
-SRC_URI[sha256sum] = "cfe15f2e06b3013c9dfc46cf42234ff07fb61866c4c29d739eb8858f83b214d4"
diff --git a/recipes-security/selinux/secilc_2.9.bb b/recipes-security/selinux/secilc_2.9.bb
new file mode 100644
index 0000000..8207905
--- /dev/null
+++ b/recipes-security/selinux/secilc_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
+
+SRC_URI[md5sum] = "489cedf50fa277ce07765053ffcdb4d5"
+SRC_URI[sha256sum] = "73a1806e33a669e23545da2d35d0e5038714721f6bf71974eaa533b3ebde61b2"
-- 
2.17.1


