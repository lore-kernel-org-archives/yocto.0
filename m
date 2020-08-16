Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web12.31380.1597613982718898787
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:39:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.110.75
Received: from fiqs.lan (80-110-110-75.cgn.dynamic.surfer.at [80.110.110.75])
	(Authenticated sender: foss@0leil.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPA id 0AFD260005;
	Sun, 16 Aug 2020 21:39:40 +0000 (UTC)
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss@0leil.net>
Subject: [auh] [PATCH RESEND 2/5] upgrade-helper.conf: update comments and default values
Date: Sun, 16 Aug 2020 23:39:32 +0200
Message-Id: <20200816213935.7733-2-foss@0leil.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200816213935.7733-1-foss@0leil.net>
References: <20200816213935.7733-1-foss@0leil.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A few comments were misleading or incomplete and some defaults were incorrect.

Signed-off-by: Quentin Schulz <foss@0leil.net>
---
 - RESEND because I was not subscribed to the ML with this address already,
 - please ignore, resent only for archive purposes on the ML, this patch
   has been merged already

 upgrade-helper.conf | 37 +++++++++++++++++++++++++------------
 1 file changed, 25 insertions(+), 12 deletions(-)

diff --git a/upgrade-helper.conf b/upgrade-helper.conf
index e926300..5696564 100644
--- a/upgrade-helper.conf
+++ b/upgrade-helper.conf
@@ -9,7 +9,7 @@
 # Lines starting with the '#' character are commented out and in some cases the
 # default values are provided as comments to show people example syntax. Enabling
 # the option is a question of removing the # character and making any change to the
-# variable as required.
+# variable as required. For boolean settings, anything not 'yes' is treated as 'no'.
 
 [maintainer_override]
 # e-mail message for recipe upgrades will go to john.doe instead of jane.doe, etc
@@ -22,10 +22,12 @@
 # If you are running AUH locally, you do not need to set this up, as AUH
 # saves everything to BUILDDIR/upgrade-helper/<timestamp>, and does not attempt
 # to send email messages (unless explicitly asked with -e command line option).
+# If no port is specified, port 25 is assumed.
 #smtp=smtp.my-server.com:25
 
-# from whom should the e-mails be sent.
-#from=upgrade.helper@my-server.com
+# from whom should the e-mails be sent (mandatory if --send-emails is passed).
+# Also sets the email address of the author of automated commits.
+#from=uh@not.set
 
 # If enabled, emails for all recipe upgrades will go to john.doe, 
 # except when recipes are owned by specific maintainer_override entries above.
@@ -34,7 +36,8 @@
 # who should be CCd with all upgrade emails (optional)
 #cc_recipients=john.doe@doe.com
 
-# who should get the status mail with statistics, at the end (optional)
+# who should get the status mail with statistics, at the end (mandatory if
+# --send-emails is passed)
 #status_recipients=john.doe@doe.com
 
 # Only recipes belonging to maintainers in whitelist will be attempted
@@ -43,7 +46,8 @@
 # will attempt when it is run with 'all' option.
 #maintainers_whitelist=jane.doe@doe.com john.doe@doe.com johhny.bravo@bravo.com
 
-# recipes in blacklist will be skipped
+# recipes in blacklist will be skipped (applies only when 'all' or no recipe is
+# passed; does not apply when layer_mode is enabled).
 #blacklist=python glibc gcc
 
 # specify the directory where work (patches) will be saved 
@@ -55,11 +59,11 @@
 
 # clean sstate directory before upgrading
 # Generally not necessary, as bitbake can handle this automatically.
-#clean_sstate=yes
+#clean_sstate=no
 
 # clean tmp directory before upgrading
 # Generally not necessary as bitbake can handle this automatically.
-#clean_tmp=yes
+#clean_tmp=no
 
 # Machines to test build with.
 # Append _libc-name to test with alternative C library implementations
@@ -71,11 +75,15 @@
 # AUH has a reasonable default for this, so you do not need to set your own,
 # at least initially.
 #
-#machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
+# Does not apply when layer_mode is enabled.
+#machines=qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl
 
 # Enables buildhistory feature; this is useful as it produces information
 # about what has changed in the resulting packages, compared to previous version
-#buildhistory=yes
+#
+# Requires 'buildhistory' to be present in INHERIT and BUILDHISTORY_COMMIT to be set
+# in your conf/local.conf.
+#buildhistory=no
 
 # When AUH has built an upgraded recipe it then creates a commit with the upgrade.
 # This setting specifies whether to also revert the commit. Possible values are:
@@ -92,16 +100,21 @@
 
 # If enabled, build and boots a test image, and runs integration tests on it
 # If upgraded packages have ptest support those are run as well
-#testimage=no
 #
+# Requires 'testimage' in INHERIT in your conf/local.conf and 'ptest' in your
+# distro's DISTRO_FEATURES.
+#testimage=no
+
 # This can be used to change the name of the test image.
 #
-#testimage_name=image-custom # defaults to core-image-sato
+#testimage_name=core-image-sato
 
 # This can be used to upgrade recipes in a specific layer,
 # for example meta-intel, instead of upgrading oe-core recipes.
 #
-#layer_mode=False
+# When layer_mode is enabled, layer_name, layer_dir and layer_machines are
+# mandatory. 'blacklist' setting does not apply when in layer_mode.
+#layer_mode=no
 #layer_name=meta-intel
 #layer_dir=DIR/meta-intel
 #layer_machines=intel-core2-32 intel-corei7-64 intel-quark
-- 
2.26.2

