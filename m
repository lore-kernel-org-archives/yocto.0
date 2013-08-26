Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C8B2E003BF;
	Sun, 25 Aug 2013 18:17:28 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id k15so1427097qcv.40
	for <multiple recipients>; Sun, 25 Aug 2013 18:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=UdIA3QMGuvGQY7nwTMbjJUdlJ+1jK2CAXhwJbcIK1dE=;
	b=y//Aa/xPYUmWdTNEKY+EP5nWh15GJZx3bLjbdxzfLuFYf98NUZ1g0o4pufqbdjtQJZ
	bOl2enTRjtwyxG9/KNdp9E6X/qUHWqmjqRxdqOp2NA5q16i+Gz/zcI6dZOtsYHQaIYxT
	wQ3wRD2ax2vtx/UHc+MAp/utPvMLZ2f+8Z+ShV4k0CiZEeMbNjNvPTsLnbd0FisC1KRo
	elwZJiUyoMChoy9FwT265Jrv6HG+1B3G4EvgLflFH1Uszs2pUWQNeveIee7oxQfsApXS
	46cHJZNapSuXrpFXUvUaYV0ktF7fj1OJd4h0M/fa5FEaC51IeeVvqE7vmJhdKHHUAcZ4
	Ja5A==
X-Received: by 10.49.24.207 with SMTP id w15mr13859217qef.51.1377479847316;
	Sun, 25 Aug 2013 18:17:27 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id y2sm17431113qen.5.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 25 Aug 2013 18:17:26 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Sun, 25 Aug 2013 21:17:24 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Sun, 25 Aug 2013 21:17:08 -0400
Message-Id: <da004b8e1e877c70c34fe55dd4867d37c1ee3b10.1377479358.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377479358.git.mulhern@yoctoproject.org>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1377479358.git.mulhern@yoctoproject.org>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
Subject: [PATCH 1/5] Bastille: Preliminary cleanup of existing patches.
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
X-List-Received-Date: Mon, 26 Aug 2013 01:17:29 -0000

[YOCTO #3867]

Renames existing patches and removes some changes.

Curses-and-IOLoader-changes.patch is renamed to call_output_config.patch. The
new patch omits the removal of the pruning step in Load_Questions but
retains the replacement of a call to a non-existant function with a call
to an appropriate implemented function.

yocto-standard-patch.patch is renamed to fixed_defined_warnings.patch. The
new patch omits the definition of a yocto distro but includes the defined
warnings fix.

The recipe file is changed to include the new patches and also to omit a
related action in the do_install script.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/bastille/bastille_3.2.1.bb        |    5 +-
 .../files/Curses-and-IOLoader-changes.patch        |   50 --------------------
 .../bastille/files/call_output_config.patch        |   13 +++++
 ...rd-patch.patch => fixed_defined_warnings.patch} |   32 ++++---------
 4 files changed, 25 insertions(+), 75 deletions(-)
 delete mode 100644 recipes-security/bastille/files/Curses-and-IOLoader-changes.patch
 create mode 100644 recipes-security/bastille/files/call_output_config.patch
 rename recipes-security/bastille/files/{yocto-standard-patch.patch => fixed_defined_warnings.patch} (65%)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 008f305..1af7b34 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -17,8 +17,8 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
            file://ServiceAdmin.pm \
            file://config \
            file://fix_version_parse.patch \
-           file://yocto-standard-patch.patch \
-           file://Curses-and-IOLoader-changes.patch \
+           file://fixed_defined_warnings.patch \
+           file://call_output_config.patch \
            "
 
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
@@ -136,7 +136,6 @@ do_install () {
 	done
 
 	ln -s ${D}${sbindir}/RevertBastille ${D}${sbindir}/UndoBastille
-	sed -i 's/3.8.11-yocto-standard/${KERNEL_VERSION}/g' ${D}${libdir}/Bastille/API.pm
 }
 
 FILES_${PN} += "${datadir}/Bastille ${libdir}/Bastille ${libdir}/perl* ${sysconfdir}/*"
diff --git a/recipes-security/bastille/files/Curses-and-IOLoader-changes.patch b/recipes-security/bastille/files/Curses-and-IOLoader-changes.patch
deleted file mode 100644
index dfe0698..0000000
--- a/recipes-security/bastille/files/Curses-and-IOLoader-changes.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-From afa9a32db7f9423b45e0cff898a868de05ad3dee Mon Sep 17 00:00:00 2001
-From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
-Date: Tue, 30 Jul 2013 12:05:39 +0300
-Subject: [PATCH] Curses and IOLoader changes
-
-The linux distribution couldn't be identified when
-running Bastille, and the question pruning method
-couldn't get a match on the questions relevant to
-the repo, so it eliminated all questions.
-
-After answering the questions the checkAndSaveConfig routine
-was called which was missing. Replaced it with outputConfig
-which exists.
-
-Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
----
- Bastille/IOLoader.pm |    2 +-
- Bastille_Curses.pm   |    3 ++-
- 2 files changed, 3 insertions(+), 2 deletions(-)
-
-diff --git a/Bastille/IOLoader.pm b/Bastille/IOLoader.pm
-index abb94d7..995d2c2 100644
---- a/Bastille/IOLoader.pm
-+++ b/Bastille/IOLoader.pm
-@@ -68,7 +68,7 @@ sub Load_Questions($) {
-   my $UseRequiresRules = $_[0];
- 
-   my ($current_module_number,$first_question) = &parse_questions();
--  $first_question = &prune_questions($UseRequiresRules,$first_question);
-+  #$first_question = &prune_questions($UseRequiresRules,$first_question);
-   $firstQuestion = $first_question;
-   &B_log("DEBUG","Load Questions, first question: $first_question");
-   &validate_questions();
-diff --git a/Bastille_Curses.pm b/Bastille_Curses.pm
-index 2e1eef4..a2dfb34 100644
---- a/Bastille_Curses.pm
-+++ b/Bastille_Curses.pm
-@@ -84,7 +84,8 @@ sub do_Bastille {
-     }
- 
-     # Output answers to the script and display
--    &checkAndSaveConfig(&getGlobal('BFILE', "config"));
-+
-+    &outputConfig
- 
-     # Run Bastille
- 
--- 
-1.7.9.5
-
diff --git a/recipes-security/bastille/files/call_output_config.patch b/recipes-security/bastille/files/call_output_config.patch
new file mode 100644
index 0000000..f426e1b
--- /dev/null
+++ b/recipes-security/bastille/files/call_output_config.patch
@@ -0,0 +1,13 @@
+Index: Bastille/Bastille_Curses.pm
+===================================================================
+--- Bastille.orig/Bastille_Curses.pm	2013-08-21 08:58:53.899950000 -0400
++++ Bastille/Bastille_Curses.pm	2013-08-21 09:20:20.295950005 -0400
+@@ -84,7 +84,7 @@
+     }
+ 
+     # Output answers to the script and display
+-    &checkAndSaveConfig(&getGlobal('BFILE', "config"));
++    &outputConfig;
+ 
+     # Run Bastille
+ 
diff --git a/recipes-security/bastille/files/yocto-standard-patch.patch b/recipes-security/bastille/files/fixed_defined_warnings.patch
similarity index 65%
rename from recipes-security/bastille/files/yocto-standard-patch.patch
rename to recipes-security/bastille/files/fixed_defined_warnings.patch
index 4f78a3b..ab80eb2 100644
--- a/recipes-security/bastille/files/yocto-standard-patch.patch
+++ b/recipes-security/bastille/files/fixed_defined_warnings.patch
@@ -16,31 +16,22 @@ Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
  Bastille/API.pm |   12 ++++++------
  1 file changed, 6 insertions(+), 6 deletions(-)
 
-diff --git a/Bastille/API.pm b/Bastille/API.pm
-index 40f8c72..ebbe9f7 100644
---- a/Bastille/API.pm
-+++ b/Bastille/API.pm
-@@ -445,8 +445,8 @@ sub GetDistro() {
+Index: Bastille/Bastille/API.pm
+===================================================================
+--- Bastille.orig/Bastille/API.pm	2008-09-14 19:56:53.000000000 -0400
++++ Bastille/Bastille/API.pm	2013-08-21 08:55:26.715950001 -0400
+@@ -445,8 +445,8 @@
  		$release=`/usr/bin/uname -sr`;
  	    }
  	    else {
 -	 	print STDERR "$err Could not determine operating system version!\n";
 -		$distro="unknown";
-+        #print STDERR "$err Could not determine operating system version!\n";
-+		$distro="3.8.11-yocto-standard";
++                print STDERR "$err Could not determine operating system version!\n";
++		$distro="unknown"
              }
  
  	    # Figure out what kind of system we're on.
-@@ -537,7 +537,7 @@ sub getSupportedOSHash () {
- 			      "DB2.2", "DB3.0",
- 			      "RH6.0","RH6.1","RH6.2","RH7.0",
- 			      "RH7.1","RH7.2","RH7.3","RH8.0",
--			      "RH9",
-+			      "RH9","3.8.11-yocto-standard",
-                               "RHEL5",
- 			      "RHEL4AS","RHEL4ES","RHEL4WS",
- 			      "RHEL3AS","RHEL3ES","RHEL3WS",
-@@ -1284,7 +1284,7 @@ sub B_write_sums {
+@@ -1284,7 +1284,7 @@
  
      my $sumFile = &getGlobal('BFILE',"sum.csv");
  
@@ -49,7 +40,7 @@ index 40f8c72..ebbe9f7 100644
  
  	open( SUM, "> $sumFile") or &B_log("ERROR","Unable to open $sumFile for write.\n$!\n");
  
-@@ -1318,7 +1318,7 @@ sub B_check_sum($) {
+@@ -1318,7 +1318,7 @@
      my $file = $_[0];
      my $cksum = &getGlobal('BIN',"cksum");
  
@@ -58,7 +49,7 @@ index 40f8c72..ebbe9f7 100644
          &B_read_sums;
      }
  
-@@ -1375,7 +1375,7 @@ sub listModifiedFiles {
+@@ -1375,7 +1375,7 @@
  sub B_isFileinSumDB($) {
      my $file = $_[0];
  
@@ -67,6 +58,3 @@ index 40f8c72..ebbe9f7 100644
          &B_log("DEBUG","Reading in DB from B_isFileinSumDB");
          &B_read_sums;
      }
--- 
-1.7.9.5
-
-- 
1.7.10.4


