Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0069E01591;
	Tue, 27 Aug 2013 15:14:21 -0700 (PDT)
Received: by mail-qc0-f172.google.com with SMTP id a1so2994767qcx.31
	for <multiple recipients>; Tue, 27 Aug 2013 15:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=Lb6HjrJQZsa6ogD/cs7adQou9T00laQYKAAqWjuKwok=;
	b=gwvOGwCh1/SS0A06FMubxQPcHm5jlN4MAk+Ma867YU62UmozpxPc6T004lEXNGMQci
	2CJ8OuMrphzGUOi8hhGKEsy7RLFDHFlfk2f0oNxwqVqlDTDhebddtNn1+S3FH3iXMCR2
	YaCA6qK5eQImKt0fEkWNMHJr9AR4KuAN6PBQpBolpnHsB2hKXmM6s0qVz0O8kcSKO9vT
	sWmvPVhshNe2t/TLlfbAKDSpzfnZU7q1ywfrxopGuutFJ3yq09cmS9NNiIJLMPp+SIyt
	ANF6MGAaTBnHm+GwyESwDQvZRJAWuvGKu7hH9SsTEIxN8gVgaIqXe0WMEMM27dtukEGx
	Y6Xw==
X-Received: by 10.229.230.129 with SMTP id jm1mr4097570qcb.7.1377641660920;
	Tue, 27 Aug 2013 15:14:20 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-91.hsd1.ma.comcast.net.
	[67.186.188.91])
	by mx.google.com with ESMTPSA id 2sm30710941qen.0.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 27 Aug 2013 15:14:20 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Tue, 27 Aug 2013 18:14:19 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Tue, 27 Aug 2013 18:14:01 -0400
Message-Id: <d41b335680fcac5ce39ba2b14dca9e953edc6875.1377641309.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377641309.git.mulhern@yoctoproject.org>
References: <cover.1377641309.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1377641309.git.mulhern@yoctoproject.org>
References: <cover.1377641309.git.mulhern@yoctoproject.org>
Subject: [PATCH 2/6] Bastille: Miscellaneous fixes to the Bastille code base.
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
X-List-Received-Date: Tue, 27 Aug 2013 22:14:24 -0000

[YOCTO #3867]

Adds four additional small patches which address miscellaneous small problems
in Bastille.

The four patches are:

fix_missing_use_directives.patch: A number of use directives were missing from
several files. These were added as discovered.

fix_number_of_modules.patch: The curses interface includes a title for most
screens which gives a module, a module number, and the number of modules in the
series. Previously the last value was always 0, now it is simply
omitted. It would be more desirable to give the correct number, but this would
require a significant change to the code base.

remove_questions_text_file_references.patch: This version of Bastille does
not make use of a Questions.txt file, therefore the specification of the
location of this file in the OSMap/*.bastille files has been removed.

simplify_B_place.patch: This patch discards redundant variables, mostly
defined but not used cases, and makes the error reporting more informative.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/bastille/bastille_3.2.1.bb        |    4 ++
 .../files/fix_missing_use_directives.patch         |   48 ++++++++++++++++++++
 .../bastille/files/fix_number_of_modules.patch     |   32 +++++++++++++
 .../remove_questions_text_file_references.patch    |   24 ++++++++++
 .../bastille/files/simplify_B_place.patch          |   34 ++++++++++++++
 5 files changed, 142 insertions(+)
 create mode 100644 recipes-security/bastille/files/fix_missing_use_directives.patch
 create mode 100644 recipes-security/bastille/files/fix_number_of_modules.patch
 create mode 100644 recipes-security/bastille/files/remove_questions_text_file_references.patch
 create mode 100644 recipes-security/bastille/files/simplify_B_place.patch

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 1af7b34..0165a4e 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -19,6 +19,10 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
            file://fix_version_parse.patch \
            file://fixed_defined_warnings.patch \
            file://call_output_config.patch \
+           file://fix_missing_use_directives.patch \
+           file://fix_number_of_modules.patch \
+           file://remove_questions_text_file_references.patch \
+           file://simplify_B_place.patch \
            "
 
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
diff --git a/recipes-security/bastille/files/fix_missing_use_directives.patch b/recipes-security/bastille/files/fix_missing_use_directives.patch
new file mode 100644
index 0000000..8bc8931
--- /dev/null
+++ b/recipes-security/bastille/files/fix_missing_use_directives.patch
@@ -0,0 +1,48 @@
+Index: Bastille/Bastille/Firewall.pm
+===================================================================
+--- Bastille.orig/Bastille/Firewall.pm	2008-09-14 19:56:54.000000000 -0400
++++ Bastille/Bastille/Firewall.pm	2013-08-20 16:28:44.588378000 -0400
+@@ -21,6 +21,7 @@
+ package Bastille::Firewall;
+ 
+ use Bastille::API;
++use Bastille::API::AccountPermission;
+ use Bastille::API::FileContent;
+ use Bastille::API::ServiceAdmin;
+ 
+Index: Bastille/Bastille/SecureInetd.pm
+===================================================================
+--- Bastille.orig/Bastille/SecureInetd.pm	2008-09-14 19:56:58.000000000 -0400
++++ Bastille/Bastille/SecureInetd.pm	2013-08-20 16:45:02.252378001 -0400
+@@ -12,6 +12,7 @@
+ use lib "/usr/lib";
+ 
+ use Bastille::API;
++use Bastille::API::AccountPermission;
+ use Bastille::API::HPSpecific;
+ use Bastille::API::ServiceAdmin;
+ use Bastille::API::FileContent;
+Index: Bastille/Bastille/ConfigureMiscPAM.pm
+===================================================================
+--- Bastille.orig/Bastille/ConfigureMiscPAM.pm	2005-09-12 23:47:28.000000000 -0400
++++ Bastille/Bastille/ConfigureMiscPAM.pm	2013-08-20 18:36:07.340378001 -0400
+@@ -5,6 +5,7 @@
+ use lib "/usr/lib";
+ 
+ use Bastille::API;
++use Bastille::API::FileContent;
+ 
+ # To DO:
+ #
+Index: Bastille/Bastille/Printing.pm
+===================================================================
+--- Bastille.orig/Bastille/Printing.pm	2008-09-14 19:56:58.000000000 -0400
++++ Bastille/Bastille/Printing.pm	2013-08-20 19:05:01.532378002 -0400
+@@ -5,6 +5,7 @@
+ use lib "/usr/lib";
+ 
+ use Bastille::API;
++use Bastille::API::AccountPermission;
+ use Bastille::API::HPSpecific;
+ use Bastille::API::ServiceAdmin;
+ use Bastille::API::FileContent;
diff --git a/recipes-security/bastille/files/fix_number_of_modules.patch b/recipes-security/bastille/files/fix_number_of_modules.patch
new file mode 100644
index 0000000..7fed0bd
--- /dev/null
+++ b/recipes-security/bastille/files/fix_number_of_modules.patch
@@ -0,0 +1,32 @@
+Index: Bastille/Bastille_Curses.pm
+===================================================================
+--- Bastille.orig/Bastille_Curses.pm	2013-08-24 18:21:54.445288000 -0400
++++ Bastille/Bastille_Curses.pm	2013-08-24 18:29:16.981288000 -0400
+@@ -36,9 +36,6 @@
+     use Curses;
+     use Curses::Widgets;
+ 
+-    # Number_Modules is the number of modules loaded in by Load_Questions
+-    $Number_Modules=0;
+-
+     #
+     # Highlighted button is the button currently chosen in the button bar
+     #     We preserve this from question to question...
+@@ -397,7 +394,7 @@
+     my $title;
+ 
+     if ($module) {
+-	$title=$module . " of $Number_Modules";
++	$title=$module;
+     }
+ 
+     txt_field( 'window'       => $window,
+@@ -488,7 +485,7 @@
+     my $title;
+ 
+     if ($module) {
+-	$title=$module . " of $Number_Modules";
++	$title=$module;
+     }
+ 
+     noecho;
diff --git a/recipes-security/bastille/files/remove_questions_text_file_references.patch b/recipes-security/bastille/files/remove_questions_text_file_references.patch
new file mode 100644
index 0000000..5daf6b5
--- /dev/null
+++ b/recipes-security/bastille/files/remove_questions_text_file_references.patch
@@ -0,0 +1,24 @@
+Index: Bastille/OSMap/LINUX.bastille
+===================================================================
+--- Bastille.orig/OSMap/LINUX.bastille	2008-01-25 18:31:35.000000000 -0500
++++ Bastille/OSMap/LINUX.bastille	2013-08-22 04:48:32.677968002 -0400
+@@ -12,7 +12,6 @@
+ 
+ bfile,InteractiveBastille,'/usr/sbin/InteractiveBastille'
+ bfile,BastilleBackEnd,'/usr/sbin/BastilleBackEnd'
+-bfile,Questions,'/usr/share/Bastille/Questions.txt'
+ bfile,QuestionsModules,'/usr/share/Bastille/Modules.txt'
+ bfile,TODO,'/var/log/Bastille/TODO'
+ bfile,TODOFlag,'/var/log/Bastille/TODOFlag.txt'
+Index: Bastille/OSMap/OSX.bastille
+===================================================================
+--- Bastille.orig/OSMap/OSX.bastille	2007-09-11 18:09:26.000000000 -0400
++++ Bastille/OSMap/OSX.bastille	2013-08-22 04:48:47.245968001 -0400
+@@ -10,7 +10,6 @@
+ bdir,share,'/usr/share/Bastille'
+ 
+ bfile,BastilleBackEnd,'/var/root/Bastille/BastilleBackEnd'
+-bfile,Questions,'/usr/share/Bastille/Questions.txt'
+ bfile,QuestionsModules,'/usr/share/Bastille/Modules.txt'
+ bfile,TODO,'/var/log/Bastille/TODO'
+ bfile,TODOFlag,'/var/log/Bastille/TODOFlag.txt'
diff --git a/recipes-security/bastille/files/simplify_B_place.patch b/recipes-security/bastille/files/simplify_B_place.patch
new file mode 100644
index 0000000..7c874f5
--- /dev/null
+++ b/recipes-security/bastille/files/simplify_B_place.patch
@@ -0,0 +1,34 @@
+Index: Bastille/Bastille/API.pm
+===================================================================
+--- Bastille.orig/Bastille/API.pm	2013-08-21 08:59:17.939950001 -0400
++++ Bastille/Bastille/API.pm	2013-08-21 08:59:30.983950001 -0400
+@@ -1679,24 +1679,22 @@
+ 
+     use File::Copy;
+ 
+-    my $original_source=$source;
+     $source  = &getGlobal('BDIR', "share") . $source;
+-    my $original_target=$target;
+ 
+     if ( -e $target and -f $target ) {
+-	&B_backup_file($original_target);
+-	&B_log("ACTION","About to copy $original_source to $original_target -- had to backup target\n");
++	&B_backup_file($target);
++	&B_log("ACTION","About to copy $source to $target -- had to backup target\n");
+ 	$had_to_backup_target=1;
+     }
+     $retval=copy($source,$target);
+     if ($retval) {
+-	&B_log("ACTION","placed file $original_source  as  $original_target\n");
++	&B_log("ACTION","placed file $source  as  $target\n");
+ 	#
+ 	# We want to add a line to the &getGlobal('BFILE', "created-files") so that the
+ 	# file we just put at $original_target gets deleted.
+-	&B_revert_log(&getGlobal('BIN',"rm") . " $original_target\n");
++	&B_revert_log(&getGlobal('BIN',"rm") . " $target\n");
+     } else {
+-	&B_log("ERROR","Failed to place $original_source as $original_target\n");
++	&B_log("ERROR","Failed to place $source as $target\n");
+     }
+ 
+     # We add the file to the GLOBAL_SUMS hash if it is not already present
-- 
1.7.10.4


