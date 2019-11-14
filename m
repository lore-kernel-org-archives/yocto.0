Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21CA5E00E54; Wed, 13 Nov 2019 17:50:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BC7BE00E4F
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1nsXj014469
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:54 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:54 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:57 +0800
Message-ID: <20191114014901.22862-16-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 15/19] selinux-gui: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:11 -0000
Content-Type: text/plain

* Switch to python3

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-gui.inc    | 2 +-
 recipes-security/selinux/selinux-gui_2.8.bb | 7 -------
 recipes-security/selinux/selinux-gui_2.9.bb | 7 +++++++
 3 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-gui_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-gui_2.9.bb

diff --git a/recipes-security/selinux/selinux-gui.inc b/recipes-security/selinux/selinux-gui.inc
index 1096f3f..725eb23 100644
--- a/recipes-security/selinux/selinux-gui.inc
+++ b/recipes-security/selinux/selinux-gui.inc
@@ -6,7 +6,7 @@ Policy Generation Tool (selinux-polgengui)"
 SECTION = "base"
 LICENSE = "GPLv2+"
 
-RDEPENDS_${PN} += "python"
+RDEPENDS_${PN} += "python3-core"
 
 FILES_${PN} += " \
         ${datadir}/system-config-selinux/* \
diff --git a/recipes-security/selinux/selinux-gui_2.8.bb b/recipes-security/selinux/selinux-gui_2.8.bb
deleted file mode 100644
index 2c0fcd8..0000000
--- a/recipes-security/selinux/selinux-gui_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "52000c14ffa86840220915bd1d777845"
-SRC_URI[sha256sum] = "17acd3004f01f92b288cc1322317d7964f5039fb26ba1542b6713a7147a2351d"
diff --git a/recipes-security/selinux/selinux-gui_2.9.bb b/recipes-security/selinux/selinux-gui_2.9.bb
new file mode 100644
index 0000000..0bb051c
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "1bfe5eeb861f8563a7b397ab8530ab52"
+SRC_URI[sha256sum] = "bbd9e1799cc0c22d64c815c3033a54393f6f84947ff2841a4df60ded5eee0510"
-- 
2.17.1


