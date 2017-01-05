Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1FAEE0049D; Thu,  5 Jan 2017 00:23:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7478AE0049A
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:23:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v058NT1G003124
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2017 00:23:29 -0800 (PST)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 5 Jan 2017 00:23:28 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 5 Jan 2017 00:23:19 -0800
Message-ID: <d5d9808fdf92a5a18eb88d2974f710c782d4f1b6.1483601828.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1483601828.git.wenzong.fan@windriver.com>
References: <cover.1483601828.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/9] libsepol: uprev to 2.6 (20161014)
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
X-List-Received-Date: Thu, 05 Jan 2017 08:23:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/{libsepol_2.5.bb => libsepol_2.6.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{libsepol_2.5.bb => libsepol_2.6.bb} (49%)

diff --git a/recipes-security/selinux/libsepol_2.5.bb b/recipes-security/selinux/libsepol_2.6.bb
similarity index 49%
rename from recipes-security/selinux/libsepol_2.5.bb
rename to recipes-security/selinux/libsepol_2.6.bb
index f96b59a..e593fe9 100644
--- a/recipes-security/selinux/libsepol_2.5.bb
+++ b/recipes-security/selinux/libsepol_2.6.bb
@@ -1,9 +1,9 @@
-include selinux_20160223.inc
+include selinux_20161014.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
-SRC_URI[md5sum] = "5b18e0e1e50bdf648c2c42241c42052c"
-SRC_URI[sha256sum] = "2bdeec56d0a08b082b93b40703b4b3329cc5562152f7254d8f6ef6b56afe850a"
+SRC_URI[md5sum] = "dc1dfd31aea4c6e4b521f3aa2bddf7de"
+SRC_URI[sha256sum] = "d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874"
 
 SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
-- 
2.7.4


