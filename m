Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7535.1600915569129465476
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 19:46:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: qi.chen@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9DF7038C14CD
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 19:46:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08O2jjr8010722
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 19:45:55 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Wed, 23 Sep 2020 19:45:34 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][PATCH] crmsh: remove python-setuptools-native from DEPENDS
Date: Thu, 24 Sep 2020 10:45:33 +0800
Message-ID: <20200924024533.7975-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

Current version of crmsh uses python3-setuptools, which is from
setuptools3.bbclass. So we can safely remove this python2 dependency.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
index add7dba..830802d 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.20.bb
@@ -9,7 +9,6 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 DEPENDS = "asciidoc-native \
            docbook-xsl-stylesheets-native \
            libxslt-native \
-           python-setuptools-native \
            "
 RDEPENDS_${PN} = "pacemaker python3-lxml python3-parallax gawk bash"
 
-- 
2.17.1

