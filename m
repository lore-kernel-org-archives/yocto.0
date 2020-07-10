Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5585.1594364650585560836
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2020 00:04:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCBA8E01E40; Fri, 10 Jul 2020 00:04:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD761E01E3B
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2020 00:04:07 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.75,334,1589212800"; 
   d="scan'208";a="96047697"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 10 Jul 2020 15:04:05 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 291824CE4BDE
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2020 15:04:02 +0800 (CST)
Received: from localhost.localdomain (10.167.225.35) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Fri, 10 Jul 2020 15:04:02 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Subject: [yocto] [meta-security][PATCH] bastille: Deleted redundant inherit to fix error when enable multilib.
Date: Fri, 10 Jul 2020 15:04:03 +0800
Message-ID: <1594364643-125858-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.225.35]
X-ClientProxiedBy: G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.203) To
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206)
X-yoursite-MailScanner-ID: 291824CE4BDE.A873F
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Content-Type: text/plain

There is no need to inherit module-base. Because this inherit will stop
bastille to build to lib32-bastille.

Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>
---
 recipes-security/bastille/bastille_3.2.1.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index e9accb5..0290cae 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -9,8 +9,6 @@ DEPENDS = "virtual/kernel"
 RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
 FILES_${PN} += "/run/lock/subsys/bastille"
 
-inherit module-base
-
 SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3.2.1/Bastille-3.2.1.tar.bz2 \
            file://AccountPermission.pm \
            file://FileContent.pm \
-- 
2.17.1



