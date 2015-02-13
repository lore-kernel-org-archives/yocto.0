Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 428ABE008DD; Fri, 13 Feb 2015 01:40:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 60807E0089B
	for <yocto@yoctoproject.org>; Fri, 13 Feb 2015 01:40:27 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 13 Feb 2015 10:40:26 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 42B3D2800CB;
	Fri, 13 Feb 2015 10:40:26 +0100 (CET)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <linux-maintainers@enea.com>, <yocto@yoctoproject.org>
Date: Fri, 13 Feb 2015 10:40:11 +0100
Message-ID: <1423820411-20102-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Cc: alexey_firago@mentor.com, gary@mlbassoc.com
Subject: [PATCH] cgl: Updated the structure for the layers and layers definition
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
X-List-Received-Date: Fri, 13 Feb 2015 09:40:28 -0000
Content-Type: text/plain

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/conf/layer.conf                                   | 6 +++---
 {meta-fsl-ppc => meta-cgl-fsl-ppc}/conf/layer.conf                | 8 +++++---
 .../recipes-kernel/linux/linux-qoriq_3.12.bbappend                | 0
 3 files changed, 8 insertions(+), 6 deletions(-)
 rename {meta-fsl-ppc => meta-cgl-fsl-ppc}/conf/layer.conf (54%)
 rename {meta-fsl-ppc => meta-cgl-fsl-ppc}/recipes-kernel/linux/linux-qoriq_3.12.bbappend (100%)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 6844549..41b2768 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -7,6 +7,6 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/packagegroups/* \
 	${LAYERDIR}/recipes-*/*/*.bbappend"

-BBFILE_COLLECTIONS += "cgl"
-BBFILE_PATTERN_cgl = "^${LAYERDIR}/"
-BBFILE_PRIORITY_cgl = "7"
+BBFILE_COLLECTIONS += "meta-cgl-common"
+BBFILE_PATTERN_meta-cgl-common = "^${LAYERDIR}/"
+BBFILE_PRIORITY_meta-cgl-common = "7"
diff --git a/meta-fsl-ppc/conf/layer.conf b/meta-cgl-fsl-ppc/conf/layer.conf
similarity index 54%
rename from meta-fsl-ppc/conf/layer.conf
rename to meta-cgl-fsl-ppc/conf/layer.conf
index 6818475..31eee43 100644
--- a/meta-fsl-ppc/conf/layer.conf
+++ b/meta-cgl-fsl-ppc/conf/layer.conf
@@ -5,6 +5,8 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"

-BBFILE_COLLECTIONS += "cgl"
-BBFILE_PATTERN_cgl = "^${LAYERDIR}/"
-BBFILE_PRIORITY_cgl = "7"
+BBFILE_COLLECTIONS += "meta-cgl-fsl-ppc"
+BBFILE_PATTERN_meta-cgl-fsl-ppc = "^${LAYERDIR}/"
+BBFILE_PRIORITY_meta-cgl-fsl-ppc = "7"
+
+LAYERDEPENDS_crystalforest = "cgl-common"
diff --git a/meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend b/meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend
similarity index 100%
rename from meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend
rename to meta-cgl-fsl-ppc/recipes-kernel/linux/linux-qoriq_3.12.bbappend
--
1.9.1


