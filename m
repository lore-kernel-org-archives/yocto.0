Return-Path: <mulhern@gmail.com>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0C4E013B0;
	Sun, 25 Aug 2013 18:17:32 -0700 (PDT)
Received: by mail-qe0-f46.google.com with SMTP id f6so1444435qej.19
	for <multiple recipients>; Sun, 25 Aug 2013 18:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=koE15f3EiX9jS+PHiUZOmzvwCk491LCZrVab6lv8vgc=;
	b=mjzDmP3qR/Y8XummSgqhhOVJz4D5g5/5XAEYBnJ1Efw8+6sIR192ogpFSugdESe/2r
	izTdu2lm0oLWPJFAyBLcAcB5M5as3hrNdBxTipSz98VPObTiA0JX5gcc3osj5ir8p8Y+
	l0I/nR0h45Ct7mw9UEmZRjNjoAQmetieozgTaq69T1I6PoJIZmW46MHS/PYBpbmMHW5Q
	ecS+93EFhURGO1BZo0FGaS+7pm16NkzmkUf0QQnCtvnlpUhWR5i/lyWqPmGypqDf/D18
	/DFpndjRuMs0oiCa+ZYvuLJZbj6OLA3RxmPEhFFbe6TQV9KYENMrpUjueiyKRfNL9XmK
	uLcA==
X-Received: by 10.49.131.200 with SMTP id oo8mr14436182qeb.0.1377479852429;
	Sun, 25 Aug 2013 18:17:32 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-24-128-153-12.hsd1.ma.comcast.net.
	[24.128.153.12])
	by mx.google.com with ESMTPSA id z10sm4851839qal.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Sun, 25 Aug 2013 18:17:32 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Sun, 25 Aug 2013 21:17:30 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Sun, 25 Aug 2013 21:17:10 -0400
Message-Id: <e31f5cdee8a5db18192131c77966b90a4273453b.1377479358.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1377479358.git.mulhern@yoctoproject.org>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1377479358.git.mulhern@yoctoproject.org>
References: <cover.1377479358.git.mulhern@yoctoproject.org>
Subject: [PATCH 3/5] Bastille: change in behavior of bastille -l.
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
X-List-Received-Date: Mon, 26 Aug 2013 01:17:34 -0000

[YOCTO #3867]

bastille -l now reports existing configuration file paths even if it has
not previously been run. Previously, it exited with an error if it detected
an absence of log files indicating a previous run.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/bastille/bastille_3.2.1.bb        |    1 +
 .../bastille/files/find_existing_config.patch      |   58 ++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 recipes-security/bastille/files/find_existing_config.patch

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 0165a4e..c8d0103 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -23,6 +23,7 @@ SRC_URI = "http://sourceforge.net/projects/bastille-linux/files/bastille-linux/3
            file://fix_number_of_modules.patch \
            file://remove_questions_text_file_references.patch \
            file://simplify_B_place.patch \
+           file://find_existing_config.patch \
            "
 
 SRC_URI[md5sum] = "df803f7e38085aa5da79f85d0539f91b"
diff --git a/recipes-security/bastille/files/find_existing_config.patch b/recipes-security/bastille/files/find_existing_config.patch
new file mode 100644
index 0000000..73e346f
--- /dev/null
+++ b/recipes-security/bastille/files/find_existing_config.patch
@@ -0,0 +1,58 @@
+Index: Bastille/bin/bastille
+===================================================================
+--- Bastille.orig/bin/bastille	2013-06-20 14:58:01.065796000 -0400
++++ Bastille/bin/bastille	2013-08-20 15:16:18.472378000 -0400
+@@ -102,8 +102,9 @@
+     # defines OS specific file locations based on uname
+     systemFileLocations
+ 
++    config_files=`find $config_repository -type f -name \*config 2>/dev/null`
++
+     if [ -f $last_config ]; then
+-        config_files=`find $config_repository -type f -name \*config 2>/dev/null`
+ 	for config_cursor in `echo $config_files`
+ 	  do
+ 	  if /usr/bin/diff $last_config $config_cursor >/dev/null 2>&1
+@@ -112,8 +113,8 @@
+ 	  fi
+ 	done
+ 	if [ -n "$match" ]; then
+-	    echo "The last bastille run corresponds to the following profiles:"
+-	    echo "$match"
++	    printf "The last Bastille run corresponds to the following profiles:\n"
++	    printf "$match"
+ 	else
+             cat >&2 << EOF
+ NOTE:    The last config file applied,
+@@ -122,18 +123,28 @@
+ $ERRSPACES $config_repository.
+ $ERRSPACES This probably means that Bastille was last run interactively and
+ $ERRSPACES changes were made to the config file, but they have not yet been
+-$ERRSPACES applied, or that the source config file was moved.  If you do have pending 
++$ERRSPACES applied, or that the source config file was moved.  If you do have pending
+ $ERRSPACES changes in a config file, you can apply them by running
+ $ERRSPACES 'bastille -b -f <config file>.'
+ EOF
+ 
+ 	fi
+     else
+-	echo "NOTE:    The system is in its pre-bastilled state.\n"
++	for config_cursor in `echo $config_files`
++	  do
++	  match="$match   $config_cursor\n"
++	done
++        if [ -n "$match" ]; then
++            printf "The following Bastille profiles were located:\n"
++            printf "$match"
++        else
++            printf "No Bastille profiles were located.\n"
++        fi
++        printf "No log files of profiles from previous executions of Bastille have been found. It is likely that Bastille has not been run on this machine.\n"
+     fi
+-
+ }
+ 
++
+ # First, make sure we're root
+ if [ `PATH="/usr/bin:/bin"; id -u` -ne 0 ]; then
+     echo "ERROR:   Bastille must be run as root user" >&2
-- 
1.7.10.4


