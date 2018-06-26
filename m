Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3DB4E00DD1; Mon, 25 Jun 2018 18:51:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6382EE00C5B
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2018 18:51:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jun 2018 18:51:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,272,1526367600"; d="scan'208";a="51884321"
Received: from aaronchu-mobl1.png.intel.com ([10.221.17.73])
	by orsmga007.jf.intel.com with ESMTP; 25 Jun 2018 18:51:34 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Tue, 26 Jun 2018 09:51:31 +0800
Message-Id: <1529977891-8099-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] Add config support intel-corei7-64
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
X-List-Received-Date: Tue, 26 Jun 2018 01:51:42 -0000

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/config-intel-lava.json | 129 +++++++++++++++++++++++++++++++++++++++++
 scripts/utils.py               |   2 +-
 2 files changed, 130 insertions(+), 1 deletion(-)
 create mode 100644 scripts/config-intel-lava.json

diff --git a/scripts/config-intel-lava.json b/scripts/config-intel-lava.json
new file mode 100644
index 0000000..76bb4f5
--- /dev/null
+++ b/scripts/config-intel-lava.json
@@ -0,0 +1,129 @@
+{
+    "BASE_HOMEDIR" : "~",
+    "BASE_SHAREDDIR" : "/srv/www/vhosts/autobuilder.yoctoproject.org",
+
+    "defaults" : {
+        "NEEDREPOS" : ["poky"],
+        "DISTRO" : "poky",
+        "SDKMACHINE" : "i686",
+        "PACKAGE_CLASSES" : "package_rpm package_deb package_ipk",
+        "PRSERV" : "PRSERV_HOST = 'localhost:0'",
+        "DLDIR" : "DL_DIR = '${BASE_SHAREDDIR}/current_sources'",
+        "SSTATEDIR" : ["SSTATE_DIR ?= '${BASE_SHAREDDIR}/pub/sstate'"],
+        "SSTATEDIR_RELEASE" : ["SSTATE_MIRRORS += 'file://.* file://${BASE_SHAREDDIR}/pub/sstate/PATH'", "SSTATE_DIR ?= '/srv/www/vhosts/downloads.yoctoproject.org/sstate/@RELEASENUM@'"],
+        "SDKEXTRAS" : ["SSTATE_MIRRORS += '\\", "file://.* http://sstate.yoctoproject.org/dev/@RELEASENUM@PATH;downloadfilename=PATH'"],
+        "BUILDINFO" : false,
+        "BUILDINFOVARS" : ["INHERIT += 'image-buildinfo'", "IMAGE_BUILDINFO_VARS_append = ' IMAGE_BASENAME IMAGE_NAME'"],
+        "WRITECONFIG" : true,
+        "SENDERRORS" : true,
+        "extravars" : [
+            "QEMU_USE_KVM = 'True'",
+            "INHERIT += 'report-error'",
+            "PREMIRRORS = ''",
+            "BB_GENERATE_MIRROR_TARBALLS = '1'",
+            "BB_NUMBER_THREADS = '16'",
+            "PARALLEL_MAKE = '-j 16'",
+            "BB_TASK_NICE_LEVEL = '5'",
+            "BB_TASK_NICE_LEVEL_task-testimage = '0'",
+            "BB_TASK_IONICE_LEVEL = '2.7'",
+            "BB_TASK_IONICE_LEVEL_task-testimage = '2.1'",
+            "INHERIT += 'testimage'",
+            "TEST_QEMUBOOT_TIMEOUT = '1500'",
+            "SANITY_TESTED_DISTROS = ''",
+            "SDK_EXT_TYPE = 'minimal'",
+            "SDK_INCLUDE_TOOLCHAIN = '1'"
+        ]
+    },
+    "overrides" : {
+        "nightly-x86-64-bsp" : {
+            "MACHINE" : "intel-corei7-64",
+            "SDKMACHINE" : "x86_64",
+            "extravars" : [
+                "DISTRO_FEATURES_append = \" systemd\"",
+                "IMAGE_INSTALL_append = \" udev util-linux systemd\"",
+                "CORE_IMAGE_EXTRA_INSTALL_append += \"python3 python3-pip git socat apt dpkg openssh\"",
+                "IMAGE__FSTYPES = \"tar.gz\""
+            ],
+            "NEEDREPOS" : ["poky", "meta-intel", "meta-minnow", "meta-openembedded"],
+            "step1" : {
+                "ADDLAYER" : [
+                    "../meta-intel",
+                    "../meta-minnow"
+                ],
+                "BBTARGETS" : "core-image-sato-sdk"
+            }
+        }
+    },
+    "repo-defaults" : {
+        "poky" : {
+            "url" : "git://git.yoctoproject.org/poky",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "checkout-dirname" : ".",
+            "no-layer-add" : true,
+            "call-init" : true
+        },
+        "meta-intel" : {
+            "url" : "git://git.yoctoproject.org/meta-intel-contrib",
+            "branch" : "anujm/next",
+            "revision" : "HEAD"
+        },
+        "oecore" : {"url" : "git://git.openembedded.org/openembedded-core",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "checkout-dirname" : ".",
+            "no-layer-add" : true,
+            "call-init" : true
+        },
+        "bitbake" : {
+            "url" : "git://git.openembedded.org/bitbake",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
+        "eclipse-poky-neon" : {
+            "url" : "git://git.yoctoproject.org/eclipse-yocto",
+            "branch" : "neon-master",
+            "revision" : "HEAD",
+            "checkout-dirname" : ".",
+            "no-layer-add" : true
+        },
+        "eclipse-poky-oxygen" : {
+            "url" : "git://git.yoctoproject.org/eclipse-yocto",
+            "branch" : "oxygen-master",
+            "revision" : "HEAD",
+            "checkout-dirname" : ".",
+            "no-layer-add" : true
+        },
+        "meta-qt4" : {
+            "url" : "git://git.yoctoproject.org/meta-qt4",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
+        "meta-qt3" : {
+            "url" : "git://git.yoctoproject.org/meta-qt3",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
+        "meta-mingw" : {
+            "url" : "git://git.yoctoproject.org/meta-mingw",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
+        "meta-gplv2" : {
+            "url" : "git://git.yoctoproject.org/meta-gplv2",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
+        "meta-minnow" : {
+            "url" : "https://github.com/alimhussin2/meta-minnow",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
+        "meta-openembedded" : {
+            "url" : "git://git.openembedded.org/meta-openembedded",
+            "branch" : "master",
+            "revision" : "HEAD"
+        }
+    }
+}
diff --git a/scripts/utils.py b/scripts/utils.py
index 7c6535c..d1c3168 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -146,7 +146,7 @@ def loadconfig():
     for f in files.split():
         p = f
         if not f.startswith("/"):
-            p = os.path.join(scriptsdir, '..', f)
+            p = os.path.join(scriptsdir, f)
         with open(p) as j:
             config = json.load(j)
             for c in config:
-- 
2.7.4


