Return-Path: <Alexey_Firago@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD56E0092D; Fri, 23 Jan 2015 01:47:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C5BE008FB
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 01:47:16 -0800 (PST)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-FEM-01.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YEapf-0004YR-KS from Alexey_Firago@mentor.com 
	for yocto@yoctoproject.org; Fri, 23 Jan 2015 01:47:15 -0800
Received: from grobik.rup.mentorg.com (137.202.0.76) by
	SVR-IES-FEM-01.mgc.mentorg.com (137.202.0.104) with Microsoft SMTP
	Server id 14.3.224.2; Fri, 23 Jan 2015 09:47:14 +0000
From: Alexey Firago <alexey_firago@mentor.com>
To: <yocto@yoctoproject.org>
Date: Fri, 23 Jan 2015 12:47:06 +0300
Message-ID: <1422006426-14375-1-git-send-email-alexey_firago@mentor.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Jan 2015 05:19:12 -0800
Cc: Alexey Firago <alexey_firago@mentor.com>
Subject: [meta-cgl][PATCH] meta-fsl-ppc: layer.conf: Rename BBFILE_COLLECTIONS
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
X-List-Received-Date: Fri, 23 Jan 2015 09:47:27 -0000
Content-Type: text/plain

BBFILE_COLLECTIONS is currently set to "cgl" which is also used
by meta-cgl-common. Some tools/scripts use this field for
automatic layers detection, so rename it to "fsl-ppc-cgl".

Signed-off-by: Alexey Firago <alexey_firago@mentor.com>
---
 meta-fsl-ppc/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-fsl-ppc/conf/layer.conf b/meta-fsl-ppc/conf/layer.conf
index 6818475..be345ff 100644
--- a/meta-fsl-ppc/conf/layer.conf
+++ b/meta-fsl-ppc/conf/layer.conf
@@ -5,6 +5,6 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS += "cgl"
+BBFILE_COLLECTIONS += "fsl-ppc-cgl"
 BBFILE_PATTERN_cgl = "^${LAYERDIR}/"
 BBFILE_PRIORITY_cgl = "7"
-- 
1.9.1


