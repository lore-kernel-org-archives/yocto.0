Return-Path: <jinliang.li@linux.alibaba.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 049A7E015B0; Wed,  6 Jun 2018 07:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [115.124.30.132 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jun 2018 07:13:25 PDT
Received: from out30-132.freemail.mail.aliyun.com
	(out30-132.freemail.mail.aliyun.com [115.124.30.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F689E00B57
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 07:13:24 -0700 (PDT)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R331e4; CH=green;
	FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07486;
	MF=jinliang.li@linux.alibaba.com; NM=1; PH=DS; RN=2; SR=0;
	TI=SMTPD_---0T2IXHW1_1528294087; 
Received: from localhost(mailfrom:jinliang.li@linux.alibaba.com
	fp:SMTPD_---0T2IXHW1_1528294087) by smtp.aliyun-inc.com(127.0.0.1);
	Wed, 06 Jun 2018 22:08:13 +0800
From: Jinliang Li <jinliang.li@linux.alibaba.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jun 2018 22:06:52 +0800
Message-Id: <1528294013-17960-2-git-send-email-jinliang.li@linux.alibaba.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1528294013-17960-1-git-send-email-jinliang.li@linux.alibaba.com>
References: <1528294013-17960-1-git-send-email-jinliang.li@linux.alibaba.com>
X-Mailman-Approved-At: Thu, 07 Jun 2018 08:19:20 -0700
Cc: Jinliang Li <jinliang.li@linux.alibaba.com>
Subject: [meta-security][PATCH 1/2] Fix build issue for apparmor kernel configuration
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
X-List-Received-Date: Wed, 06 Jun 2018 14:13:26 -0000

Set the correct path of kernel configuration file in linux-yocto_4.%.bbappend
to fix the build issue, which is "Fetcher failure for URL: 'file://apparmor.cfg'.
Unable to fetch URL from any source."

Signed-off-by: Jinliang Li <jinliang.li@linux.alibaba.com>
---
 recipes-kernel/linux/linux-yocto_4.%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
index 9d68c99..067be8f 100644
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.12:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-- 
2.7.4


