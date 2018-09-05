Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 462F2E00B45; Tue,  4 Sep 2018 17:18:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29477E00A86
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w850Ipt0017434
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:51 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:49 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:17 +0800
Message-ID: <1536106707-30781-7-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 06/16] secilc: uprev to 2.8 (20180524)
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
 recipes-security/selinux/secilc_2.7.bb | 7 -------
 recipes-security/selinux/secilc_2.8.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/secilc_2.7.bb
 create mode 100644 recipes-security/selinux/secilc_2.8.bb

diff --git a/recipes-security/selinux/secilc_2.7.bb b/recipes-security/selinux/secilc_2.7.bb
deleted file mode 100644
index 611f165..0000000
--- a/recipes-security/selinux/secilc_2.7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
-
-SRC_URI[md5sum] = "301a4e477bc7214be16558f7c2dcbcff"
-SRC_URI[sha256sum] = "9ec63dd64645c718f66d33c96299adfe0445b0aa62d7ac8c642f873c570609c5"
diff --git a/recipes-security/selinux/secilc_2.8.bb b/recipes-security/selinux/secilc_2.8.bb
new file mode 100644
index 0000000..89e0684
--- /dev/null
+++ b/recipes-security/selinux/secilc_2.8.bb
@@ -0,0 +1,7 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
+
+SRC_URI[md5sum] = "a3c363545842aadc6645a94112b476e7"
+SRC_URI[sha256sum] = "cfe15f2e06b3013c9dfc46cf42234ff07fb61866c4c29d739eb8858f83b214d4"
-- 
2.7.4


