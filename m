Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62896E007C9; Mon,  9 Jan 2017 02:19:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D714E007A7
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 02:19:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 879A6A0E66;
	Mon,  9 Jan 2017 10:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7BgcwXtFT0D; Mon,  9 Jan 2017 10:19:26 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 57E6EA12FC;
	Mon,  9 Jan 2017 10:19:24 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Mon,  9 Jan 2017 11:18:57 +0100
Message-Id: <1483957138-21658-2-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1483957138-21658-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1483957138-21658-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH v3 2/3] Hotfix: Use tools from sysroot before system PATH
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
X-List-Received-Date: Mon, 09 Jan 2017 10:19:14 -0000

This patch was in iotivity 1.1-rel branch,
 and (wrongly) removed in 1.2.0

So it needed to be reintroduced in upstream 1.2-rel
 and as a patch for 1.2.0, track upstream bug at:
 https://jira.iotivity.org/browse/IOT-1219

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 ...ools-from-sysroot-before-system-PATH-agai.patch | 93 ++++++++++++++++++++++
 recipes-core/iotivity/iotivity_1.2.0.bb            |  1 +
 2 files changed, 94 insertions(+)
 create mode 100644 recipes-core/iotivity/files/0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch

diff --git a/recipes-core/iotivity/files/0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch b/recipes-core/iotivity/files/0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch
new file mode 100644
index 0000000..b8493c0
--- /dev/null
+++ b/recipes-core/iotivity/files/0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch
@@ -0,0 +1,93 @@
+From b0f0c742ec1e1fc223871f6d98b21de09cf024b7 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Fri, 16 Sep 2016 20:22:03 +0200
+Subject: [PATCH 364/364] yocto: Use tools from sysroot before system PATH
+ (again)
+
+Reintroduce existing change that was (wrongly?) removed in:
+
+https://gerrit.iotivity.org/gerrit/#/c/12029/64/build_common/SConscript
+
+Original review at:
+
+https://gerrit.iotivity.org/gerrit/11935
+
+To ensure reproductibily Scons avoids to rely on environment
+ but some systems like Yocto are defining their own cross compiling env.
+
+To deal with those orthogonal paradigms,
+ a new CONFIG_ENVIRONMENT_IMPORT variable has been introduced,
+ It enables import of needed variables (PATH and pkg-config's ones).
+
+Without this change, system tools might be used by scons
+ instead of looking into yocto's sysroot.
+ This is not not wanted and may be less reproductible.
+
+This problem was noticed when building Ostro OS
+ (on a system without all Yocto dependencies)
+ reported error messages were:
+
+  | sh: gdbus-codegen: command not found
+  | /bin/sh: 1: pkg-config: not found
+
+More information about using SCONS along Yocto, check some notes at:
+
+https://bitbucket.org/scons/scons/wiki/Notes
+
+Bug: https://jira.iotivity.org/browse/IOT-1219
+Change-Id: I6af59a590f8be489398623d29cf85c2f00000002
+Origin: https://github.com/TizenTeam/iotivity/tree/sandbox/pcoval/on/master/mine
+Thanks-to: Mikko Ylinen <mikko.ylinen@intel.com>
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+Reviewed-on: https://gerrit.iotivity.org/gerrit/16225
+Tested-by: jenkins-iotivity <jenkins-iotivity@opendaylight.org>
+Reviewed-by: Kishen Maloor <kishen.maloor@intel.com>
+(cherry picked from commit 1085512bc103e987d95a43063e6552f39acd40f2)
+Reviewed-on: https://gerrit.iotivity.org/gerrit/16223
+---
+ build_common/SConscript | 22 +++++++++++++---------
+ 1 file changed, 13 insertions(+), 9 deletions(-)
+
+diff --git a/build_common/SConscript b/build_common/SConscript
+index a9ff494..fff1752 100644
+--- a/build_common/SConscript
++++ b/build_common/SConscript
+@@ -194,13 +194,19 @@ if target_os in targets_support_cc:
+ 	if prefix or tc_path:
+ 		print tc_set_msg
+ 
+-# If cross-compiling, honor environment settings for toolchain to avoid picking up native tools
+-if os.environ.get('PKG_CONFIG') != None:
+-	env["ENV"]["PKG_CONFIG"] = os.environ.get("PKG_CONFIG")
+-if os.environ.get('PKG_CONFIG_PATH') != None:
+-	env["ENV"]["PKG_CONFIG_PATH"] = os.environ.get("PKG_CONFIG_PATH")
+-if os.environ.get('PKG_CONFIG_SYSROOT_DIR') != None:
+-	env["ENV"]["PKG_CONFIG_SYSROOT_DIR"] = os.environ.get("PKG_CONFIG_SYSROOT_DIR")
++# Import env variables only if reproductibility is ensured
++if target_os in ['yocto']:
++    env['CONFIG_ENVIRONMENT_IMPORT'] = True
++else:
++    env['CONFIG_ENVIRONMENT_IMPORT'] = False
++
++if env['CONFIG_ENVIRONMENT_IMPORT'] == True:
++    print "warning: importing some environment variables for OS: %s" % target_os
++    for ev in ['PATH', 'PKG_CONFIG', 'PKG_CONFIG_PATH', 'PKG_CONFIG_SYSROOT_DIR']:
++        if os.environ.get(ev) != None:
++            env['ENV'][ev] = os.environ.get(ev)
++    if os.environ['LDFLAGS'] != None:
++        env.AppendUnique(LINKFLAGS = Split(os.environ['LDFLAGS']))
+ 
+ # Ensure scons be able to change its working directory
+ env.SConscriptChdir(1)
+@@ -394,8 +400,6 @@ if target_os == "yocto":
+                         env[tool] = os.path.join(path, os.environ[tool])
+                         break
+         env['CROSS_COMPILE'] = target_prefix[:len(target_prefix) - 1]
+-        if os.environ['LDFLAGS'] != None:
+-            env.AppendUnique(LINKFLAGS = Split(os.environ['LDFLAGS']))
+     except:
+         print "ERROR in Yocto cross-toolchain environment"
+         Exit(1)
+-- 
+1.9.1
+
diff --git a/recipes-core/iotivity/iotivity_1.2.0.bb b/recipes-core/iotivity/iotivity_1.2.0.bb
index 60a2b56..678112b 100644
--- a/recipes-core/iotivity/iotivity_1.2.0.bb
+++ b/recipes-core/iotivity/iotivity_1.2.0.bb
@@ -11,6 +11,7 @@ branch_iotivity = "1.2-rel"
 SRCREV = "1a2e71f9c470c7cc17157f83deb4488ee83050a4"
 SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
 SRC_URI += "file://0081-yocto-Add-aarch64-for-DragonBoard-410c.patch"
+SRC_URI += "file://0364-yocto-Use-tools-from-sysroot-before-system-PATH-agai.patch"
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
 SRCREV_tinycbor = "31c7f81d45d115d2007b1c881cbbd3a19618465c"
-- 
1.9.1


