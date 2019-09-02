Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D95CE00D60; Mon,  2 Sep 2019 02:39:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 930F1E00D4E
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 02:39:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x829dHrR024123
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Sep 2019 02:39:17 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Mon, 2 Sep 2019 02:39:16 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 2 Sep 2019 17:38:53 +0800
Message-ID: <1567417134-282605-2-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567417134-282605-1-git-send-email-changqing.li@windriver.com>
References: <1567417134-282605-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] monit: upgrade 5.25.2 -> 5.26.0
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
X-List-Received-Date: Mon, 02 Sep 2019 09:39:20 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../recipes-cgl/monit/{monit_5.25.2.bb => monit_5.26.0.bb}          | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/monit/{monit_5.25.2.bb => monit_5.26.0.bb} (90%)

diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
similarity index 90%
rename from meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
rename to meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
index ab9e922..6ec1a21 100644
--- a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
+++ b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
@@ -9,7 +9,7 @@ HOMEPAGE = "http://mmonit.com/monit/"
 LICENSE = "AGPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"
 
-DEPENDS = "openssl zlib"
+DEPENDS = "openssl zlib virtual/crypt"
 
 SRC_URI = "\
 	http://mmonit.com/monit/dist/${BP}.tar.gz \
@@ -17,8 +17,8 @@ SRC_URI = "\
 	file://init \
 	"
 
-SRC_URI[md5sum] = "890df599d6c1e9cfbbdd3edbacb7db81"
-SRC_URI[sha256sum] = "aa0ce6361d1155e43e30a86dcff00b2003d434f221c360981ced830275abc64a"
+SRC_URI[md5sum] = "9f7dc65e902c103e4c5891354994c3df"
+SRC_URI[sha256sum] = "87fc4568a3af9a2be89040efb169e3a2e47b262f99e78d5ddde99dd89f02f3c2"
 
 INITSCRIPT_NAME = "monit"
 INITSCRIPT_PARAMS = "defaults 99"
-- 
2.7.4


