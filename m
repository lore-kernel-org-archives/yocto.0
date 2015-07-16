Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A256FE009DF; Thu, 16 Jul 2015 16:16:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C7DE009D2
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 16:16:24 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GNGMrt015577; Thu, 16 Jul 2015 18:16:22 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071618162211-1332971 ;
	Thu, 16 Jul 2015 18:16:22 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 18:16:13 -0500
Message-Id: <b4f0eda23a6e1fcd7006f77871c579dcd384391d.1437083171.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 03/11] dbus-sharp: use mono.bbclass
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
X-List-Received-Date: Thu, 16 Jul 2015 23:16:26 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/dbus-sharp/dbus-sharp.inc | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/recipes-mono/dbus-sharp/dbus-sharp.inc b/recipes-mono/dbus-sharp/dbus-sharp.inc
index 243b489..a458082 100644
--- a/recipes-mono/dbus-sharp/dbus-sharp.inc
+++ b/recipes-mono/dbus-sharp/dbus-sharp.inc
@@ -1,11 +1,11 @@
 SUMMARY = "C# implementation of D-Bus"
 DESCRIPTION = "An inter-process communication framework that lets applications	interface with the system event bus as well as allowing them to talk to one another in a peer-to-peer configuration."
 SECTION = "devel/mono"
-DEPENDS = "mono"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "files://COPYING;md5=09d60852216ea29fdba9ea146513336c"
 
 inherit autotools
+inherit mono
 
 def dbus_sharp_download_version(d):
     pvsplit = d.getVar('PV', True).split('.')
@@ -18,14 +18,3 @@ SRC_URI = "https://github.com/mono/dbus-sharp/archive/v${SDIRVER}.tar.gz"
 S = "${WORKDIR}/${PN}-${SDIRVER}"
 
 FILESPATH =. "${FILE_DIRNAME}/${PN}-${PV}:"
-
-FILES_${PN} += " \
-  ${libdir}/mono/dbus-sharp-2.0/* \
-  ${libdir}/mono/gac/dbus-sharp/*/*.dll \
-  ${libdir}/mono/gac/dbus-sharp/*/*.config \
-"
-
-FILES_${PN}-dbg += " \
-  ${libdir}/mono/gac/dbus-sharp/*/*.mdb \
-"
-
-- 
2.4.4


