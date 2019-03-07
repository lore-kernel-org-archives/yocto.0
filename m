Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DD1AE00C43; Wed,  6 Mar 2019 23:56:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D95E006D8
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 23:56:57 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x277utmL011444
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Mar 2019 23:56:55 -0800 (PST)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 6 Mar 2019 23:56:54 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Thu, 7 Mar 2019 15:56:52 +0800
Message-ID: <1551945412-25296-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-security][PATCH] scap-security-guide: use makefile generator instead of ninja for cmake
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
X-List-Received-Date: Thu, 07 Mar 2019 07:56:58 -0000
Content-Type: text/plain

Fixes build error:
  | make: *** No rule to make target 'openembedded'.  Stop.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb
index 7fa417d..27d3d86 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-security-guide_0.1.33.bb
@@ -19,6 +19,8 @@ S = "${WORKDIR}/git"
 
 STAGING_OSCAP_BUILDDIR = "${TMPDIR}/work-shared/openscap/oscap-build-artifacts"
 
+OECMAKE_GENERATOR = "Unix Makefiles"
+
 EXTRA_OECMAKE += "-DSSG_PRODUCT_CHROMIUM:BOOL=OFF"
 EXTRA_OECMAKE += "-DSSG_PRODUCT_DEBIAN8:BOOL=OFF"
 EXTRA_OECMAKE += "-DSSG_PRODUCT_FEDORA:BOOL=OFF"
-- 
2.7.4


