Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A910CE0084F; Thu, 19 Feb 2015 18:21:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D53E00831
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 18:21:47 -0800 (PST)
Received: by iecrd18 with SMTP id rd18so4734981iec.8
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 18:21:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id;
	bh=eDfybtOINpk+GLCRUHpWtuQ9Y7nyWZUIXVX3/SDBG8Q=;
	b=RGh//OQxMJN/PU+3W2kpHZJW6eTLHUltn4Kn4sGBGlc//OpqOV7WwxPclUCH3vi2Xk
	JS98TwRqFUIQJMhN4efO8SgzAdMBs03GPdsbSfEb7lL503728iCE5n8HhVDeUd6QhGKJ
	PLEND8qw3zRxscVdVYeAj/sq51b8IsmMAtpWj/2YNbrQclvUd1bYvfGgA1T5A9ArgPhw
	gCsGxQAVBu1FFa/mmablO9M0NmGaGbKW672dzyDKl9PQRz1gOk5fJjujOXLfXZGksjdM
	azKbd8k6RQVIpOj03ix25Eeif4jRVOQyvvKOn/xDvp67WOCgbXBTegw+l/tGEGD7zrm1
	Do5Q==
X-Gm-Message-State: ALoCoQlnuonPvqntUBa79KBGMNWbOEfb4GsEim7deRslovtiGuXY59cYGFSTYWmz2Epjwf0c5qUd
X-Received: by 10.50.4.40 with SMTP id h8mr14365497igh.34.1424398906527;
	Thu, 19 Feb 2015 18:21:46 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id t5sm134145ign.12.2015.02.19.18.21.45
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Feb 2015 18:21:45 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Feb 2015 21:22:39 -0500
Message-Id: <1424398960-14689-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [autobuilder][PATCH 1/2] config: support configuration templates
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
X-List-Received-Date: Fri, 20 Feb 2015 02:21:52 -0000

Move yocto-controller and yocto-worker to .template versions and update
the setup script to move them in the expected location if they aren't
already preset, allowing local configurations to make whatever changes
they need in the yocto-[controller|worker] directories without issues on a
pull and without having to resort to tools like git-diff and git-checkout
to try alternate configurations.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .gitignore                                         |  15 ++-------
 yocto-autobuilder-setup                            |  37 +++++++++++++++++++++
 .../Makefile                                       |   0
 .../buildbot.tac.example                           |   0
 .../buildbot.tac.standard                          |   0
 .../controller.cfg.example                         |   0
 .../public_html/bg_gradient.jpg                    | Bin
 .../public_html/default.css                        |   0
 .../public_html/favicon.ico                        | Bin
 .../public_html/robots.txt                         |   0
 .../templates/README.txt                           |   0
 .../yoctoABConfig.py                               |   0
 {yocto-worker => yocto-worker.template}/Makefile   |   0
 .../buildbot.tac.example                           |   0
 14 files changed, 39 insertions(+), 13 deletions(-)
 rename {yocto-controller => yocto-controller.template}/Makefile (100%)
 rename {yocto-controller => yocto-controller.template}/buildbot.tac.example (100%)
 rename {yocto-controller => yocto-controller.template}/buildbot.tac.standard (100%)
 rename {yocto-controller => yocto-controller.template}/controller.cfg.example (100%)
 rename {yocto-controller => yocto-controller.template}/public_html/bg_gradient.jpg (100%)
 rename {yocto-controller => yocto-controller.template}/public_html/default.css (100%)
 rename {yocto-controller => yocto-controller.template}/public_html/favicon.ico (100%)
 rename {yocto-controller => yocto-controller.template}/public_html/robots.txt (100%)
 rename {yocto-controller => yocto-controller.template}/templates/README.txt (100%)
 rename {yocto-controller => yocto-controller.template}/yoctoABConfig.py (100%)
 rename {yocto-worker => yocto-worker.template}/Makefile (100%)
 rename {yocto-worker => yocto-worker.template}/buildbot.tac.example (100%)

diff --git a/.gitignore b/.gitignore
index a4b31c6..9a2db19 100644
--- a/.gitignore
+++ b/.gitignore
@@ -20,19 +20,8 @@ config/autobuilder.conf
 .cfg
 
 TODO
-yocto-controller/http.log
-yocto-controller/controller.cfg
-yocto-controller/state.sqlite
-yocto-controller/twistd.log*
-yocto-controller/buildbot.tac
-yocto-worker/build-appliance/build(newcommits)
-yocto-worker/buildbot.tac
-yocto-worker/janitor.log
-yocto-worker/nightly-x86/.buildbot-sourcedata-YnVpbGQ=
-yocto-worker/nightly/build(newcommits)
-yocto-worker/twistd.hostname
-yocto-worker/twistd.log*
-yocto-worker/twistd.pid
+yocto-controller
+yocto-worker
 
 # This gets updated on every yocto-setup-autobuilder so should be ignored #
 # for nearly everyone.                                                    #
diff --git a/yocto-autobuilder-setup b/yocto-autobuilder-setup
index 615deb4..8d447f7 100644
--- a/yocto-autobuilder-setup
+++ b/yocto-autobuilder-setup
@@ -62,6 +62,25 @@ export OGIT_TRASH_CRON_TIME="0 0 * * *"
 export OGIT_TRASH_NICE_LEVEL="19"
 HOST_ADDR=$(hostname -I)
 
+#########################################
+#
+# Create a new controller/worker configuation based on our templates if we don't
+# already have one configured here.
+#
+#########################################
+if [ ! -d "${PWD}/yocto-controller" ]; then
+    echo ""
+    echo "Creating yocto-controller/ from yocto-controller.template/"
+    echo ""
+    /bin/cp -R yocto-controller.template yocto-controller
+fi
+if [ ! -d "${PWD}/yocto-worker" ]; then
+    echo ""
+    echo "Creating yocto-worker/ from yocto-worker.template/"
+    echo ""
+    /bin/cp -R yocto-worker.template yocto-worker
+fi
+
 ##########################
 #
 # Check to see if we've got a username/password set
@@ -129,6 +148,24 @@ if [  ! -d  "./buildset-config" ]; then
     /bin/cp -R buildset-config.controller buildset-config
 fi
 
+#########################################
+#
+# If there is already a state.sqlite file in the controller directory, it may
+# need upgrading.  Inform the user about this.  This command is run
+# automatically the first time it is run on a pristine configuration.  See
+# below.
+#
+#########################################
+if [ -f ]; then
+    echo ""
+    echo "An existing yocto-controller/state.sqlite has been found."
+    echo "If you have changed your configuration since the last time"
+    echo "you sourced this setup script, you will most likely need to"
+    echo "update it.  The command you probably want is:"
+    echo ""
+    echo "\tbuildbot upgrade-master ${PWD}/yocto-controller"
+    echo ""
+fi
 
 if [ -n "${config_check:+x}" ]; then
     echo ""
diff --git a/yocto-controller/Makefile b/yocto-controller.template/Makefile
similarity index 100%
rename from yocto-controller/Makefile
rename to yocto-controller.template/Makefile
diff --git a/yocto-controller/buildbot.tac.example b/yocto-controller.template/buildbot.tac.example
similarity index 100%
rename from yocto-controller/buildbot.tac.example
rename to yocto-controller.template/buildbot.tac.example
diff --git a/yocto-controller/buildbot.tac.standard b/yocto-controller.template/buildbot.tac.standard
similarity index 100%
rename from yocto-controller/buildbot.tac.standard
rename to yocto-controller.template/buildbot.tac.standard
diff --git a/yocto-controller/controller.cfg.example b/yocto-controller.template/controller.cfg.example
similarity index 100%
rename from yocto-controller/controller.cfg.example
rename to yocto-controller.template/controller.cfg.example
diff --git a/yocto-controller/public_html/bg_gradient.jpg b/yocto-controller.template/public_html/bg_gradient.jpg
similarity index 100%
rename from yocto-controller/public_html/bg_gradient.jpg
rename to yocto-controller.template/public_html/bg_gradient.jpg
diff --git a/yocto-controller/public_html/default.css b/yocto-controller.template/public_html/default.css
similarity index 100%
rename from yocto-controller/public_html/default.css
rename to yocto-controller.template/public_html/default.css
diff --git a/yocto-controller/public_html/favicon.ico b/yocto-controller.template/public_html/favicon.ico
similarity index 100%
rename from yocto-controller/public_html/favicon.ico
rename to yocto-controller.template/public_html/favicon.ico
diff --git a/yocto-controller/public_html/robots.txt b/yocto-controller.template/public_html/robots.txt
similarity index 100%
rename from yocto-controller/public_html/robots.txt
rename to yocto-controller.template/public_html/robots.txt
diff --git a/yocto-controller/templates/README.txt b/yocto-controller.template/templates/README.txt
similarity index 100%
rename from yocto-controller/templates/README.txt
rename to yocto-controller.template/templates/README.txt
diff --git a/yocto-controller/yoctoABConfig.py b/yocto-controller.template/yoctoABConfig.py
similarity index 100%
rename from yocto-controller/yoctoABConfig.py
rename to yocto-controller.template/yoctoABConfig.py
diff --git a/yocto-worker/Makefile b/yocto-worker.template/Makefile
similarity index 100%
rename from yocto-worker/Makefile
rename to yocto-worker.template/Makefile
diff --git a/yocto-worker/buildbot.tac.example b/yocto-worker.template/buildbot.tac.example
similarity index 100%
rename from yocto-worker/buildbot.tac.example
rename to yocto-worker.template/buildbot.tac.example
-- 
1.9.1


