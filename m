Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.10380.1577255943640175106
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 22:39:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45097E011C0; Tue, 24 Dec 2019 22:39:03 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C57CE011B6
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 22:39:01 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xBP6c1Fp008479
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 24 Dec 2019 22:38:28 -0800
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 24 Dec
 2019 22:38:24 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH 2/2] setools: add DEPENDS on libselinux
Date: Wed, 25 Dec 2019 14:37:49 +0800
Message-ID: <20191225063749.21401-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191225063749.21401-1-yi.zhao@windriver.com>
References: <20191225063749.21401-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

We encountered a setools compile error when bitbake world without
selinux DISTRO_FEATURES:

setools/policyrep.c:666:10: fatal error: selinux/selinux.h: No such file or directory
  666 | #include <selinux/selinux.h>
      |          ^~~~~~~~~~~~~~~~~~~
compilation terminated.

Add missing DEPENDS on libselinux.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/setools/setools_4.2.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/setools/setools_4.2.2.bb b/recipes-security/setools/setools_4.2.2.bb
index 6e5a950..3d89700 100644
--- a/recipes-security/setools/setools_4.2.2.bb
+++ b/recipes-security/setools/setools_4.2.2.bb
@@ -19,7 +19,7 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
 
-DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol"
+DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol libselinux"
 
 RDEPENDS_${PN} += "python3-networkx python3-decorator python3-setuptools \
                    python3-logging python3-json libselinux-python"
-- 
2.17.1

