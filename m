Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1159E00D0E; Fri, 10 Aug 2018 01:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9703FE00D3F
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:51 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7A8AokV010861
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:50 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:50 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:10:02 +0800
Message-ID: <1533888603-57726-6-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
References: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] monit: 5.20.0 -> 5.25.2
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
X-List-Received-Date: Fri, 10 Aug 2018 08:10:57 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../recipes-cgl/monit/{monit_5.20.0.bb => monit_5.25.2.bb}          | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/monit/{monit_5.20.0.bb => monit_5.25.2.bb} (91%)

diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.20.0.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
similarity index 91%
rename from meta-cgl-common/recipes-cgl/monit/monit_5.20.0.bb
rename to meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
index 955a28c..ab9e922 100644
--- a/meta-cgl-common/recipes-cgl/monit/monit_5.20.0.bb
+++ b/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
@@ -9,7 +9,7 @@ HOMEPAGE = "http://mmonit.com/monit/"
 LICENSE = "AGPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"
 
-DEPENDS = "openssl"
+DEPENDS = "openssl zlib"
 
 SRC_URI = "\
 	http://mmonit.com/monit/dist/${BP}.tar.gz \
@@ -17,8 +17,8 @@ SRC_URI = "\
 	file://init \
 	"
 
-SRC_URI[md5sum] = "769a44ee13b4e1f90156b58dc2f7ea7c"
-SRC_URI[sha256sum] = "ebac395ec50c1ae64d568db1260bc049d0e0e624c00e79d7b1b9a59c2679b98d"
+SRC_URI[md5sum] = "890df599d6c1e9cfbbdd3edbacb7db81"
+SRC_URI[sha256sum] = "aa0ce6361d1155e43e30a86dcff00b2003d434f221c360981ced830275abc64a"
 
 INITSCRIPT_NAME = "monit"
 INITSCRIPT_PARAMS = "defaults 99"
-- 
2.7.4


