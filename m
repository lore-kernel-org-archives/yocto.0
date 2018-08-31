Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8120CE009AC; Fri, 31 Aug 2018 00:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9034E009A4
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 00:10:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7V7AD4R001513
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 00:10:14 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Fri, 31 Aug 2018 00:10:13 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 31 Aug 2018 15:10:10 +0800
Message-ID: <1535699411-6135-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-security][PATCH 1/2] samhain: upgrade 4.2.2 -> 4.2.4
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
X-List-Received-Date: Fri, 31 Aug 2018 07:10:15 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../samhain/{samhain-client_4.2.2.bb => samhain-client_4.2.4.bb}   | 0
 .../samhain/{samhain-server_4.2.2.bb => samhain-server_4.2.4.bb}   | 0
 .../{samhain-standalone_4.2.2.bb => samhain-standalone_4.2.4.bb}   | 0
 recipes-security/samhain/samhain.inc                               | 7 +++++--
 4 files changed, 5 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.2.2.bb => samhain-client_4.2.4.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.2.2.bb => samhain-server_4.2.4.bb} (100%)
 rename recipes-security/samhain/{samhain-standalone_4.2.2.bb => samhain-standalone_4.2.4.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.2.2.bb b/recipes-security/samhain/samhain-client_4.2.4.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.2.2.bb
rename to recipes-security/samhain/samhain-client_4.2.4.bb
diff --git a/recipes-security/samhain/samhain-server_4.2.2.bb b/recipes-security/samhain/samhain-server_4.2.4.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.2.2.bb
rename to recipes-security/samhain/samhain-server_4.2.4.bb
diff --git a/recipes-security/samhain/samhain-standalone_4.2.2.bb b/recipes-security/samhain/samhain-standalone_4.2.4.bb
similarity index 100%
rename from recipes-security/samhain/samhain-standalone_4.2.2.bb
rename to recipes-security/samhain/samhain-standalone_4.2.4.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index db96264..e127e91 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -19,8 +19,11 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain.service \
            "
 
-SRC_URI[md5sum] = "f499d5d06bfd1d787073a45bf28dd60f"
-SRC_URI[sha256sum] = "0f3e64afb3f00064c9b136d34a72d580cd41248c5941eba0452f364a109003c7"
+SRC_URI[md5sum] = "08863fad583acc7293ef29b4528c837e"
+SRC_URI[sha256sum] = "0cd779b3666264e1f370f7ec37891f680b4caa04895fab8c5aa9a52e41ec885d"
+
+UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
+UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.7.4


