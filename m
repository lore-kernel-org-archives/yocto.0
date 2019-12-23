Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.829.1577089361951362127
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 00:22:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8E44E0122A; Mon, 23 Dec 2019 00:22:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6DDE01162
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2019 00:22:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBN8MegP013038
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 23 Dec 2019 00:22:40 -0800 (PST)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 23 Dec
 2019 00:22:39 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH 5/6] refpolicy: add UPSTREAM_CHECK_GITTAGREGEX
Date: Mon, 23 Dec 2019 16:21:51 +0800
Message-ID: <20191223082152.7706-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191223082152.7706-1-yi.zhao@windriver.com>
References: <20191223082152.7706-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Add UPSTREAM_CHECK_GITTAGREGEX to make devtool check-upgrade-status
works.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/refpolicy/refpolicy_2.20190201.inc | 2 ++
 recipes-security/refpolicy/refpolicy_git.inc        | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy_2.20190201.inc b/recipes-security/refpolicy/refpolicy_2.20190201.inc
index 78c6e74..4030b36 100644
--- a/recipes-security/refpolicy/refpolicy_2.20190201.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20190201.inc
@@ -2,6 +2,8 @@ SRC_URI = "https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE
 SRC_URI[md5sum] = "babb0d5ca2ae333631d25392b2b3ce8d"
 SRC_URI[sha256sum] = "ed620dc91c4e09eee6271b373f7c61a364a82ea57bd2dc86ca1f7075304e2843"
 
+UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
+
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20190201:"
 
 include refpolicy_common.inc
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 8aeaf27..8de07c0 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -4,6 +4,8 @@ SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=git;branch=mas
 
 SRCREV_refpolicy ?= "df696a325404b84c2c931c85356510005e5e6916"
 
+UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
+
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
 
 include refpolicy_common.inc
-- 
2.17.1

