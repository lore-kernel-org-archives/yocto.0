Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A336E009E6; Thu, 16 Jul 2015 16:16:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BFC0E009D2
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 16:16:28 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GNGMns014905; Thu, 16 Jul 2015 18:16:22 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071618162210-1332970 ;
	Thu, 16 Jul 2015 18:16:22 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 18:16:12 -0500
Message-Id: <a8dd687a17290c9d19a6027cbd1e19b363cf78d2.1437083171.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 02/11] dbus-sharp-glib: use mono.bbclass
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
X-List-Received-Date: Thu, 16 Jul 2015 23:16:31 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
index 2028609..8be7a65 100644
--- a/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
+++ b/recipes-mono/dbus-sharp-glib/dbus-sharp-glib.inc
@@ -1,11 +1,12 @@
 SUMMARY = "C# implementation of D-Bus GlibC integration module"
 DESCRIPTION = "This is a fork of ndesk-dbus-glib, which provides GLib main loop integration for Managed D-Bus."
 SECTION = "devel/mono"
-DEPENDS = "mono dbus-sharp"
+DEPENDS = "dbus-sharp"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "files://COPYING;md5=ea73672fbe49f67f1c1b44a7e763dab4"
 
 inherit autotools
+inherit mono
 
 def dbus_sharp_glib_download_version(d):
     pvsplit = d.getVar('PV', True).split('.')
@@ -19,16 +20,6 @@ S = "${WORKDIR}/${PN}-${SDIRVER}"
 
 FILESPATH =. "${FILE_DIRNAME}/${PN}-${PV}:"
 
-FILES_${PN} += " \
-  ${libdir}/mono/dbus-sharp-glib-2.0/dbus-sharp-glib.dll \
-  ${libdir}/mono/gac/dbus-sharp-glib/*/*.config \
-  ${libdir}/mono/gac/dbus-sharp-glib/*/*dll \
-"
-
-FILES_${PN}-dbg += " \
-  ${libdir}/mono/gac/dbus-sharp-glib/*/*.mdb \
-"
-
 do_configure_prepend() {
   export DBUS_SHARP_LIBS="/r:${STAGING_LIBDIR}/mono/dbus-sharp-2.0/dbus-sharp.dll"
 }
-- 
2.4.4


