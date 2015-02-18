Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE86DE00779; Tue, 17 Feb 2015 18:51:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463AAE00757
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 18:51:00 -0800 (PST)
Received: by iecvy18 with SMTP id vy18so45646968iec.6
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 18:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id;
	bh=ETe1yiE6mYygevar21qrh+zhik7InRa/Pop8fGxMTXs=;
	b=G50618P7JdTcaM0B4YjuNiSl30EmzFFf3igGKoB1E8PysqcDL+Qdjvis/XTjjzUf/i
	fQMLBQwqUX444jyTkEH8BfHFHhTyiF64If82gE2k39/qK+/88zwT375BiqUacmALiJa8
	G2+e0QPJKnqLzifx11r1pQJNxAAMWIl+LoRq3ioCSJWHECnKcAbxqCZxX1CQoA5lF7lM
	BOFoKhUKnxkfTvc2OIGFL8Hy+lAfu7qZBXHW4rLBvjGfGmWUg4MAZsRxEnilAgLRZpXu
	nk2Lcpj57bMq71iZ/CXA9goheXsp40qzeobJC5MawJpFJR2NpQA2GKTOoT436bgyuLpM
	Qykw==
X-Received: by 10.43.88.8 with SMTP id ay8mr14110888icc.52.1424227860368;
	Tue, 17 Feb 2015 18:51:00 -0800 (PST)
Received: from burninator.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250]) by mx.google.com with ESMTPSA id
	p138sm12376142ioe.9.2015.02.17.18.50.59
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Feb 2015 18:50:59 -0800 (PST)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Feb 2015 21:51:00 -0500
Message-Id: <1424227860-9215-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] config: support configuration templates
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
X-List-Received-Date: Wed, 18 Feb 2015 02:51:02 -0000

Move yocto-controller and yocto-worker to .template versions and update
the setup script to move them in the expected location if they aren't
already preset, allowing local configurations to make whatever changes
they need in the yocto-[controller|worker] directories without issues on a
pull and without having to resort to tools like git-diff and git-checkout
to try alternate configurations.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 .gitignore                                         |  14 ++------
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
 14 files changed, 39 insertions(+), 12 deletions(-)
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
index f1f9e4e..017636f 100644
--- a/.gitignore
+++ b/.gitignore
@@ -15,15 +15,5 @@
 .cfg
 
 TODO
-yocto-controller/http.log
-yocto-controller/controller.cfg
-yocto-controller/state.sqlite
-yocto-controller/twistd.log*
-yocto-controller/buildbot.tac
-yocto-worker/build-appliance/build(newcommits)
-yocto-worker/buildbot.tac
-yocto-worker/nightly-x86/.buildbot-sourcedata-YnVpbGQ=
-yocto-worker/nightly/build(newcommits)
-yocto-worker/twistd.hostname
-yocto-worker/twistd.log*
-yocto-worker/twistd.pid
+yocto-controller
+yocto-worker
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


