Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93DF7E00510; Thu,  5 Jan 2017 00:23:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81CD9E00405
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v058NVjo003127
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:31 -0800 (PST)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:30 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:22 -0800
Message-ID: <f1f932ca6939ca03989280372fdf130bb49a3c02.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1483601828.git.wenzong.fan@windriver.com>
References: <cover.1483601828.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 5/9] checkpolicy: uprev to 2.6 (20161014)
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/checkpolicy_2.5.bb | 7 -------
 recipes-security/selinux/checkpolicy_2.6.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_2.5.bb
 create mode 100644 recipes-security/selinux/checkpolicy_2.6.bb

diff --git a/recipes-security/selinux/checkpolicy_2.5.bb b/recipes-security/selinux/checkpolicy_2.5.bb
deleted file mode 100644
index c603d52..0000000
--- a/recipes-security/selinux/checkpolicy_2.5.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20160223.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "a8099a2a36de32327abf681159027c58"
-SRC_URI[sha256sum] = "33af9f3eb19135a7e6536ecd3fbb9686323000016cd51eb88346346ed7546001"
\ No newline at end of file
diff --git a/recipes-security/selinux/checkpolicy_2.6.bb b/recipes-security/selinux/checkpolicy_2.6.bb
new file mode 100644
index 0000000..f67c150
--- /dev/null
+++ b/recipes-security/selinux/checkpolicy_2.6.bb
@@ -0,0 +1,7 @@
+include selinux_20161014.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "2b581f8fe8eb8f55f111088e15d76c3a"
+SRC_URI[sha256sum] = "0bebd18688ca8027b1b3b4ff1532c0626f1fe49883ae6cb74d9d385940e74157"
-- 
2.7.4


