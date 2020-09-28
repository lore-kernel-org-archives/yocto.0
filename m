Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.27416.1601258284833611164
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 18:58:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9C15938C0858
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 18:58:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 08S1w20o008368
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 18:58:02 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Sun, 27 Sep 2020 18:58:01 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][PATCH] resource-agents: remove the build path from script ocf-binaries
Date: Mon, 28 Sep 2020 09:57:58 +0800
Message-ID: <20200928015758.37360-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Yue Tao <Yue.Tao@windriver.com>

After upgrading 4.5.0, the script ocf-binaries contains the build path

| : ${SSH:=/path/to/build/tmp-glibc/hosttools/ssh}

Add a configure option to replace it with /usr/bin/ssh.

Signed-off-by: Yue Tao <Yue.Tao@windriver.com>
Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index d34d706..d9440d3 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -49,6 +49,7 @@ CACHED_CONFIGUREVARS += " \
     ac_cv_path_TEST=test \
     ac_cv_path_BASH_SHELL=/bin/bash \
     ac_cv_path_PYTHON="/usr/bin/env python3" \
+    ac_cv_path_SSH="/usr/bin/ssh" \
 "
 
 EXTRA_OECONF += "--disable-fatal-warnings \
-- 
2.17.1

