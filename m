Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8051.1576656873068942254
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 00:14:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EE32E01230; Wed, 18 Dec 2019 00:14:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75946E0107E
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2019 00:14:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBI8EPht021197
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 18 Dec 2019 00:14:26 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 18 Dec
 2019 00:14:25 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>,
        <mark.hatle@kernel.crashing.org>
Subject: [meta-selinux][PATCH] MAINTAINERS: update maintainer
Date: Wed, 18 Dec 2019 16:14:23 +0800
Message-ID: <20191218081423.11074-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Add Yi Zhao as the maintainer.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1a19891..36c451f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -30,6 +30,6 @@ F:	classes
 F:	recipes-*
 
 COMMON
-M:	Mark Hatle <mark.hatle@kernel.crashing.org>
+M:	Yi Zhao <yi.zhao@windriver.com>
 F:	conf
 F:	recipes-*
-- 
2.17.1

