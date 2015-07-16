Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8BEFE009ED; Thu, 16 Jul 2015 16:16:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 542C2E009D2
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 16:16:26 -0700 (PDT)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GNGMnr014905; Thu, 16 Jul 2015 18:16:22 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071618162208-1332969 ;
	Thu, 16 Jul 2015 18:16:22 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 18:16:11 -0500
Message-Id: <bd83c1905798e715af6e733f25fc98ab9baca4a3.1437083171.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 01/11] mono.bbclass: add
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

The DEPENDS_*, RDEPENDS_*, and FILES_* settings between C# packages
share a lot in common. We can refactor these bits into their own
bbclass:

- DEPEND on mono-native because we need it to compile stuff
- DEPEND on mono to have the native sysroot available
- RDEPEND on mono to make sure we can run the package
- ${PN} contains dlls, exes, and config bits thereof
- ${PN}-dbg contains mono debug (mdb) files
- ${PN}-dev contains:
  - build response (rsp) files
  - machine-readable assembly documentation (xml)
  - xbuild-related files
- ${PN}-doc contains monodoc output

Some C# packages build native code, though, so don't set
PACKAGE_ARCH="all".

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 classes/mono.bbclass | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 classes/mono.bbclass

diff --git a/classes/mono.bbclass b/classes/mono.bbclass
new file mode 100644
index 0000000..315ee82
--- /dev/null
+++ b/classes/mono.bbclass
@@ -0,0 +1,32 @@
+# Class for building C# packages. If your package is all-managed, add
+# PACKAGE_ARCH="all"
+
+DEPENDS += "mono-native mono"
+RDEPENDS_${PN} += "mono"
+
+FILES_${PN} += "\
+  ${libdir}/mono/*/*.exe \
+  ${libdir}/mono/*/*.dll \
+  ${libdir}/mono/*/*.config \
+  ${libdir}/mono/gac/*/*/*.dll \
+  ${libdir}/mono/gac/*/*/*.*.config \
+"
+
+FILES_${PN}-dbg += "\
+  ${libdir}/mono/*/*.mdb \
+  ${libdir}/mono/gac/*/*/*.mdb \
+"
+
+FILES_${PN}-dev += "\
+  ${libdir}/mono/*/*.rsp \
+  ${libdir}/mono/*/*.xml \
+  ${libdir}/mono/gac/*/*/*.xml \
+  ${libdir}/mono/xbuild/* \
+  ${libdir}/mono/xbuild-frameworks/* \
+  ${libdir}/mono/Microsoft* \
+  ${libdir}/mono/*/*.Targets \
+"
+
+FILES_${PN}-doc += "\
+  ${libdir}/monodoc/* \
+"
-- 
2.4.4


