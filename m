Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.6636.1583466598632469315
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 19:49:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: zhe@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA4C0E017D0; Thu,  5 Mar 2020 19:49:57 -0800 (PST)
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
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D8FE017CE
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2020 19:49:56 -0800 (PST)
Received: from ala-lpggp4.wrs.com (ala-lpggp4.wrs.com [147.11.103.217])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 0263ngJU013374
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 5 Mar 2020 19:49:42 -0800 (PST)
Received: (from zhe@localhost)
	by ala-lpggp4.wrs.com (8.13.8/8.13.8/Submit) id 0263nfQL006437;
	Thu, 5 Mar 2020 19:49:41 -0800
From: "He Zhe" <zhe.he@windriver.com>
To: yocto@yoctoproject.org, Adrian.Dudau@enea.com, alexandru.vaduva@linux.com,
        joe_macdonald@mentor.com
Subject: [meta-cgl][PATCH] kernel: Rename linux-yocto bbappend without major version
Date: Thu,  5 Mar 2020 19:49:41 -0800
Message-Id: <1583466581-6396-1-git-send-email-zhe.he@windriver.com>
X-Mailer: git-send-email 2.7.4

We do not necessarily match the major version of kernel recipe and update
it every time oe-core upgrades kernel.

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 .../linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend}            | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename meta-cgl-common/recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend} (100%)

diff --git a/meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-cgl-common/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 100%
rename from meta-cgl-common/recipes-kernel/linux/linux-yocto_4.%.bbappend
rename to meta-cgl-common/recipes-kernel/linux/linux-yocto_%.bbappend
-- 
2.7.4

