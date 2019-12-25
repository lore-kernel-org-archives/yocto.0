Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.10550.1577255943632281657
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 22:39:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F49E011C2; Tue, 24 Dec 2019 22:39:03 -0800 (PST)
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
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4336CE003E1
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 22:39:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBP6c1Fo008479
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 24 Dec 2019 22:38:12 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 24 Dec
 2019 22:37:51 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH 1/2] libselinux-python: add DEPENDS on libpcre and libsepol
Date: Wed, 25 Dec 2019 14:37:48 +0800
Message-ID: <20191225063749.21401-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

We encountered a libselinux-python compile error when bitbake world
without selinux DISTRO_FEATURES:
In file included from label_file.h:16,
                 from label_file.c:24:
regex.h:10:10: fatal error: pcre.h: No such file or directory
   10 | #include <pcre.h>
      |          ^~~~~~~~
compilation terminated.

Add missing DEPENDS on libpcre and libsepol.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux-python.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-security/selinux/libselinux-python.inc
index 24407e8..9f10e15 100644
--- a/recipes-security/selinux/libselinux-python.inc
+++ b/recipes-security/selinux/libselinux-python.inc
@@ -9,7 +9,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/libselinux:"
 
 inherit python3-dir
 
-DEPENDS += "python3 swig-native"
+DEPENDS += "python3 swig-native libpcre libsepol"
 RDEPENDS_${PN} += "libselinux python3-core python3-shell"
 
 def get_policyconfigarch(d):
-- 
2.17.1

