Return-Path: <rich.tollerton@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E647FE009DF; Thu, 16 Jul 2015 10:22:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44A31E009E4
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:22:01 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t6GHLx1m024602; Thu, 16 Jul 2015 12:21:59 -0500
Received: from weregild.amer.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015071612215897-1321613 ;
	Thu, 16 Jul 2015 12:21:58 -0500 
From: Richard Tollerton <rich.tollerton@ni.com>
To: yocto@yoctoproject.org, ajlennon@dynamicdevices.co.uk
Date: Thu, 16 Jul 2015 12:21:56 -0500
Message-Id: <794659c68fd7871ed801d5f76fdfb3a4d8bf583a.1437066998.git.rich.tollerton@ni.com>
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
Subject: [meta-mono] [PATCH 2/2] mono-basic: add version 4.0
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
X-List-Received-Date: Thu, 16 Jul 2015 17:22:01 -0000

Signed-off-by: Richard Tollerton <rich.tollerton@ni.com>
---
 recipes-mono/mono-basic/mono-basic-4.xx.inc | 4 ++--
 recipes-mono/mono-basic/mono-basic_4.0.bb   | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)
 create mode 100644 recipes-mono/mono-basic/mono-basic_4.0.bb

diff --git a/recipes-mono/mono-basic/mono-basic-4.xx.inc b/recipes-mono/mono-basic/mono-basic-4.xx.inc
index ad26924..1eec933 100644
--- a/recipes-mono/mono-basic/mono-basic-4.xx.inc
+++ b/recipes-mono/mono-basic/mono-basic-4.xx.inc
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=d8c5dc22eb6f25667cf8d96f603635e7"
 
 inherit autotools 
 
-SRC_URI = "http://download.mono-project.com/sources/mono-basic/mono-basic-${PV}.tar.bz2"
+SRC_URI = "https://github.com/mono/mono-basic/archive/${PV}.tar.gz"
 
 FILES_${PN} += " \
   ${libdir}/mono/*/* \
@@ -22,8 +22,8 @@ FILES_${PN}-dbg += " \
 "
 
 do_compile_prepend() {
-  sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_2_0.make
   sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_4_0.make
+  sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_4_5.make
 }
 
 do_install_append() {
diff --git a/recipes-mono/mono-basic/mono-basic_4.0.bb b/recipes-mono/mono-basic/mono-basic_4.0.bb
new file mode 100644
index 0000000..af674cd
--- /dev/null
+++ b/recipes-mono/mono-basic/mono-basic_4.0.bb
@@ -0,0 +1,5 @@
+require mono-basic-4.xx.inc
+
+SRC_URI[md5sum] = "c0783a53234ba878a103fcbc2f10630d"
+SRC_URI[sha256sum] = "1760936b2b4d780fb69ccf230280216836d28a2c49d08f483afe2c3192d8359d"
+
-- 
2.4.4


