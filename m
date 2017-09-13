Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 973D8E00C88; Tue, 12 Sep 2017 19:43:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 322CEE00C14
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2h4wh009320
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:04 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:03 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:44 -0700
Message-ID: <5f34d159eeffc6f05a26862d3264b68b41b4fb49.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 02/20] libsepol: uprev to 2.7 (20170804)
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:06 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/{libsepol_2.6.bb => libsepol_2.7.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{libsepol_2.6.bb => libsepol_2.7.bb} (49%)

diff --git a/recipes-security/selinux/libsepol_2.6.bb b/recipes-security/selinux/libsepol_2.7.bb
similarity index 49%
rename from recipes-security/selinux/libsepol_2.6.bb
rename to recipes-security/selinux/libsepol_2.7.bb
index e593fe9..f38f7ba 100644
--- a/recipes-security/selinux/libsepol_2.6.bb
+++ b/recipes-security/selinux/libsepol_2.7.bb
@@ -1,9 +1,9 @@
-include selinux_20161014.inc
+include selinux_20170804.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
-SRC_URI[md5sum] = "dc1dfd31aea4c6e4b521f3aa2bddf7de"
-SRC_URI[sha256sum] = "d856d6506054f52abeaa3543ea2f2344595a3dc05d0d873ed7f724f7a16b1874"
+SRC_URI[md5sum] = "9424b93fd6efd853b9360f29265c5aa3"
+SRC_URI[sha256sum] = "d69d3bd8ec901a3bd5adf2be2fb47fb1a685ed73066ab482e7e505371a48f9e7"
 
 SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
-- 
2.13.0


