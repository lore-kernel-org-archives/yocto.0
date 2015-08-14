Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC3C9E00A54; Fri, 14 Aug 2015 00:11:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB74E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 00:11:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7E7BQqN004316
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 00:11:26 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.235.1;
	Fri, 14 Aug 2015 00:11:26 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 14 Aug 2015 03:11:24 -0400
Message-ID: <1439536284-222727-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] python-ipy: update 0.81 -> 0.83
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
X-List-Received-Date: Fri, 14 Aug 2015 07:11:36 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* update SRC_URI checksums
* remove PKG-INFO that is not in 0.83

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-devtools/python/{python-ipy_0.81.bb => python-ipy_0.83.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-devtools/python/{python-ipy_0.81.bb => python-ipy_0.83.bb} (79%)

diff --git a/recipes-devtools/python/python-ipy_0.81.bb b/recipes-devtools/python/python-ipy_0.83.bb
similarity index 79%
rename from recipes-devtools/python/python-ipy_0.81.bb
rename to recipes-devtools/python/python-ipy_0.83.bb
index 3ce66a7..b2a9739 100644
--- a/recipes-devtools/python/python-ipy_0.81.bb
+++ b/recipes-devtools/python/python-ipy_0.83.bb
@@ -11,8 +11,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=ebc0028ff5cdaf7796604875027dcd55"
 
 SRC_URI = "http://pypi.python.org/packages/source/I/IPy/IPy-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "7a305c0b60950a9a90c89e9a6f9e06f4"
-SRC_URI[sha256sum] = "4bc17a9b5e72e893a034e77193b82c2bc321ddf8d8c345281f2bb81bb007b939"
+SRC_URI[md5sum] = "7b8c6eb4111b15aea31b67108e769712"
+SRC_URI[sha256sum] = "61da5a532b159b387176f6eabf11946e7458b6df8fb8b91ff1d345ca7a6edab8"
 
 S = "${WORKDIR}/IPy-${PV}"
 
@@ -28,5 +28,5 @@ BBCLASSEXTEND = "native"
 
 do_install_append() {
 	install -d ${D}/${datadir}/doc/${BPN}-${PV}
-	install AUTHORS COPYING ChangeLog PKG-INFO README ${D}/${datadir}/doc/${BPN}-${PV}
+	install AUTHORS COPYING ChangeLog README ${D}/${datadir}/doc/${BPN}-${PV}
 }
-- 
1.9.1


