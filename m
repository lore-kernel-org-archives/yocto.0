Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EA73E00C25; Wed, 16 May 2018 23:02:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD2BE00831
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 23:01:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w4H61wcg015282
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 23:01:59 -0700 (PDT)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 16 May 2018 23:01:51 -0700
From: "Hongzhi.Song" <hongzhi.song@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 May 2018 23:01:51 -0700
Message-ID: <20180517060151.6358-1-hongzhi.song@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-systemdev][PATCH] turbostat: pass in LDFLAGS when building the recipe
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
X-List-Received-Date: Thu, 17 May 2018 06:02:00 -0000
Content-Type: text/plain

issue: do_package_qa: QA Issue: No GNU_HASH in the elf binary
       do_package_qa: QA run found fatal errors. Please consider fixing them.
       do_package_qa: Function failed: do_package_qa

This indicates that binaries produced when building the recipe have
not been linked with the LDFLAGS options provided by the build system.

Passing in LDFLAGS using TARGET_CC_ARCH can fix it.

Signed-off-by: Hongzhi.Song <hongzhi.song@windriver.com>
---
 recipes-kernel/turbostat/turbostat.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-kernel/turbostat/turbostat.bb b/recipes-kernel/turbostat/turbostat.bb
index e55ec72..f4614b4 100644
--- a/recipes-kernel/turbostat/turbostat.bb
+++ b/recipes-kernel/turbostat/turbostat.bb
@@ -49,3 +49,5 @@ do_install() {
 python do_package_prepend() {
     d.setVar('PKGV', d.getVar("KERNEL_VERSION", True).split("-")[0])
 }
+
+TARGET_CC_ARCH += "${LDFLAGS}"
-- 
2.11.0


