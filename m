Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E3DEE00D4E; Thu, 22 Aug 2019 13:45:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA3EE00B9E
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 13:45:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7MKj9q1006510
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 13:45:10 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 22 Aug 2019 13:44:57 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 22 Aug 2019 13:44:57 -0700
Message-ID: <20190822204457.95500-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-cgl][PATCH 1/1] crmsh: and RDEPENDS on bash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Aug 2019 20:45:12 -0000
Content-Type: text/plain

Several test scripts need /bin/bash instead of /bin/sh.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
index 7563c99..040b4d3 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_3.0.3.bb
@@ -11,7 +11,7 @@ DEPENDS = "asciidoc-native \
            libxslt-native \
            python-setuptools-native \
            "
-RDEPENDS_${PN} = "pacemaker python-lxml gawk"
+RDEPENDS_${PN} = "pacemaker python-lxml gawk bash"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=crmsh-3.0 \
-- 
2.7.4


