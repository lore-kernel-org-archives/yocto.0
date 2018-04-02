Return-Path: <kai.kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6065FE00CFB; Sun,  1 Apr 2018 23:11:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8BFEE00C54
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2018 23:11:12 -0700 (PDT)
Received: from ala-blade48.wrs.com (ala-blade48.wrs.com [147.11.105.68])
	by mail.windriver.com (8.15.2/8.15.1) with SMTP id w326BAZ3023925;
	Sun, 1 Apr 2018 23:11:10 -0700 (PDT)
Received: by ala-blade48.wrs.com (sSMTP sendmail emulation);
	Sun, 01 Apr 2018 23:11:10 -0700
From: Kai Kang <kai.kang@windriver.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Apr 2018 23:11:05 -0700
Message-Id: <20180402061106.17749-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180402061106.17749-1-kai.kang@windriver.com>
References: <20180402061106.17749-1-kai.kang@windriver.com>
Subject: [PATCH 1/2] enable-audit.bbclass: remove implement of packageconfig audit
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
X-List-Received-Date: Mon, 02 Apr 2018 06:11:13 -0000

enable-audit.bbclass is only used by systemd. And systemd has adapted to
use build tool meson and implement PACKAGECONFIG audit in recipe file of
systemd in oe-core.

So remove implement of PACKAGECONFIG audit from enable-audit.bbclass.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 classes/enable-audit.bbclass | 1 -
 1 file changed, 1 deletion(-)

diff --git a/classes/enable-audit.bbclass b/classes/enable-audit.bbclass
index 5820a38..4538b0b 100644
--- a/classes/enable-audit.bbclass
+++ b/classes/enable-audit.bbclass
@@ -2,4 +2,3 @@
 inherit selinux
 
 PACKAGECONFIG_append = " ${@target_selinux(d, 'audit')}"
-PACKAGECONFIG[audit] = "--enable-audit,--disable-audit,audit,"
-- 
2.11.0


