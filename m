Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26C2DE00A1E; Wed, 18 Apr 2018 00:45:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E83C6E00823
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 00:45:17 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3I7jGK0009222
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 00:45:16 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 18 Apr 2018 00:45:16 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 18 Apr 2018 03:44:57 -0400
Message-ID: <1524037497-33544-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-security][PATCH] xmlsec1: remove host paths from target files
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
X-List-Received-Date: Wed, 18 Apr 2018 07:45:19 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/xmlsec1/xmlsec1_1.2.25.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
index dbb6f7d..341ca08 100644
--- a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
@@ -46,7 +46,10 @@ do_compile_ptest () {
 }
 
 do_install_append() {
-    sed -i -e "s@${STAGING_DIR}@@g" ${D}${bindir}/xmlsec1-config
+    for i in ${bindir}/xmlsec1-config ${libdir}/xmlsec1Conf.sh \
+        ${libdir}/pkgconfig/xmlsec1-openssl.pc; do
+        sed -i -e "s@${RECIPE_SYSROOT}@@g" ${D}$i
+    done
 }
 
 do_install_ptest () {
-- 
2.8.1


