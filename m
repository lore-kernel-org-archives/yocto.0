Return-Path: <hnzkfelix@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78B01E00C88; Wed, 30 May 2018 06:54:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_PSBL autolearn=no version=3.3.1
X-Spam-HAM-Report: *  2.7 RCVD_IN_PSBL RBL: Received via a relay in PSBL
	*      [220.181.12.18 listed in psbl.surriel.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 921 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 May 2018 06:54:14 PDT
Received: from m12-18.163.com (m12-18.163.com [220.181.12.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F15E009F8
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id; bh=EdtG+WZomV58pQ3mpB
	3LxdQNG2EUmTnppsqqmQ1y3wI=; b=hLlWzhblJWjYOjdAQY175QER/ya0DV1ORY
	n/jx91r034iZVpVXSZYq/76AIPambC23eXvo4pcULFdbT0so1nn2QS4B1rowZFtX
	yaHU18MaMd7dMo6lpzqxVR8BTc30xBW8YBXVhiCFjmiEtgcghlfRPcnfwHXDh1bm
	OkwSlfCuI=
Received: from localhost (unknown [42.120.237.116])
	by smtp14 (Coremail) with SMTP id EsCowAC3BSZiqQ5buPpXEA--.9298S2;
	Wed, 30 May 2018 21:38:51 +0800 (CST)
From: Jinliang Li <ljl150821@alibaba-inc.com>
To: yocto@yoctoproject.org
Date: Wed, 30 May 2018 21:38:30 +0800
Message-Id: <1527687510-64138-1-git-send-email-ljl150821@alibaba-inc.com>
X-Mailer: git-send-email 2.7.4
X-CM-TRANSID: EsCowAC3BSZiqQ5buPpXEA--.9298S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Xw4rWw1xZw4DAr15tr1DWrg_yoWfArc_t3
	sxKF18XryYyry8Ka4IyF4Fgw1Yvwn7JrZ8ua18G342qa17Grs8Aw1kCasa93Z8Xrsavr1U
	Gr1UK3sYqr4xWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0BnQUUUUUU==
X-Originating-IP: [42.120.237.116]
Sender: hnzkfelix@163.com
X-CM-SenderInfo: pkq2ywhhol5qqrwthudrp/xtbBZhRWc1aDwygDegABsR
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Cc: Jinliang Li <ljl150821@alibaba-inc.com>
Subject: [meta-security][PATCH] Fix build issue for apparmor kernel configuration.
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
X-List-Received-Date: Wed, 30 May 2018 13:54:16 -0000

Set the correct path of kernel configuration file in linux-yocto_4.%.bbappend
to fix the below build issue.
Fetcher failure for URL: 'file://apparmor.cfg'. Unable to fetch URL from any
source.

Signed-off-by: Jinliang Li <ljl150821@alibaba-inc.com>
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



