Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.10508.1594099843267583260
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 22:30:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAFA2E01E16; Mon,  6 Jul 2020 22:30:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D189E01E14
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2020 22:30:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.75,321,1589212800"; 
   d="scan'208";a="95886560"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 07 Jul 2020 13:30:34 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id E04084CE4BD0;
	Tue,  7 Jul 2020 13:30:33 +0800 (CST)
Received: from localhost.localdomain (10.167.225.35) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 7 Jul 2020 13:30:33 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
CC: <akuster808@gmail.com>, Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
Subject: [yocto] [meta-security][PATCH] ccs-tools:Fix build error when enable multilib.
Date: Tue, 7 Jul 2020 13:30:10 +0800
Message-ID: <1594099810-69294-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.35]
X-ClientProxiedBy: G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.203) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: E04084CE4BD0.A76E4
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Content-Type: text/plain

ERROR: lib32-ccs-tools-1.8.4-r0 do_install: oe_runmake failed
ERROR: lib32-ccs-tools-1.8.4-r0 do_install: Execution of
'/build-armv8/tmp/work/armv7ahf-neon-mllib32-linux-gnueabi/lib32-ccs-tools/1.8.4-r0/temp/run.do_install.22368'
failed with exit code 1:
make: *** No rule to make target 'install'.  Stop.
WARNING: exit code 1 from a shell command.

Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
---
 recipes-mac/ccs-tools/ccs-tools_1.8.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
index 2e37c0b..79af6a5 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.4.bb
@@ -13,7 +13,7 @@ SRC_URI = "http://osdn.dl.sourceforge.jp/tomoyo/49693/${BPN}-${PV}-${DS}.tar.gz"
 SRC_URI[md5sum] = "eeee8eb96a7680bfa9c8f6de55502c44"
 SRC_URI[sha256sum] = "c358b80a2ea77a9dda79dc2a056dae3acaf3a72fcb8481cfb1cd1f16746324b4"
 
-S = "${WORKDIR}/${PN}"
+S = "${WORKDIR}/${BPN}"
 
 inherit features_check
 
-- 
2.17.1



