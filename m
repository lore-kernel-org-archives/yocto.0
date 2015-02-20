Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE72AE00853; Thu, 19 Feb 2015 18:21:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E5FE00837
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 18:21:48 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id b16so158900igk.1
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 18:21:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:subject:date:message-id
	:in-reply-to:references;
	bh=D1AXgayZ26s/uKEo9oX0s6PL6wsqnPb2dU0RNNMTZt4=;
	b=RWo5fKhpZahITG19lJt1KvWoS0cxJ5ueIlSuVhGIdx7SKH3egkKO8c8L/MjNbEX38l
	e7h3yTbhThoAK5ausLIOCVEu+YPHewgH/sqgWFpmfD/HOEjqWsMqoYh4uS1ItCQdamON
	NhTd6a3FcdWgHijKOin4LlrSiHSBP3MC/Jd9GajrMywpJ1jEvNX0JEPU65IphXjULNzd
	EKL+Xvp9oAjyRrMFaXMGybtjabkvwETEs0qBajn+oiyxEBl3ChnpMy7uXEbCu5fA+G52
	NW/hV2eg1TATfc0uWrgiHKnMNaCiXLBAzLM+ZipXm8scbxlItYyoZSiRXAtg2FPTmbw0
	1oWQ==
X-Gm-Message-State: ALoCoQlfVeQ1QtM/Ez6cOsyCOhVm7vzT833lKG9DIIrG6Tcwu/6vvcO0tGkPiPlvsLj2I6Cnx0ec
X-Received: by 10.50.79.135 with SMTP id j7mr1217050igx.32.1424398907643;
	Thu, 19 Feb 2015 18:21:47 -0800 (PST)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id t5sm134145ign.12.2015.02.19.18.21.46
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Feb 2015 18:21:46 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Feb 2015 21:22:40 -0500
Message-Id: <1424398960-14689-2-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424398960-14689-1-git-send-email-joe_macdonald@mentor.com>
References: <1424398960-14689-1-git-send-email-joe_macdonald@mentor.com>
Subject: [autobuilder][PATCH 2/2] config: support external configurations
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
X-List-Received-Date: Fri, 20 Feb 2015 02:21:51 -0000

It is sometimes convenient to have more than one configuration, either as
an alternative or as a parallel builder.  Support the ability to move
critical configuration components into a separate directory tree while
preserving the core yocto-autobuilder clone in a clean state.

The workflow is unchanged for the common use-case.  If you wish to have an
external (to the yocto-autobuilder tree) configuration, you may define
YOCTO_AB_CONFIG_DIR in your environment prior to sourcing
yocto-autobuilder-setup.  Something like this would work:

    $ YOCTO_AB_CONFIG_DIR=/build/ab-new . ./yocto-autobuilder-setup

YOCTO_AB_CONFIG_DIR need not exist prior to sourcing the setup script, but
the parent directory must be writable.  If YOCTO_AB_CONFIG_DIR does
already exist, the setup script will attempt to re-use that directory.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 yocto-autobuilder-setup | 92 +++++++++++++++++++++++++++++++------------------
 yocto-start-autobuilder |  2 +-
 yocto-stop-autobuilder  |  2 +-
 3 files changed, 60 insertions(+), 36 deletions(-)

diff --git a/yocto-autobuilder-setup b/yocto-autobuilder-setup
index 8d447f7..24d420a 100644
--- a/yocto-autobuilder-setup
+++ b/yocto-autobuilder-setup
@@ -54,7 +54,8 @@ export ADTREPO_DEV_URL="http://adtrepo-dev.yoctoproject.org/"
 export ADTREPO_DEV_PATH="/srv/www/vhosts/adtrepo-dev/"
 export PYTHONPATH=`pwd`/lib/python2.7/site-packages/autobuilder/:`pwd`/lib/python2.7/site-packages/:`pwd`/lib/python2.7/site-packages/autobuilder/buildsteps:$PYTHONPATH
 export PATH=`pwd`/bin:`pwd`/yocto-autobuilder/scripts:$PATH
-export YOCTO_AB_CONFIG=`pwd`/buildset-config/yoctoAB.conf
+export YOCTO_AB_CONFIG=${YOCTO_AB_CONFIG_DIR:=`pwd`}/buildset-config/yoctoAB.conf
+export YOCTO_AB_CONFIG_DIR
 export RESOLVED_TRIGGERED_HEAD=True
 export OPTIMIZED_GIT_CLONE=False
 export OGIT_TRASH_DIR=/tmp/yocto-autobuilder/git/trash
@@ -64,21 +65,39 @@ HOST_ADDR=$(hostname -I)
 
 #########################################
 #
+# Ensure the base config directory exists already
+#
+#########################################
+if [ ! -d "${YOCTO_AB_CONFIG_DIR}" ]; then
+    echo ""
+    echo "${YOCTO_AB_CONFIG_DIR} does not exist"
+    echo "attempting to create new autobuilder configuration"
+    echo ""
+    if ! /bin/mkdir -p ${YOCTO_AB_CONFIG_DIR} ; then
+        echo "Unable to create ${YOCTO_AB_CONFIG_DIR}"
+        echo "Ensure that you have the correct permissions and that you have"
+        echo "specified YOCTO_AB_CONFIG_DIR correctly."
+        exit
+    fi
+fi
+
+#########################################
+#
 # Create a new controller/worker configuation based on our templates if we don't
 # already have one configured here.
 #
 #########################################
-if [ ! -d "${PWD}/yocto-controller" ]; then
+if [ ! -d "${YOCTO_AB_CONFIG_DIR}/yocto-controller" ]; then
     echo ""
     echo "Creating yocto-controller/ from yocto-controller.template/"
     echo ""
-    /bin/cp -R yocto-controller.template yocto-controller
+    /bin/cp -R yocto-controller.template ${YOCTO_AB_CONFIG_DIR}/yocto-controller
 fi
-if [ ! -d "${PWD}/yocto-worker" ]; then
+if [ ! -d "${YOCTO_AB_CONFIG_DIR}/yocto-worker" ]; then
     echo ""
     echo "Creating yocto-worker/ from yocto-worker.template/"
     echo ""
-    /bin/cp -R yocto-worker.template yocto-worker
+    /bin/cp -R yocto-worker.template ${YOCTO_AB_CONFIG_DIR}/yocto-worker
 fi
 
 ##########################
@@ -86,30 +105,30 @@ fi
 # Check to see if we've got a username/password set
 #
 ##########################
-if [ ! -f  "${PWD}/yocto-controller/buildbot.tac" ]; then
+if [ ! -f  "${YOCTO_AB_CONFIG_DIR}/yocto-controller/buildbot.tac" ]; then
     echo ""
     echo "Creating yocto-controller/buildbot.tac from an example buildbot.tac"
     echo ""
-    /bin/cp yocto-controller/buildbot.tac.example yocto-controller/buildbot.tac
+    /bin/cp ${YOCTO_AB_CONFIG_DIR}/yocto-controller/buildbot.tac.example ${YOCTO_AB_CONFIG_DIR}/yocto-controller/buildbot.tac
 fi
 
-if [ ! -f  "${PWD}/yocto-worker/buildbot.tac" ]; then
+if [ ! -f  "${YOCTO_AB_CONFIG_DIR}/yocto-worker/buildbot.tac" ]; then
     echo ""
     echo "Creating yocto-worker/buildbot.tac from an example buildbot.tac"
     echo ""
-    /bin/cp yocto-worker/buildbot.tac.example yocto-worker/buildbot.tac
+    /bin/cp ${YOCTO_AB_CONFIG_DIR}/yocto-worker/buildbot.tac.example ${YOCTO_AB_CONFIG_DIR}/yocto-worker/buildbot.tac
 fi
 
 
-if [ ! -f  "${PWD}/yocto-controller/controller.cfg" ]; then
+if [ ! -f  "${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg" ]; then
     echo ""
     echo "Creating yocto-controller/controller.cfg from an example controller.cfg"
     echo ""
-    /bin/cp yocto-controller/controller.cfg.example yocto-controller/controller.cfg
+    /bin/cp ${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg.example ${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg
 fi
 
-if [ "${PWD}/yocto-controller/controller.cfg" ]; then
-    config_check=`cat ${PWD}/yocto-controller/controller.cfg|grep "'<USER>', '<PASS>'"`
+if [ "${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg" ]; then
+    config_check=`cat ${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg|grep "'<USER>', '<PASS>'"`
 fi
 
 #########################################
@@ -123,8 +142,9 @@ echo "#########################################################################"
 echo " Setting envvars. "
 echo " In the future though please add the following to your shell environment: "
 echo " PYTHONPATH=${PWD}/lib/python2.7/site-packages/:${PWD}/lib/python2.7/site-packages/autobuilder/:${PWD}/lib/python2.7/site-packages/autobuilder/buildsteps:"'$PYTHONPATH'
-echo " PATH=${PWD}/bin:${PWD}/yocto-autobuilder/scripts:"'$PATH' 
-echo " YOCTO_AB_CONFIG=${PWD}/buildset-config/yoctoAB.conf"
+echo " PATH=${YOCTO_AB_CONFIG_DIR}/bin:${PWD}/yocto-autobuilder/scripts:"'$PATH'
+echo " YOCTO_AB_CONFIG=${YOCTO_AB_CONFIG_DIR}/buildset-config/yoctoAB.conf"
+echo " YOCTO_AB_CONFIG_DIR=${YOCTO_AB_CONFIG_DIR}"
 echo ""
 echo " If you don't, you should source this script everytime you want start the "
 echo " autobuilder."
@@ -134,18 +154,19 @@ echo " autobuilder."
 # Check to see if we've got an autobuilder.conf
 #
 ##########################
-if [  ! -f  "./config/autobuilder.conf" ]; then
+if [  ! -f  "${YOCTO_AB_CONFIG_DIR}/config/autobuilder.conf" ]; then
     echo ""
     echo "Creating config/autobuilder.conf from an example autobuilder.conf"
     echo ""
-    /bin/cp config/autobuilder.conf.example config/autobuilder.conf
+    /bin/cp -R config ${YOCTO_AB_CONFIG_DIR}/
+    /bin/cp config/autobuilder.conf.example ${YOCTO_AB_CONFIG_DIR}/config/autobuilder.conf
 fi
 
-if [  ! -d  "./buildset-config" ]; then
+if [  ! -d  "${YOCTO_AB_CONFIG_DIR}/buildset-config" ]; then
     echo ""
     echo "Creating buildset-config from buildset-config.controller"
     echo ""
-    /bin/cp -R buildset-config.controller buildset-config
+    /bin/cp -R buildset-config.controller ${YOCTO_AB_CONFIG_DIR}/buildset-config
 fi
 
 #########################################
@@ -163,7 +184,7 @@ if [ -f ]; then
     echo "you sourced this setup script, you will most likely need to"
     echo "update it.  The command you probably want is:"
     echo ""
-    echo "\tbuildbot upgrade-master ${PWD}/yocto-controller"
+    echo "\tbuildbot upgrade-master ${YOCTO_AB_CONFIG_DIR}/yocto-controller"
     echo ""
 fi
 
@@ -179,21 +200,24 @@ if [ -n "${config_check:+x}" ]; then
     echo ""
     echo " Modifying the following files with this username/password:"
     echo ""
-    echo " ${PWD}/yocto-controller/controller.cfg "
-    sed -i "s/<USER>/$username/g" ${PWD}/yocto-controller/controller.cfg
-    sed -i "s/<PASS>/$password/g" ${PWD}/yocto-controller/controller.cfg
+    echo " ${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg "
+    sed -i "s/<USER>/$username/g" ${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg
+    sed -i "s/<PASS>/$password/g" ${YOCTO_AB_CONFIG_DIR}/yocto-controller/controller.cfg
 
-    echo " ${PWD}/yocto-controller/buildbot.tac "
-    sed -i "s/<USER>/$username/g" ${PWD}/yocto-controller/buildbot.tac
-    sed -i "s/<PASS>/$password/g" ${PWD}/yocto-controller/buildbot.tac
+    echo " ${YOCTO_AB_CONFIG_DIR}/yocto-controller/buildbot.tac "
+    sed -i "s/<USER>/$username/g" ${YOCTO_AB_CONFIG_DIR}/yocto-controller/buildbot.tac
+    sed -i "s/<PASS>/$password/g" ${YOCTO_AB_CONFIG_DIR}/yocto-controller/buildbot.tac
 
-    echo " ${PWD}/yocto-worker/buildbot.tac "
-    sed -i "s/<USER>/$username/g" ${PWD}/yocto-worker/buildbot.tac
-    sed -i "s/<PASS>/$password/g" ${PWD}/yocto-worker/buildbot.tac
+    echo " ${YOCTO_AB_CONFIG_DIR}/yocto-worker/buildbot.tac "
+    sed -i "s/<USER>/$username/g" ${YOCTO_AB_CONFIG_DIR}/yocto-worker/buildbot.tac
+    sed -i "s/<PASS>/$password/g" ${YOCTO_AB_CONFIG_DIR}/yocto-worker/buildbot.tac
     echo ""
+    if [ ! -d "${YOCTO_AB_CONFIG_DIR}/bin" ]; then
+        /bin/cp -R bin ${YOCTO_AB_CONFIG_DIR}/
+    fi
     echo " Updating worker-init script used for google cloud building. "
-    sed -i "s/<HOST_ADDR>/$HOST_ADDR/" ${PWD}/bin/worker-init
-    sed -i "s/<PASS>/$password/" ${PWD}/bin/worker-init
+    sed -i "s/<HOST_ADDR>/$HOST_ADDR/" ${YOCTO_AB_CONFIG_DIR}/bin/worker-init
+    sed -i "s/<PASS>/$password/" ${YOCTO_AB_CONFIG_DIR}/bin/worker-init
     echo ""
     echo " If you wish to use your own generated username and password please "
     echo " modify the above files as needed. Please see the README for more "
@@ -201,7 +225,7 @@ if [ -n "${config_check:+x}" ]; then
     echo ""
     echo "#########################################################################"
     echo ""
-    echo " Please modify ${PWD}/config/autobuilder.conf if you wish to specify "
+    echo " Please modify ${YOCTO_AB_CONFIG_DIR}/config/autobuilder.conf if you wish to specify "
     echo " a different location in which to publish build artifacts, etc."
     echo ""
     echo "#########################################################################"
@@ -212,13 +236,13 @@ if [ -n "${config_check:+x}" ]; then
     echo " a different git fetcher (yoctogit.py)"
     echo ""
     echo "#########################################################################"
-    buildbot upgrade-master ${PWD}/yocto-controller
+    buildbot upgrade-master ${YOCTO_AB_CONFIG_DIR}/yocto-controller
     ################
     #
     # We touch this because we know they've at least run this once
     #
     ################
-    touch ${PWD}/.setupdone
+    touch ${YOCTO_AB_CONFIG_DIR}/.setupdone
 fi
 
 echo " To start the autobuilder:"
diff --git a/yocto-start-autobuilder b/yocto-start-autobuilder
index ee597df..9f44e3c 100755
--- a/yocto-start-autobuilder
+++ b/yocto-start-autobuilder
@@ -37,7 +37,7 @@ if len(args) != 2 or (sys.argv[1] != "both" and sys.argv[1] != "controller" and
     You must specify if you wish to start controller, worker or both. 
    
     """ + usage )
-AB_BASE=os.path.dirname(os.path.abspath(sys.argv[0]))
+AB_BASE=os.environ.get("YOCTO_AB_CONFIG_DIR")
 
 ################################################################################
 #
diff --git a/yocto-stop-autobuilder b/yocto-stop-autobuilder
index e224f00..cd19fed 100755
--- a/yocto-stop-autobuilder
+++ b/yocto-stop-autobuilder
@@ -37,7 +37,7 @@ if len(args) != 2 or (sys.argv[1] != "both" and sys.argv[1] != "controller" and
    
     """ + usage )
 
-AB_BASE=os.path.dirname(os.path.abspath(sys.argv[0]))
+AB_BASE=os.environ.get("YOCTO_AB_CONFIG_DIR")
 
 if sys.argv[1] == "controller" or sys.argv[1] == "both":
     os.chdir(os.path.join(AB_BASE, "yocto-controller"))
-- 
1.9.1


