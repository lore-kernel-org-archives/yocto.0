Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 346E9E00C28; Tue,  4 Sep 2018 17:19:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 483B0E00B45
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:19:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w850JH59026679
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:19:17 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:19:15 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:25 +0800
Message-ID: <1536106707-30781-15-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 14/16] selinux-gui: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:19:27 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-gui_2.7.bb | 7 -------
 recipes-security/selinux/selinux-gui_2.8.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-gui_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-gui_2.8.bb

diff --git a/recipes-security/selinux/selinux-gui_2.7.bb b/recipes-security/selinux/selinux-gui_2.7.bb
deleted file mode 100644
index 3531591..0000000
--- a/recipes-security/selinux/selinux-gui_2.7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "f3555cb50a9e67b42bc917ede1982c7d"
-SRC_URI[sha256sum] = "693fb3347041b5a2273c52c33be0a256b109e60f2039ae1d7e90ba8a2ec0324f"
diff --git a/recipes-security/selinux/selinux-gui_2.8.bb b/recipes-security/selinux/selinux-gui_2.8.bb
new file mode 100644
index 0000000..2c0fcd8
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui_2.8.bb
@@ -0,0 +1,7 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "52000c14ffa86840220915bd1d777845"
+SRC_URI[sha256sum] = "17acd3004f01f92b288cc1322317d7964f5039fb26ba1542b6713a7147a2351d"
-- 
2.7.4


