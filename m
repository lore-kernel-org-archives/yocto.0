Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8532DE009E4; Thu, 16 Jul 2015 10:22:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43697E009D2
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:01 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHLx1l024602; Thu, 16 Jul 2015 12:21:59 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612215897-1321612 ;
	Thu, 16 Jul 2015 12:21:58 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:21:55 -0500
Message-Id: <e55465db7b5c312da5d3d081f8b9ccfef3395045.1437066998.git.rich.tollerton@ni.com>
X-Mailer: git-send-email 2.4.4
In-Reply-To: <cover.1437066998.git.rich.tollerton@ni.com>
References: <cover.1437066998.git.rich.tollerton@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 07/16/2015 12:21:58 PM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 07/16/2015 12:21:59 PM,
	Serialize complete at 07/16/2015 12:21:59 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-07-16_05:, , signatures=0
Subject: [meta-mono] [PATCH 1/2] mono-basic-4.xx.inc: copy from mono-basic.inc
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:04 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/mono-basic/mono-basic-4.xx.inc | 33 +++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 recipes-mono/mono-basic/mono-basic-4.xx.inc

diff --git a/recipes-mono/mono-basic/mono-basic-4.xx.inc b/recipes-mono/mono-basic/mono-basic-4.xx.inc
new file mode 100644
index 0000000..ad26924
--- /dev/null
+++ b/recipes-mono/mono-basic/mono-basic-4.xx.inc
@@ -0,0 +1,33 @@
+DESCRIPTION = "Visual Basic.NET support in Mono"
+SECTION = "devel/mono"
+DEPENDS = "mono"
+RDEPENDS_${PN} = "mono"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d8c5dc22eb6f25667cf8d96f603635e7"
+
+inherit autotools 
+
+SRC_URI = "http://download.mono-project.com/sources/mono-basic/mono-basic-${PV}.tar.bz2"
+
+FILES_${PN} += " \
+  ${libdir}/mono/*/* \
+  ${libdir}/mono/gac/*/*/*.dll \
+"
+
+FILES_${PN}-dbg += " \
+  ${libdir}/mono/*/*.mdb \
+  ${libdir}/mono/*/*.Pdb \
+  ${libdir}/mono/*/*.Mdb \
+  ${libdir}/mono/*/*/*/*.mdb \
+"
+
+do_compile_prepend() {
+  sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_2_0.make
+  sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_4_0.make
+}
+
+do_install_append() {
+ install -d "${D}${libdir}/mono/4.5"
+ ln -sf ${libdir}/mono/4.0/Microsoft.VisualBasic.dll  ${D}${libdir}/mono/4.5/Microsoft.VisualBasic.dll
+}
+
-- 
2.4.4


