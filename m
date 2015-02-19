Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75706E00831; Thu, 19 Feb 2015 13:43:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id DA2BFE00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 13:43:53 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 19 Feb 2015 22:43:47 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 2F1F62800CB;
	Thu, 19 Feb 2015 22:43:48 +0100 (CET)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <victor.rodriguez.bahena@intel.com>
Date: Thu, 19 Feb 2015 22:43:09 +0100
Message-ID: <1424382189-20469-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: [PATCH] Add mpich support
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
X-List-Received-Date: Thu, 19 Feb 2015 21:43:56 -0000
Content-Type: text/plain

From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>

This patch add mpich support to yocto in order to run MPI framework on embedded
systems.

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
---
 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 29 +++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..2f4226e
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,29 @@
+SUMMARY = "Message Passing Interface(MPI) implementation"
+HOMEPAGE = "http://git.mpich.org/mpich.git/"
+SECTION = "devel"
+
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"
+
+SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
+SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
+SRC_URI[sha256sum] = "455ccfaf4ec724d2cf5d8bff1f3d26a958ad196121e7ea26504fd3018757652d"
+
+RDEPENDS_${PN} += "bash perl tcsh"
+S = "${WORKDIR}/${PN}-${PV}"
+
+EXTRA_OECONF = "--enable-debuginfo \
+                --enable-fast \
+                --enable-shared  \
+                --disable-f77 \
+                --disable-fc \
+                --disable-fortran \
+                --disable-cxx"
+
+inherit autotools-brokensep gettext
+
+do_configure_prepend() {
+    autoreconf --verbose --install --force -I . -I confdb/ -I maint/
+    oe_runconf
+    exit
+}
-- 
1.9.1


