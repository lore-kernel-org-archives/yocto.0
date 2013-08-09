Return-Path: <Holger.Behrens@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D684E015F7
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 03:49:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r79An42A029102
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 Aug 2013 03:49:05 -0700 (PDT)
Received: from ism-holger-l1.corp.ad.wrs.com (128.224.204.228) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 9 Aug 2013 03:49:04 -0700
From: Holger Behrens <holger.behrens@windriver.com>
To: <florin.sarbu@windriver.com>, <holger@windriver.com>
Date: Fri, 9 Aug 2013 12:48:47 +0200
Message-ID: <1376045330-17216-5-git-send-email-holger.behrens@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
References: <1376045330-17216-1-git-send-email-holger.behrens@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, genivi-meta-ivi@lists.genivi.org,
	yocto@yoctoproject.org
Subject: [meta-ivi][PATCH 5/8] poky-ivi-systemd.conf: follow poky.conf changes, cleanup
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
X-List-Received-Date: Fri, 09 Aug 2013 10:49:08 -0000
Content-Type: text/plain

* do not require meta/conf/distro/defaultsetup.conf
* set PREFERRED_PROVIDER_jpeg distro wide (instead of machine)
* merge in poky.conf changes done lately

Signed-off-by: Holger Behrens <holger.behrens@windriver.com>
---
 conf/distro/poky-ivi-systemd.conf |   60 ++++++++++++++++++++++++++++++++-----
 1 file changed, 52 insertions(+), 8 deletions(-)

diff --git a/conf/distro/poky-ivi-systemd.conf b/conf/distro/poky-ivi-systemd.conf
index fe66488..61b8aa9 100644
--- a/conf/distro/poky-ivi-systemd.conf
+++ b/conf/distro/poky-ivi-systemd.conf
@@ -1,16 +1,33 @@
-require ${COREBASE}/meta/conf/distro/defaultsetup.conf
-
+DISTRO = "poky-ivi-systemd"
+DISTRO_NAME = "Yocto GENIVI Baseline (Poky/meta-ivi)"
 DISTRO_VERSION = "4.0+snapshot-${DATE}"
+DISTRO_CODENAME ="gemini"
+
+MAINTAINER = "meta-ivi <genivi-meta-ivi@lists.genivi.org>"
+
+TARGET_VENDOR = "-poky"
+
+LAYER_CONF_VERSION ?= "6"
+
+include conf/distro/include/default-providers-ivi.inc
 
 VIRTUAL-RUNTIME_init_manager = "systemd"
 VIRTUAL-RUNTIME_initscripts = ""
 
-include conf/distro/include/default-providers-ivi.inc
+DISTRO_FEATURES_append = " bluetooth systemd opengl wayland"
+DISTRO_FEATURES_BACKFILL_CONSIDERED_append = "sysvinit"
+
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.8%"
 
-DISTRO_FEATURES += " bluetooth systemd opengl "
-DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
+PREFERRED_PROVIDER_jpeg = "jpeg"
+PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
 
-LAYER_CONF_VERSION = "6"
+TCLIBCAPPEND = ""
+
+QEMU_TARGETS ?= "arm i386 x86_64"
 
 XSERVER ?= "xserver-xorg \
            xserver-xf86-config \
@@ -28,10 +45,37 @@ XSERVER ?= "xserver-xorg \
            ${@base_contains("MACHINE_ARCH", "vexpressa9", "xf86-video-fbdev", "", d)} \
           "
 
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
-
 MIRRORS =+ "\
 ftp://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \n \
 http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n \
 https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
 
+# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
+# fetch from the network (and warn you if not). To disable the test set
+# the variable to be empty.
+# Git example url: git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD
+
+CONNECTIVITY_CHECK_URIS ?= " \
+             https://eula-downloads.yoctoproject.org/index.php \
+             http://bugs.genivi.org/report.cgi"
+
+# Default hash policy for distro
+BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
+#
+# OELAYOUT_ABI allows us to notify users when the format of TMPDIR changes in
+# an incompatible way. Such changes should usually be detailed in the commit
+# that breaks the format and have been previously discussed on the mailing list
+# with general agreement from the core team.
+#
+OELAYOUT_ABI = "8"
+
+# QA check settings - a little stricter than the OE-Core defaults
+WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir"
+ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
+            useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
+            compile-host-path dep-cmp installed-vs-shipped install-host-path \
+            packages-list perm-config perm-line perm-link pkgv-undefined \
+            pn-overrides split-strip var-undefined"
+
+include conf/distro/include/seperatebuilddir.inc
+
-- 
1.7.9.5


