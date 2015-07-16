Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3FE1E009EF; Thu, 16 Jul 2015 16:16:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E19E009CC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 16:16:26 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GNGMnt014905; Thu, 16 Jul 2015 18:16:22 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071618162213-1332972 ;
	Thu, 16 Jul 2015 18:16:22 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 18:16:14 -0500
Message-Id: <0036babba89b7cce73c791089a9df91362a6517a.1437083171.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 04/11] fsharp.inc: use mono.bbclass
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
X-List-Received-Date: Thu, 16 Jul 2015 23:16:27 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/fsharp/fsharp.inc | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

diff --git a/recipes-mono/fsharp/fsharp.inc b/recipes-mono/fsharp/fsharp.inc
index 25c41b6..f5bdcc1 100644
--- a/recipes-mono/fsharp/fsharp.inc
+++ b/recipes-mono/fsharp/fsharp.inc
@@ -1,36 +1,19 @@
 SUMMARY = "F# programming language"
 DESCRIPTION = "F# is a strongly-typed, functional-first programming language for writing simple code to solve complex problems."
 SECTION = "devel/mono"
-DEPENDS = "mono"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "files://LICENSE;md5=512efb9375da0bd2fee9e2b9352c08af"
 
 inherit autotools-brokensep
+inherit mono
 
 # For some reason the URL template changes from version to version,
 # therefore use some variables for the directory and extension
 SRC_URI = "https://github.com/fsharp/fsharp/archive/${PV}.tar.gz"
 
 FILES_${PN} += "\
-  ${libdir}/mono/*/*.exe \
-  ${libdir}/mono/*/*.dll \
-  ${libdir}/mono/*/*.config \
   ${libdir}/mono/*/*.optdata \
   ${libdir}/mono/*/*.sigdata \
-  ${libdir}/mono/gac/*/*/*.config \
   ${libdir}/mono/gac/*/*/*.optdata \
   ${libdir}/mono/gac/*/*/*.sigdata \
 "
-
-FILES_${PN}-dbg += "\
-  ${libdir}/mono/gac/*/*/*.mdb \
-"
-
-FILES_${PN}-dev = "\
-  ${libdir}/mono/xbuild/* \
-  ${libdir}/mono/xbuild-frameworks/* \
-  ${libdir}/mono/Microsoft* \
-  ${libdir}/mono/*/*.Targets \
-  ${libdir}/mono/*/*.xml \
-  ${libdir}/mono/gac/*/*/*.xml \
-"
-- 
2.4.4


