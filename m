Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A41D7E00831; Tue, 17 Feb 2015 05:14:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id EC294E00744
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 05:14:00 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 17 Feb 2015 14:12:37 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 2AA082800CB;
	Tue, 17 Feb 2015 14:12:37 +0100 (CET)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <linux-maintainers@enea.com>, <yocto@yoctoproject.org>
Date: Tue, 17 Feb 2015 14:12:34 +0100
Message-ID: <1424178754-56127-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] cgl: Updated the layers definition
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
X-List-Received-Date: Tue, 17 Feb 2015 13:14:26 -0000
Content-Type: text/plain

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-cgl-common/conf/layer.conf  | 6 +++---
 meta-cgl-fsl-ppc/conf/layer.conf | 8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 41b2768..f5a0190 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -7,6 +7,6 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/packagegroups/* \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS += "meta-cgl-common"
-BBFILE_PATTERN_meta-cgl-common = "^${LAYERDIR}/"
-BBFILE_PRIORITY_meta-cgl-common = "7"
+BBFILE_COLLECTIONS += "cgl-common"
+BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
+BBFILE_PRIORITY_cgl-common = "7"
diff --git a/meta-cgl-fsl-ppc/conf/layer.conf b/meta-cgl-fsl-ppc/conf/layer.conf
index 31eee43..353824d 100644
--- a/meta-cgl-fsl-ppc/conf/layer.conf
+++ b/meta-cgl-fsl-ppc/conf/layer.conf
@@ -5,8 +5,8 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS += "meta-cgl-fsl-ppc"
-BBFILE_PATTERN_meta-cgl-fsl-ppc = "^${LAYERDIR}/"
-BBFILE_PRIORITY_meta-cgl-fsl-ppc = "7"
+BBFILE_COLLECTIONS += "cgl-fsl-ppc"
+BBFILE_PATTERN_cgl-fsl-ppc = "^${LAYERDIR}/"
+BBFILE_PRIORITY_cgl-fsl-ppc = "7"
 
-LAYERDEPENDS_crystalforest = "cgl-common"
+LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"
-- 
1.9.1


