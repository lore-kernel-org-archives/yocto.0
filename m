Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AD1CE00AA9; Thu, 23 Feb 2017 01:29:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35F42E00A4F
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 01:29:11 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v1N9T8KG012153
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 01:29:10 -0800
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 23 Feb 2017 01:29:07 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 23 Feb 2017 04:29:06 -0500
Message-ID: <1487842146-74243-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] selinux-init: start service after local-fs.target
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
X-List-Received-Date: Thu, 23 Feb 2017 09:29:14 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Fixing labels after local-fs.target to make sure all mounted
filesystems labeled correctly.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/selinux-init/selinux-init.service | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/selinux/selinux-init/selinux-init.service b/recipes-security/selinux/selinux-init/selinux-init.service
index 93cc6ce..49c6d98 100644
--- a/recipes-security/selinux/selinux-init/selinux-init.service
+++ b/recipes-security/selinux/selinux-init/selinux-init.service
@@ -1,6 +1,7 @@
 [Unit]
 Description=SELinux init service loading
 DefaultDependencies=no
+After=local-fs.target
 Before=sysinit.target
 
 [Service]
-- 
2.8.1


