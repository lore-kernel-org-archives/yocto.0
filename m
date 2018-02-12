Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A15C8E00E41; Mon, 12 Feb 2018 07:47:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A82E00D1C
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 07:47:10 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Feb 2018 07:47:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,501,1511856000"; d="scan'208";a="29396508"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2018 07:47:08 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Feb 2018 17:40:50 +0200
Message-Id: <20180212154051.17855-1-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
Subject: [PATCH][auh 1/2] upgrade-helper.conf: add a template for easy deployment
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
X-List-Received-Date: Mon, 12 Feb 2018 15:47:11 -0000

From: Chang Rebecca Swee Fun <rebecca.swee.fun.chang@intel.com>

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
2.15.1


