Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BD7BE01072; Thu, 24 Oct 2019 02:29:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44827E00E14
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 02:29:35 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id x9O9TXSM028735
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 24 Oct 2019 02:29:33 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Thu, 24 Oct 2019 02:29:33 -0700
From: <zhe.he@windriver.com>
To: <yocto@yoctoproject.org>, <joe_macdonald@mentor.com>
Date: Thu, 24 Oct 2019 17:29:31 +0800
Message-ID: <1571909371-431395-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-selinux][PATCH v2] kernel: Remove non-existing kernel option
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
X-List-Received-Date: Thu, 24 Oct 2019 09:30:57 -0000
Content-Type: text/plain

From: He Zhe <zhe.he@windriver.com>

CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE has been remove from mainline kernel
by the commit be6ec88f41ba ("selinux: Remove SECURITY_SELINUX_BOOTPARAM_VALUE").

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 recipes-kernel/linux/files/selinux.cfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/linux/files/selinux.cfg b/recipes-kernel/linux/files/selinux.cfg
index 2edd366..7d16dc5 100644
--- a/recipes-kernel/linux/files/selinux.cfg
+++ b/recipes-kernel/linux/files/selinux.cfg
@@ -23,7 +23,6 @@ CONFIG_SECURITYFS=y
 CONFIG_SECURITY_NETWORK=y
 CONFIG_SECURITY_SELINUX=y
 CONFIG_SECURITY_SELINUX_BOOTPARAM=y
-CONFIG_SECURITY_SELINUX_BOOTPARAM_VALUE=1
 CONFIG_SECURITY_SELINUX_DISABLE=y
 CONFIG_SECURITY_SELINUX_DEVELOP=y
 CONFIG_SECURITY_SELINUX_AVC_STATS=y
-- 
2.7.4


