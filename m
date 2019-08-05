Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E271E00C27; Sun,  4 Aug 2019 20:20:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE4B1E00B8E
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2019 20:20:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x753K4A9014124
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Aug 2019 20:20:04 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Sun, 4 Aug 2019 20:20:04 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <akuster808@gmail.com>
Date: Mon, 5 Aug 2019 11:20:00 +0800
Message-ID: <1564975201-29244-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-security][PATCH 1/2] openscap: cleanup DEPENDS
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
X-List-Received-Date: Mon, 05 Aug 2019 03:20:07 -0000
Content-Type: text/plain

Remove autoconf-archive from DEPENDS because it is using CMake/Ninjia
build now. Also remove unused dpkg-native dependency from
DEPENDS_class-native.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-security-compliance/recipes-openscap/openscap/openscap.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-security-compliance/recipes-openscap/openscap/openscap.inc b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
index f23ea99..53309e8 100644
--- a/meta-security-compliance/recipes-openscap/openscap/openscap.inc
+++ b/meta-security-compliance/recipes-openscap/openscap/openscap.inc
@@ -6,8 +6,8 @@ HOME_URL = "https://www.open-scap.org/tools/openscap-base/"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24"
 LICENSE = "LGPL-2.1"
 
-DEPENDS = "autoconf-archive dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig"
-DEPENDS_class-native = "autoconf-archive-native pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native dpkg-native"
+DEPENDS = "dbus acl bzip2 pkgconfig gconf procps curl libxml2 libxslt libcap swig"
+DEPENDS_class-native = "pkgconfig-native swig-native curl-native libxml2-native libxslt-native libcap-native"
 
 S = "${WORKDIR}/git"
 
-- 
2.7.4


