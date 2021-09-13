Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.23876.1631497956520509931
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Sep 2021 18:52:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mingli.yu@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 18D1qV8G022332
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 12 Sep 2021 18:52:31 -0700
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Sun, 12 Sep 2021 18:52:31 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Sun, 12 Sep 2021 18:52:30 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Sun, 12 Sep 2021 18:52:29 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>, <joe_macdonald@mentor.com>,
        <joe@deserted.net>
Subject: [meta-selinux][PATCH] coreutils/findutils/tar: remove pkgconfig from bbappend
Date: Mon, 13 Sep 2021 09:48:08 +0800
Message-ID: <20210913014808.23689-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

When enable meta-gplv2 layer [1], there comes below error:
  ERROR: coreutils-6.9-r5 do_configure: QA Issue: coreutils: configure was passed unrecognised options: --without-selinux [unknown-configure-option]
  ERROR: coreutils-6.9-r5 do_configure: Fatal QA errors found, failing task.

It's because the old version of coreutils under meta-gplv2 layer
doesn't support the above configure option, so move the related
pkgconfig setting to the coreutils recipe under oe-core [2] which
supports the configure option to fix the gap.

And the findutils and tar also have the problem.

[1] http://git.yoctoproject.org/cgit/cgit.cgi/meta-gplv2/
[2] https://git.openembedded.org/openembedded-core/

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 recipes-core/coreutils/coreutils_%.bbappend     | 1 -
 recipes-extended/findutils/findutils_%.bbappend | 1 -
 recipes-extended/tar/tar_selinux.inc            | 2 --
 3 files changed, 4 deletions(-)

diff --git a/recipes-core/coreutils/coreutils_%.bbappend b/recipes-core/coreutils/coreutils_%.bbappend
index 138c23a..74e22b3 100644
--- a/recipes-core/coreutils/coreutils_%.bbappend
+++ b/recipes-core/coreutils/coreutils_%.bbappend
@@ -1,2 +1 @@
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-extended/findutils/findutils_%.bbappend b/recipes-extended/findutils/findutils_%.bbappend
index 138c23a..74e22b3 100644
--- a/recipes-extended/findutils/findutils_%.bbappend
+++ b/recipes-extended/findutils/findutils_%.bbappend
@@ -1,2 +1 @@
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-selinux', '', d)}
-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
diff --git a/recipes-extended/tar/tar_selinux.inc b/recipes-extended/tar/tar_selinux.inc
index 0f64298..8c11cac 100644
--- a/recipes-extended/tar/tar_selinux.inc
+++ b/recipes-extended/tar/tar_selinux.inc
@@ -1,3 +1 @@
 inherit enable-selinux
-
-PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
-- 
2.32.0

