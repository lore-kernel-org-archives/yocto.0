Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 714B8E00E44; Mon, 12 Feb 2018 07:47:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D53DE00DAE
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 07:47:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Feb 2018 07:47:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,501,1511856000"; d="scan'208";a="29396509"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2018 07:47:09 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Feb 2018 17:40:51 +0200
Message-Id: <20180212154051.17855-2-alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <20180212154051.17855-1-alexander.kanavin@linux.intel.com>
References: <20180212154051.17855-1-alexander.kanavin@linux.intel.com>
Subject: [PATCH][auh 2/2] Improve README and sample config file.
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
X-List-Received-Date: Mon, 12 Feb 2018 15:47:12 -0000

Specifically, add more information about various config settings,
add a few important points to README, and remove config file specifics
from README, so that there's only one source for what the settings are
(the sample config file).

Also comment out everything from the config file, so that those in a
hurry can take it into use immediately. Most settings are specific to
a maintainer, and so can't be provided in a 'generic' way.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README              | 83 +++++++++------------------------------------------
 upgrade-helper.conf | 85 +++++++++++++++++++++++++++++++++--------------------
 2 files changed, 67 insertions(+), 101 deletions(-)

diff --git a/README b/README
index 4a8181f..4752dc6 100644
--- a/README
+++ b/README
@@ -27,67 +27,8 @@ Setup
    undesirable ways.
 
 2. Prepare a configuration file, by default in $BUILDDIR/upgrade-helper/
-   upgrade-helper.conf, as below:
-
---------------- snip ---------------
-[maintainer_override]
-# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
-# see also the global_maintainer_override option
-jane.doe@doe.com=john.doe@doe.com
-johhny.bravo@bravo.com=john.doe@doe.com
-
-[settings]
-# recipes in blacklist will be skipped
-blacklist=python glibc gcc
-
-# only recipes belonging to maintainers in whitelist will be attempted
-maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
-
-# email for all recipe upgrades will go to john.doe, except those listed
-# in specific maintainer_override entries above
-global_maintainer_override=john.doe@doe.com
-
-# SMTP server
-smtp=smtp.my-server.com:25
-
-# from whom should the mails arrive
-from=upgrade.helper@my-server.com
-
-# who should get the status mail with statistics, at the end
-status_recipients=john.doe@doe.com
-
-# specify the directory where work (patches) will be saved (optional)
-#workdir=
-
-# publish url to use in statistics summary (optional)
-#publish_work_url=http://auh.somehost.com/work
-
-# clean sstate directory before upgrading
-clean_sstate=yes
-
-# clean tmp directory before upgrading
-clean_tmp=yes
-
-# Machines to test build with.
-# Append _libc-name to test with alternative C library implementations
-# e.g. qemux86_musl.
-#
-# Buildhistory and testimages will be created only for the first
-# machine in the list, as otherwise it adds enormously to AUH run time.
-machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
-
-# optional features
-buildhistory=no
-testimage=no
-testimage_name=image-custom # defaults to core-image-sato
-
-# to enable upgrade recipes in a layer example for meta-intel
-layer_mode=False
-layer_name=meta-intel
-layer_dir=DIR/meta-intel
-layer_machines=intel-core2-32 intel-corei7-64 intel-quark
-
---------------- snip ---------------
+   upgrade-helper.conf. A sample file is provided in AUH source tree;
+   it can be used as-is, or tweaked further.
 
 3. Enable distrodata and supply appropriate additional metadata. For
    example, you could add the following to your conf/local.conf:
@@ -99,13 +40,13 @@ INHERIT =+ "distrodata"
 WARNING: if you are using the default maintainers.inc file supplied
          with Poky (in meta-yocto) and you don't set a
          maintainers_whitelist or (global_)maintainer_override in the
-         upgrade-helper configuration as above, and you specify "all"
+         upgrade-helper configuration as above, and you specify "-e all"
          on the command line, the script will automatically send out
          emails to the default maintainers. Please be careful not to
          do this :)
 
-4. If you want to enable buildhistory (optional) you need to enable in
-upgrade-helper.conf also add the following lines to your conf/local.conf
+4. If you want to enable buildhistory (optional) you need to enable it in
+upgrade-helper.conf, and also add the following lines to your conf/local.conf
 file:
 
 --------------- snip ---------------
@@ -135,10 +76,6 @@ a vncserver example:
 $ vncserver :1
 $ export DISPLAY=:1
 
-If upgrade is succesful testimage/ptest results are generated into
-$BUILDDIR/upgrade-helper/work/recipe/ptest_recipe.log if recipe support
-ptest.
-
 (Do not remove any other inherited class in the process, e.g. distrodata).
 
 Usage
@@ -152,10 +89,18 @@ Some manual usage examples:
 * To upgrade the xmodmap recipe to a user specified version:
     $ upgrade-helper.py xmodmap -t 1.2.3
 
+* To upgrade all recipes to latest available versions, without 
+  sending any emails:
+    $ upgrade-helper.py all
+
 * To attempt to upgrade all recipes and automatically send email
   messages to maintainers for each attempted recipe as well as a
   status mail at the end, use:
-    $ upgrade-helper.py all
+    $ upgrade-helper.py -e all
+
+The results of the AUH run (patches, logs and any other relevant information)
+are then found in ${BUILDDIR}/upgrade-helper/<timestamp>. AUH will also
+create recipe update commits from successful upgrade attempts in the layer tree.
 
 If you wish to run the script on a regular basis, you can set up a cron
 job; the "weeklyjob.sh" file distributed with this project is the basis
diff --git a/upgrade-helper.conf b/upgrade-helper.conf
index c9cc150..b84b407 100644
--- a/upgrade-helper.conf
+++ b/upgrade-helper.conf
@@ -4,7 +4,7 @@
 # guidelines to the options a new user to AUH tool might want to change.
 #
 # This file should be placed inside your BUILDDIR/upgrade-helper after initializing
-# the OE build environment.
+# the OE build environment (this location can be overriden with -c command line option).
 #
 # Lines starting with the '#' character are commented out and in some cases the
 # default values are provided as comments to show people example syntax. Enabling
@@ -12,43 +12,51 @@
 # variable as required.
 
 [maintainer_override]
-# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
+# e-mail message for recipe upgrades will go to john.doe instead of jane.doe, etc
 # see also the global_maintainer_override option
-jane.doe@doe.com=john.doe@doe.com
-johhny.bravo@bravo.com=john.doe@doe.com
+#jane.doe@doe.com=john.doe@doe.com
+#johhny.bravo@bravo.com=john.doe@doe.com
 
 [settings]
-# recipes in blacklist will be skipped
-blacklist=python glibc gcc
+# SMTP server that is used to send e-mails with patches and other information.
+# If you are running AUH locally, you do not need to set this up, as AUH
+# saves everything to BUILDDIR/upgrade-helper/<timestamp>, and does not attempt
+# to send email messages (unless explicitly asked with -e command line option).
+#smtp=smtp.my-server.com:25
 
-# only recipes belonging to maintainers in whitelist will be attempted
-maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
+# from whom should the e-mails be sent.
+#from=upgrade.helper@my-server.com
 
-# email for all recipe upgrades will go to john.doe, except those listed
-# in specific maintainer_override entries above
-global_maintainer_override=john.doe@doe.com
+# If enabled, emails for all recipe upgrades will go to john.doe, 
+# except when recipes are owned by specific maintainer_override entries above.
+#global_maintainer_override=john.doe@doe.com
 
-# SMTP server
-# Optional if your are running AUH locally
-smtp=smtp.my-server.com:25
+# who should get the status mail with statistics, at the end (optional)
+#status_recipients=john.doe@doe.com
 
-# from whom should the mails arrive
-from=upgrade.helper@my-server.com
+# Only recipes belonging to maintainers in whitelist will be attempted
+# Insert your own e-mail address here together with any other maintainers' addresses
+# whose recipes you wish to take care of. This restricts the set of recipes that AUH
+# will attempt when it is run with 'all' option.
+#maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
 
-# who should get the status mail with statistics, at the end
-status_recipients=john.doe@doe.com
+# recipes in blacklist will be skipped
+#blacklist=python glibc gcc
 
-# specify the directory where work (patches) will be saved (optional)
+# specify the directory where work (patches) will be saved 
+# (optional; default is BUILDDIR/upgrade-helper/)
 #workdir=
 
-# publish url to use in statistics summary (optional)
+# public url with AUH results to include in statistics summary (optional)
 #publish_work_url=http://auh.somehost.com/work
 
 # clean sstate directory before upgrading
-clean_sstate=yes
+# Generally not necessary, as bitbake can handle this automatically.
+#clean_sstate=yes
 
 # clean tmp directory before upgrading
-clean_tmp=yes
+# Generally not necessary as bitbake can handle this automatically.
+#clean_tmp=yes
 
 # Machines to test build with.
 # Append _libc-name to test with alternative C library implementations
@@ -56,15 +64,28 @@ clean_tmp=yes
 #
 # Buildhistory and testimages will be created only for the first
 # machine in the list, as otherwise it adds enormously to AUH run time.
-machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
+#
+# AUH has a reasonable default for this, so you do not need to set your own,
+# at least initially.
+#
+#machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
 
-# optional features
-buildhistory=no
-testimage=no
-testimage_name=image-custom # defaults to core-image-sato
+# Enables buildhistory feature; this is useful as it produces information
+# about what has changed in the resulting packages, compared to previous version
+#buildhistory=yes
 
-# to enable upgrade recipes in a layer example for meta-intel
-layer_mode=False
-layer_name=meta-intel
-layer_dir=DIR/meta-intel
-layer_machines=intel-core2-32 intel-corei7-64 intel-quark
+# If enabled, build and boots a test image, and runs integration tests on it
+# If upgraded packages have ptest support those are run as well
+#testimage=no
+#
+# This can be used to change the name of the test image.
+#
+#testimage_name=image-custom # defaults to core-image-sato
+
+# This can be used to upgrade recipes in a specific layer,
+# for example meta-intel, instead of upgrading oe-core recipes.
+#
+#layer_mode=False
+#layer_name=meta-intel
+#layer_dir=DIR/meta-intel
+#layer_machines=intel-core2-32 intel-corei7-64 intel-quark
-- 
2.15.1


