Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA78BE00D01; Thu,  7 Mar 2019 17:52:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE2EDE00CED
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 17:52:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x281poLQ002525
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Mar 2019 17:52:00 -0800
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Thu, 7 Mar 2019 17:51:40 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Fri, 8 Mar 2019 09:51:38 +0800
Message-ID: <1552009898-13240-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-security][PATCH] oe-scap: fix inconsistent indentation
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
X-List-Received-Date: Fri, 08 Mar 2019 01:52:28 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-openscap/oe-scap/oe-scap_1.0.bb                   | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
index 5b61375..e84ed30 100644
--- a/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
+++ b/meta-security-compliance/recipes-openscap/oe-scap/oe-scap_1.0.bb
@@ -8,12 +8,11 @@ LICENSE = "MIT"
 SRCREV = "7147871d7f37d408c0dd7720ef0fd3ec1b54ad98"
 SRC_URI = "git://github.com/akuster/oe-scap.git"
 SRC_URI += " \
-	file://run_cve.sh \
-	file://run_test.sh \
-	file://OpenEmbedded_nodistro_0.xml \
-        file://OpenEmbedded_nodistro_0.xccdf.xml \
-"
-	
+            file://run_cve.sh \
+            file://run_test.sh \
+            file://OpenEmbedded_nodistro_0.xml \
+            file://OpenEmbedded_nodistro_0.xccdf.xml \
+           "
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


