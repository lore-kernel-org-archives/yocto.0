Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C5DDE00D98; Thu, 22 Aug 2019 18:53:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AA8AE00D35
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 18:53:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7N1qhVV020937
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Aug 2019 18:53:24 -0700
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Thu, 22 Aug 2019 18:52:45 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Fri, 23 Aug 2019 09:52:43 +0800
Message-ID: <1566525163-10340-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-security][PATCH] openscap: add runtime dependency on bash and python3-core
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
X-List-Received-Date: Fri, 23 Aug 2019 01:53:52 -0000
Content-Type: text/plain

Fixes:
ERROR: QA Issue: /usr/bin/oscap-ssh contained in package openscap requires /bin/bash, but no providers found in RDEPENDS_openscap? [file-rdeps]
ERROR: QA Issue: /usr/bin/scap-as-rpm contained in package openscap requires /usr/bin/python3, but no providers found in RDEPENDS_openscap?  [file-rdeps]

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-security-compliance/recipes-openscap/openscap/openscap.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index 53309e8..49e0855 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -50,6 +50,6 @@ do_install_append_class-native () {
 
 FILES_${PN} += "${PYTHON_SITEPACKAGES_DIR}"
 
-RDEPENDS_${PN} += "libxml2 python3 libgcc"
+RDEPENDS_${PN} += "libxml2 python3-core libgcc bash"
 
 BBCLASSEXTEND = "native"
-- 
2.7.4


