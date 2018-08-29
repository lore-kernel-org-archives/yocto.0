Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3E69E00A6B; Wed, 29 Aug 2018 06:30:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C345BE0097D
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 06:30:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 06:30:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,303,1531810800"; d="scan'208";a="87312220"
Received: from centaurus01.png.intel.com ([10.221.183.13])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2018 06:30:47 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org, richard.purdie@linuxfoundation.org,
	paul.eggleton@intel.com, aaron.chun.yew.chan@intel.com
Date: Wed, 29 Aug 2018 21:25:55 +0800
Message-Id: <20180829132555.23054-6-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
References: <20180829132555.23054-1-aaron.chun.yew.chan@intel.com>
Subject: [yocto-autobuilder-helper][PATCH 6/6] config-intelqa-x86_64-lava.json: Add extension to config.json to support BSP
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
X-List-Received-Date: Wed, 29 Aug 2018 13:30:49 -0000

config-intelqa on x86-64 is an extension to config.json where it
contains the recipes and meta layers to build core-image-sato-sdk on
various supported architectures in Yocto Project.

This is an initial release model on specifying the recipes use to build
the embeddded linux images starting with x86-64 MTURBOT64 (Intel IA).
With this reference, community will inherit the structure and model
benchmark from config-intelqa-<arch>-lava.json to support and build
own hardware on other architectures (e.g arm64, mips64, pcc, x86) on
the same common CI infrastructure (Yocto Autobuilder).

The config-intelqa-<arch>-lava.json will contain the consolidate data in
autobuilder and LAVA (Linaro) to execute independent jobs configuration
respectively. Architecture owners are to work with the respective
maintainers and review their automated hardware tests to ensure common
structure is agree by the current and/or new community.

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config-intelqa-x86_64-lava.json | 163 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 149 insertions(+), 14 deletions(-)

diff --git a/config-intelqa-x86_64-lava.json b/config-intelqa-x86_64-lava.json
index 81e248d..450890c 100644
--- a/config-intelqa-x86_64-lava.json
+++ b/config-intelqa-x86_64-lava.json
@@ -1,23 +1,139 @@
 {
+    "lava-defaults" : {
+        "username" : "< LAVA user >",
+        "token"    : "< LAVA token >",
+        "server"   : "< LAVA server >:< LAVA port >",
+        "interface": "< Board network interface >"
+    },
+    "lava-devices" : {
+        "minnowboard" : {
+            "job_name" : "Minnowboard Turbot with Yocto core-image-sato-sdk (intel-corei7-64)",
+            "priority" : "medium",
+            "visibility" : "public",
+                "timeout" : {
+                "job"        : { "minutes" : 180 },
+                "action"     : { "minutes" : 60 },
+                "connection" : { "minutes" : 60 }
+            },
+            "deploy" : {
+              "timeout" : 60,
+              "to" : "tftp",
+              "kernel" : {
+                "url"  : "${DEPLOY_DIR_IMAGE}bzImage",
+                "type" : "BzImage"
+              },
+              "modules" : {
+                "url" : "${DEPLOY_DIR_IMAGE}modules-intel-corei7-64.tgz",
+                "compression" : "gz"
+              },
+              "nfsrootfs" : {
+                "url" : "${DEPLOY_DIR_IMAGE}core-image-sato-sdk-intel-corei7-64.tar.gz",
+                "compression" : "gz"
+              },
+              "os": "oe"
+            },
+            "boot" : {
+                "timeout" : 60,
+                "method"  : "grub",
+                "commands" : "nfs",
+                "auto_login" : {
+                    "login_prompt" : "'intel-corei7-64 login:'",
+                    "username" : "root"
+                },
+                "prompts" : "'root@intel-corei7-64:~#'"
+            },
+            "test" : {
+                "timeout" : 3600,
+                "name" : "yocto-bsp-test",
+                "definitions" : {
+                    "repository" : "https://git.yoctoproject.org/git/yocto-autobuilder-helper",
+                    "from" : "git",
+                    "path" : "lava-templates/auto-bsp-test.yaml",
+                    "name" : "yocto-bsp-test"
+                }
+            }
+        },
+        "beaglebone-black" : {
+            "job_name" : "Beaglebone with Yocto core-image-sato-sdk (ARM Cortex)",
+            "priority" : "medium",
+            "visibility" : "public",
+            "timeout" : {
+                "job"        : { "minutes" : 180 },
+                "action"     : { "minutes" : 60 },
+                "connection" : { "minutes" : 60 }
+            }
+        },
+        "beaglebone-mx" : {},
+        "x86" : {},
+        "qemu" : {},
+        "dragonboard-410c" : {},
+        "mustang" : {}
+    },
     "overrides" : {
         "nightly-x86-64-bsp" : {
-            "NEEDREPOS" : ["poky", "meta-intel", "meta-openembedded"],
-	    "step1" : {
-                "MACHINE" : "intel-corei7-64",
-                "SDKMACHINE" : "x86_64",
-                "extravars" : [
-                    "DISTRO_FEATURES_append = \" systemd\"",
-                    "IMAGE_INSTALL_append = \" udev util-linux systemd\"",
-                    "CORE_IMAGE_EXTRA_INSTALL_append += \"python3 python3-pip python-pip git socat apt dpkg openssh\"",
-                    "IMAGE_FSTYPES = \"tar.gz\""
+            "MACHINE" : "intel-corei7-64",
+            "DEPLOY_DIR" : "/srv/data/builds",
+            "DEPLOY_DIR_IMAGE" : "${DEPLOY_DIR}/images/${MACHINE}/",
+            "NEEDREPOS" : ["poky", "meta-intel", "meta-openembedded", "meta-security", "meta-ros", "meta-browser"],
+            "step1" : {
+                "SDKMACHINE": "x86_64",
+                "WRITECONFIG": true,
+                "extravars": [
+                    "DISTRO_FEATURES_append = \" systemd ptest\"",
+                    "VIRTUAL-RUNTIME_init_manager = \"systemd\"",
+                    "DISTRO_FEATURES_BACKFILL_CONSIDERED = \"sysvinit\"",
+                    "VIRTUAL-RUNTIME_initscripts = \"\"",
+                    "IMAGE_INSTALL_append = \" php-cli udev util-linux systemd\"",
+                    "EXTRA_IMAGE_FEATURES += \"ptest-pkgs\"",
+                    "CORE_IMAGE_EXTRA_INSTALL_append += \"python3 python3-pip python3-netifaces python3-requests python3-jinja2 python3-twisted python-pip git socat apt dpkg openssh nfs-utils ufw nmap lshw php ser2net xterm xclock xrdb tigervnc x11vnc mailx p7zip firefox glmark2 e2fsprogs-ptest zlib-ptest\"",
+                    "IMAGE_FSTYPES = \"tar.gz\"",
+                    "TEST_SUITES_append = \" bspruntime usb microsd\"",
+                    "TEST_TARGET_IP = ''",
+                    "TEST_SERVER_IP = ''",
+                    "TEST_TARGET = \"simpleremote\"",
+                    "HARDWARE_TEST = \"1\""
+                ],
+                "ADDLAYER": [
+                    "../meta-intel",
+                    "../meta-openembedded/meta-oe",
+                    "../meta-openembedded/meta-python",
+                    "../meta-openembedded/meta-perl",
+                    "../meta-openembedded/meta-networking",
+                    "../meta-security",
+                    "../meta-ros",
+                    "../meta-browser"
                 ],
-                "ADDLAYER" : [
+                "BBTARGETS" : "core-image-sato-sdk",
+                "EXTRAPLAINCMDS" : [
+                    "../yocto-autobuilder-helper/scripts/publish-artefacts build /srv/data/builds nightly-x86-64-bsp;",
+                    "../yocto-autobuilder-helper/lava/run-jinja-parser ../yocto-autobuilder-helper/lava-templates/generate-jobconfig.jinja2 nightly-x86-64-bsp None minnowboard",
+                    "../yocto-autobuilder-helper/lava/trigger-lava-jobs nightly-x86-64-bsp.yaml build/conf/auto.conf /srv/data/LAVA/lava-job;"
+                ]
+            },
+            "step2" : {
+                "WRITECONFIG": false,
+                "ADDLAYER": [
                     "../meta-intel",
-                    "../meta-openembedded"
+                    "../meta-openembedded/meta-oe",
+                    "../meta-openembedded/meta-python",
+                    "../meta-openembedded/meta-perl",
+                    "../meta-openembedded/meta-networking",
+                    "../meta-security",
+                    "../meta-ros",
+                    "../meta-browser"
                 ],
-                "BBTARGETS" : "core-image-sato-sdk"
+                "SANITYTARGETS": "core-image-sato-sdk:do_testimage",
+                "EXTRAPLAINCMDS" : [
+                    "../yocto-autobuilder-helper/lava/resume-lava-jobs --json board_info.json --cmd 'shutdown'"
+                ]
             }
-        }
+        },
+        "nightly-x86-bsp"    : {},
+        "nightly-arm-bsp"    : {},
+        "nightly-arm64-bsp"  : {},
+        "nightly-mips-bsp"   : {},
+        "nightly-mips64-bsp" : {},
+        "nightly-ppc-bsp"    : {}
     },
     "repo-defaults" : {
         "meta-intel" : {
@@ -28,7 +144,26 @@
         "meta-openembedded" : {
             "url" : "git://git.openembedded.org/meta-openembedded",
             "branch" : "master",
-            "revision" : "HEAD"
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
+        "meta-security" : {
+            "url" : "git://git.yoctoproject.org/meta-security",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
+        "meta-ros" : {
+            "url" : "git://github.com/bmwcarit/meta-ros",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
+        },
+        "meta-browser" : {
+            "url" : "git://github.com/OSSystems/meta-browser.git",
+            "branch" : "master",
+            "revision" : "HEAD",
+            "no-layer-add" : true
         }
     }
 }
-- 
2.11.0


