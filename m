Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.5417.1585744347504776257
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 05:32:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: mingli.yu@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 031CWP54013750
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 1 Apr 2020 05:32:26 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Wed, 1 Apr 2020 05:32:24 -0700
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-cgl][PATCH] crmsh: add python3-* rdepends
Date: Wed, 1 Apr 2020 20:32:23 +0800
Message-ID: <1585744343-351166-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

crmsh switches to python3 after crmsh upgrade to
4.20 in the commit[059be42 crmsh: Update to 4.20],
so update the RDEPENDS to fix below error:
 # crm status
 Fatal error:
 No module named 'lxml'

 # crm status
 Fatal error:
 No module named 'parallax'

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
index 0eb1e58..add7dba 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
@@ -11,7 +11,7 @@ DEPENDS = "asciidoc-native \
            libxslt-native \
            python-setuptools-native \
            "
-RDEPENDS_${PN} = "pacemaker python-lxml gawk bash"
+RDEPENDS_${PN} = "pacemaker python3-lxml python3-parallax gawk bash"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
-- 
2.7.4

