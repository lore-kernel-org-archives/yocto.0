Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46EA0E00571; Thu,  5 Jan 2017 00:23:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC688E00480
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v058NXJZ006603
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:33 -0800
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:32 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:25 -0800
Message-ID: <11bc5999e93ba35bf9bed84869bf101c7109b929.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1483601828.git.wenzong.fan@windriver.com>
References: <cover.1483601828.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 8/9] secilc: uprev to 2.6 (20161014)
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:34 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/secilc_2.5.bb | 7 -------
 recipes-security/selinux/secilc_2.6.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/secilc_2.5.bb
 create mode 100644 recipes-security/selinux/secilc_2.6.bb

diff --git a/recipes-security/selinux/secilc_2.5.bb b/recipes-security/selinux/secilc_2.5.bb
deleted file mode 100644
index 56e0086..0000000
--- a/recipes-security/selinux/secilc_2.5.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20160223.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
-
-SRC_URI[md5sum] = "af73267cccd0e46cb455d5702565cd41"
-SRC_URI[sha256sum] = "4303d911c06ee5c207e00f778ca786c1a6efa2554a562f5d014dbc0d2f4cc4a4"
diff --git a/recipes-security/selinux/secilc_2.6.bb b/recipes-security/selinux/secilc_2.6.bb
new file mode 100644
index 0000000..0f84b0e
--- /dev/null
+++ b/recipes-security/selinux/secilc_2.6.bb
@@ -0,0 +1,7 @@
+include selinux_20161014.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=5fb82e8deb357d4e5fd8f3fed01d2f38"
+
+SRC_URI[md5sum] = "38c06fb8d97206a12016b4516ee23efc"
+SRC_URI[sha256sum] = "a84838c15bb7b0141238b48294b15ff0e1618107f547541a0067d1ddabcc9502"
-- 
2.7.4


