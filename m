Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4836CE009E6; Thu, 16 Jul 2015 16:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF76E009EB
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 16:16:27 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GNGMnu014905; Thu, 16 Jul 2015 18:16:22 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071618162215-1332973 ;
	Thu, 16 Jul 2015 18:16:22 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 18:16:15 -0500
Message-Id: <369871992c3c79099806d12809737b66a5ac9674.1437083171.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437083171.git.rich.tollerton@ni.com>
References: <cover.1437083171.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 06:16:22 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 06:16:22 PM,
	Serialize complete at 07/16/2015 06:16:22 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_06:, , signatures=0
Subject: [meta-mono] [PATCH 05/11] mono-addins: use mono.bbclass
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
X-List-Received-Date: Thu, 16 Jul 2015 23:16:28 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/mono-addins/mono-addins.inc | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/recipes-mono/mono-addins/mono-addins.inc b/recipes-mono/mono-addins/mono-addins.inc
index 767ad78..5549fb9 100644
--- a/recipes-mono/mono-addins/mono-addins.inc
+++ b/recipes-mono/mono-addins/mono-addins.inc
@@ -6,7 +6,7 @@ SECTION = "mono/applications"
 PRIORITY = "optional"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=4e024d772d8266e3ff9747185842ca82"
-DEPENDS = "mono gtk-sharp"
+DEPENDS = "gtk-sharp"
 
 SRCREV = "64a45d96f39d4714ec85adf0fe04b68ec7273ae1"
 SRCBRANCH = "master"
@@ -16,14 +16,4 @@ SRC_URI = "git://github.com/mono/mono-addins.git;branch=${SRCBRANCH}"
 S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
-
-FILES_${PN} += " \
-  ${libdir}/mono/gac/* \
-  ${libdir}/mono/gac/*/*/*.dll \
-  ${libdir}/mono/gac/*/*/*.config \
-  ${libdir}/mono/${PN}/* \
-"
-
-FILES_${PN}-dbg += " \
-  ${libdir}/mono/gac/*/*/*.mdb \
-"
+inherit mono
-- 
2.4.4


