Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E33DE007AD; Tue, 21 Feb 2017 22:52:46 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E929FE004D8
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 22:52:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v1M6qirC022037
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 22:52:45 -0800 (PST)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Tue, 21 Feb 2017 22:52:44 -0800
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 22 Feb 2017 14:44:46 +0800
Message-ID: <20170222064446.13162-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.8.3
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] systemd: no need to inherit enable-selinux
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
X-List-Received-Date: Wed, 22 Feb 2017 06:52:46 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The selinux PACKAGECONFIG is properly handled in
the recipe in oe-core, no need to inherit the
enable-selinux bbclass.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-core/systemd/systemd_%.bbappend | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-core/systemd/systemd_%.bbappend
index 8d9029b..f1bdaf8 100644
--- a/recipes-core/systemd/systemd_%.bbappend
+++ b/recipes-core/systemd/systemd_%.bbappend
@@ -1,2 +1 @@
 inherit enable-audit
-inherit enable-selinux
-- 
2.8.3


