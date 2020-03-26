Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.31181.1585198304969393701
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 21:51:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: qi.chen@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1975E018D7; Wed, 25 Mar 2020 21:51:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABFFAE0189F
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2020 21:51:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 02Q4pM0v022252
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2020 21:51:32 -0700
Received: from ala-lpggp7.wrs.com (147.11.105.171) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.487.0; Wed, 25 Mar 2020
 21:51:11 -0700
From: "Chen Qi" <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [yocto][meta-cgl][PATCH] resource-agents: fix QA issue
Date: Wed, 25 Mar 2020 21:51:11 -0700
Message-ID: <20200326045111.97722-1-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Fix the following QA issue.

ERROR: resource-agents-4.5.0-r0 do_package: QA Issue: resource-agents: Fi=
les/directories were installed but not shipped in any package:
  /usr/lib/tmpfiles.d
  /usr/lib/tmpfiles.d/resource-agents.conf
  /lib/systemd/system/resource-agents-deps.target

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../cluster-resource-agents/resource-agents_4.5.0.bb            | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource=
-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/re=
source-agents_4.5.0.bb
index 83ef913..d34d706 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents=
_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents=
_4.5.0.bb
@@ -106,6 +106,8 @@ FILES_${PN} +=3D "${datadir}/cluster/* \
                 ${libdir}/ocf/resource.d/heartbeat/ \
                 ${libdir}/ocf/lib/heartbeat/* \
                 ${libdir}/ocf/resource.d/redhat \
+                ${nonarch_libdir}/tmpfiles.d \
+                ${systemd_unitdir}/system \
                 "
=20
 FILES_${PN}-dbg +=3D "${libdir}/ocf/resource.d/heartbeat/.debug \
--=20
2.21.0

