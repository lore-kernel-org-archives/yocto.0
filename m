Return-Path: <Dmitry_Eremin@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FF8EE009FC; Fri,  8 May 2015 13:13:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6745CE0098A
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:13:33 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YqoeK-0002tj-Md from Dmitry_Eremin@mentor.com 
	for yocto@yoctoproject.org; Fri, 08 May 2015 13:13:32 -0700
Received: from fangorn.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server (TLS) id 14.3.224.2; Fri, 8 May 2015 21:13:31 +0100
From: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 8 May 2015 23:13:21 +0300
Message-ID: <1431116010-14977-1-git-send-email-dmitry_eremin@mentor.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 01/10] cgl_common_security_flags.inc: add to fix building with security flags
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
X-List-Received-Date: Fri, 08 May 2015 20:13:39 -0000
Content-Type: text/plain

Package openhpi is currently broken if distro uses security_flags.inc.
Flx that by adding layer-wide include file for such exceptions.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin@mentor.com>
---
 meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc | 1 +
 meta-cgl-common/conf/layer.conf                                   | 2 ++
 2 files changed, 3 insertions(+)
 create mode 100644 meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc

diff --git a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
new file mode 100644
index 0000000..358ce58
--- /dev/null
+++ b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
@@ -0,0 +1 @@
+SECURITY_CFLAGS_pn-openhpi = "${SECURITY_NO_PIE_CFLAGS}"
diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index f5a0190..0c19a95 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -10,3 +10,5 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 BBFILE_COLLECTIONS += "cgl-common"
 BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl-common = "7"
+
+require conf/distro/include/cgl_common_security_flags.inc
-- 
2.1.4


