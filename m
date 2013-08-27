Return-Path: <mulhern@gmail.com>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11C5E015A6;
	Tue, 27 Aug 2013 15:14:36 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id o13so2762968qaj.2
	for <multiple recipients>; Tue, 27 Aug 2013 15:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=dz4GTBTXggfBMhr9r/qk9vNB9YNpq76pVxCsB0hi/P0=;
	b=p11yq/9ENsF666BU9bya+klBElRGSURWgiTK5oawoJCuUmd9dD9y5VlAoE3dEjTzHG
	+AxhxtPX8Rg5N04C0zEw29jwUhtczOQyhTiSVThA4cnVCu7z6qDpPSkLLfsf97pPUCUz
	gwiSukPIdEgcx8Xi/L/uJsUeKwHeU4ZJhY4zXDkXuWHnVE9vlWrkukRGJ31ziwfS0gVG
	RyUDWVDEfjIBSrMX7RDtoIYhgUVMtPM54eCyFYcYSFp2CoplFDd5sbxNTQZCO5kImUmO
	Nuv+rttZVlMdo5TutG+9Gg1oH7RXO45uoCODx8po0WVT8hZzz/7DMTV2P2PAY8Pgz8L4
	qIyQ==
X-Received: by 10.224.69.129 with SMTP id z1mr5180239qai.88.1377641675631;
	Tue, 27 Aug 2013 15:14:35 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-91.hsd1.ma.comcast.net.
	[67.186.188.91])
	by mx.google.com with ESMTPSA id t4sm32329966qas.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 27 Aug 2013 15:14:35 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Tue, 27 Aug 2013 18:14:32 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Tue, 27 Aug 2013 18:14:05 -0400
Message-Id: <31e858d7ed74d6f081f7d7feda8217a747556884.1377641309.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377641309.git.mulhern@yoctoproject.org>
References: <cover.1377641309.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1377641309.git.mulhern@yoctoproject.org>
References: <cover.1377641309.git.mulhern@yoctoproject.org>
Subject: [PATCH 6/6] Bastille: document the current status and usability of the Bastille install.
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
X-List-Received-Date: Tue, 27 Aug 2013 22:14:36 -0000

The README file is updated to indicate the functionality of Bastille that is
actually available.

The recipe file is updated with a pointer to the README file.

An additional patch is added so that when Bastille is run in interactive mode
it will not attempt to make any changes to the system. This is better than
attempting to make the changes and making the screen flicker . The text on the
final screen has been updated appropriately.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 README                                             |   44 +++++++++++++-------
 recipes-security/bastille/bastille_3.2.1.bb        |    3 ++
 .../bastille/files/do_not_apply_config.patch       |   34 +++++++++++++++
 3 files changed, 65 insertions(+), 16 deletions(-)
 create mode 100644 recipes-security/bastille/files/do_not_apply_config.patch

diff --git a/README b/README
index c9549f9..1df88b5 100644
--- a/README
+++ b/README
@@ -43,22 +43,34 @@ help for each package.
         like rcp and rlogin, and helps create "chroot jails" that help limit the
         vulnerability of common Internet services like Web services and DNS.
 
-        usage : Bastille can be used via meta-security layer only in command line mode.
-                To start Bastille simply write in a terminal :
-
-                bastille -c
-
-                If this is the first usage of Bastille on the system, the user will be
-                guided through a list of questions which need to be answered. In the end,
-                a config file will be created and run. After these steps, you will have a
-                hardened system.
-
-                If you only want to run the config file, without stepping through the
-                list of questions, simply write in a terminal :
-
-                bastille -b
-
-        More information can be found in the package readme and manual.
+        usage : The functionality of Bastille which is available is
+                restricted to a purely informational one. The command:
+                bastille -c --os Yocto
+                will cause a series of menus containing security questions
+                about the system to be displayed to the user. For each
+                question, a default response, specified in the configuration
+                file which is installed with Bastille, will be selected.
+                The user may select an alternate response. When the user
+                has completed the sequence of menus Bastille saves the
+                responses to the configuration file.
+
+                The command:
+                bastille -l lists the configuration files that Bastille
+                is able to locate.
+
+                The other functionality which Bastille is intended to provide
+                is actually unavailable. This is not due to errors in poky
+                installation or configuration of the application. The Bastille
+                distribution is no longer supported. Significant modifications
+                would be required to make it possible to make use of the
+                functionality which is currently unavailable.
+
+
+        Additional information about Bastille can be found in the package
+        README file and other documentation.
+
+        Alternatives to Bastille include buck-security and checksecurity,
+        described elsewhere in this file.
 
 
         == redhat-security ==
diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 1c924e7..06215a2 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -1,3 +1,5 @@
+#The functionality of Bastille that is actually available is restricted. Please
+#consult the README file for the meta-security layer for additional information.
 SUMMARY = "Linux hardening tool"
 DESCRIPTION = "Bastille Linux is a Hardening and Reporting/Auditing Program which enhances the security of a Linux box, by configuring daemons, system settings and firewalling."
 LICENSE = "GPLv2"
@@ -29,6 +31,7 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
            file://allow_os_with_assess.patch \
            file://edit_usage_message.patch \
            file://organize_distro_discovery.patch \
+           file://do_not_apply_config.patch \
            "
 
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
diff --git a/recipes-security/bastille/files/do_not_apply_config.patch b/recipes-security/bastille/files/do_not_apply_config.patch
new file mode 100644
index 0000000..f7de6f8
--- /dev/null
+++ b/recipes-security/bastille/files/do_not_apply_config.patch
@@ -0,0 +1,34 @@
+Index: Bastille/Bastille_Curses.pm
+===================================================================
+--- Bastille.orig/Bastille_Curses.pm	2013-08-27 16:43:39.130959000 -0400
++++ Bastille/Bastille_Curses.pm	2013-08-27 16:43:39.794959000 -0400
+@@ -83,11 +83,6 @@
+     # Output answers to the script and display
+     &outputConfig;
+ 
+-    # Run Bastille
+-
+-    &Run_Bastille_with_Config;
+-
+-
+     # Display Credits
+ 
+     open CREDITS,"/usr/share/Bastille/Credits";
+Index: Bastille/InteractiveBastille
+===================================================================
+--- Bastille.orig/InteractiveBastille	2013-08-27 16:43:39.434959000 -0400
++++ Bastille/InteractiveBastille	2013-08-27 17:18:55.758959000 -0400
+@@ -531,10 +531,10 @@
+     "       Please address bug reports and suggestions to jay\@bastille-linux.org\n" .
+     "\n";
+ 
+-    $InterfaceEndScreenDescription = "We will now implement the choices you have made here.\n\n" .
++    $InterfaceEndScreenDescription = "We will now record the choices you have made here.\n\n" .
+ 	"Answer NO if you want to go back and make changes!\n";
+-    $InterfaceEndScreenQuestion = "Are you finished answering the questions, i.e. may we make the changes?";
+-    $InterfaceEndScreenNoEpilogue = "Please use Back/Next buttons to move among the questions you wish to\nchange.\n\nChoose YES on this question later to implement your choices.\n";
++    $InterfaceEndScreenQuestion = "Are you finished answering the questions, i.e. may we record the answers and exit?";
++    $InterfaceEndScreenNoEpilogue = "Please use Back/Next buttons to move among the questions you wish to\nchange.\n\nChoose YES on this question later to record your choices.\n";
+     require Bastille_Curses;
+ } elsif ($GLOBAL_AUDITONLY) {
+ 
-- 
1.7.10.4


