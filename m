Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C3E6E00DE4; Thu,  8 Feb 2018 21:49:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A6C9E0082E
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 21:49:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Feb 2018 21:49:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,482,1511856000"; d="scan'208";a="33335927"
Received: from andromeda02.png.intel.com ([10.221.183.11])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2018 21:49:08 -0800
From: Chang Rebecca Swee Fun <rebecca.swee.fun.chang@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  9 Feb 2018 13:43:56 +0800
Message-Id: <1518155036-55688-1-git-send-email-rebecca.swee.fun.chang@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: alexander.kanavin@intel.com, alex.kanavin@gmail.com
Subject: [RFC] [auh] [PATCH] upgrade-helper.conf: add a template for easy deployment
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
X-List-Received-Date: Fri, 09 Feb 2018 05:49:12 -0000

Settings mentioned in the README have been ported over and now users
are able to copy and start modifying for personal use cases.
This file will served as a reference to minimize errors when users
trying to create a new conf file by following the README.

Signed-off-by: Chang Rebecca Swee Fun <rebecca.swee.fun.chang@intel.com>
---
 upgrade-helper.conf | 70 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 upgrade-helper.conf

diff --git a/upgrade-helper.conf b/upgrade-helper.conf
new file mode 100644
index 0000000..c9cc150
--- /dev/null
+++ b/upgrade-helper.conf
@@ -0,0 +1,70 @@
+#
+# This file is your upgrade-helper configuration files and is where all local user
+# settings specifically for AUH are placed. The comments in this file provide some
+# guidelines to the options a new user to AUH tool might want to change.
+#
+# This file should be placed inside your BUILDDIR/upgrade-helper after initializing
+# the OE build environment.
+#
+# Lines starting with the '#' character are commented out and in some cases the
+# default values are provided as comments to show people example syntax. Enabling
+# the option is a question of removing the # character and making any change to the
+# variable as required.
+
+[maintainer_override]
+# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
+# see also the global_maintainer_override option
+jane.doe@doe.com=john.doe@doe.com
+johhny.bravo@bravo.com=john.doe@doe.com
+
+[settings]
+# recipes in blacklist will be skipped
+blacklist=python glibc gcc
+
+# only recipes belonging to maintainers in whitelist will be attempted
+maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
+
+# email for all recipe upgrades will go to john.doe, except those listed
+# in specific maintainer_override entries above
+global_maintainer_override=john.doe@doe.com
+
+# SMTP server
+# Optional if your are running AUH locally
+smtp=smtp.my-server.com:25
+
+# from whom should the mails arrive
+from=upgrade.helper@my-server.com
+
+# who should get the status mail with statistics, at the end
+status_recipients=john.doe@doe.com
+
+# specify the directory where work (patches) will be saved (optional)
+#workdir=
+
+# publish url to use in statistics summary (optional)
+#publish_work_url=http://auh.somehost.com/work
+
+# clean sstate directory before upgrading
+clean_sstate=yes
+
+# clean tmp directory before upgrading
+clean_tmp=yes
+
+# Machines to test build with.
+# Append _libc-name to test with alternative C library implementations
+# e.g. qemux86_musl.
+#
+# Buildhistory and testimages will be created only for the first
+# machine in the list, as otherwise it adds enormously to AUH run time.
+machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
+
+# optional features
+buildhistory=no
+testimage=no
+testimage_name=image-custom # defaults to core-image-sato
+
+# to enable upgrade recipes in a layer example for meta-intel
+layer_mode=False
+layer_name=meta-intel
+layer_dir=DIR/meta-intel
+layer_machines=intel-core2-32 intel-corei7-64 intel-quark
-- 
2.7.4


