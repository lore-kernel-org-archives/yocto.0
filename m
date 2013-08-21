Return-Path: <andrei@gherzan.ro>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E52E3E00406
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:22:15 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id wo10so1027798obc.41
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:22:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=g0y+YmchVNFDPE32N5w1r0ZVgesvVf7TeUC1aq05s9c=;
	b=bJ9ehKi3Aqyxd9NcdewGDcjyaFlh1UTyzlrGOvAuhdXLDqn4MzZYcPb1mglKMJJXOT
	4aq2v4gUcjW34OYVZhGIFLMAuxv9tb8pETtP8wSBNVexerR9QbnfNTncPWnPpv8e30kX
	1ExvYFb0fLHfaEZRRCyLf9CUJJeMHdaD7gDtUB/EKJAeP6dCA76W39bsJ7VchLM6uYg1
	a6Nszm2DezGa2Kf94b89ZQsrgfIf1MQntKXlnzPEeH9zpFjL6ccuLOJl6PCVC3qcmDg0
	nBcnbLM8G7nGPCRlP5iaR3z7XNaeeOUmdyPSOXt9J/VoD/hNGTYZrKy6Um1YnoYS12eC
	ZgtQ==
X-Gm-Message-State: ALoCoQnYyA0dKHW5hmDjtCpSX8h8cJZRNXFgY5d8cs7x7lNJKNKpFhf4aj1tlesgBrHRhJCs0D07
X-Received: by 10.60.95.99 with SMTP id dj3mr1992429oeb.94.1377098534648;
	Wed, 21 Aug 2013 08:22:14 -0700 (PDT)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id b5sm11053663obj.8.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 21 Aug 2013 08:22:13 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Aug 2013 18:22:02 +0300
Message-Id: <1377098522-25948-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] base-files: Remove profile and fstab
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
X-List-Received-Date: Wed, 21 Aug 2013 15:22:16 -0000

Remove these files as the default ones work just OK.
Moreover, not having /run mounted as tmpfs, would break mounting root as
read only. This is done in the default fstab so use that one.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../base-files/base-files/raspberrypi/fstab        |  9 ------
 .../base-files/base-files/raspberrypi/profile      | 33 ----------------------
 recipes-core/base-files/base-files_3.0.14.bbappend |  3 --
 3 files changed, 45 deletions(-)
 delete mode 100644 recipes-core/base-files/base-files/raspberrypi/fstab
 delete mode 100644 recipes-core/base-files/base-files/raspberrypi/profile
 delete mode 100644 recipes-core/base-files/base-files_3.0.14.bbappend

diff --git a/recipes-core/base-files/base-files/raspberrypi/fstab b/recipes-core/base-files/base-files/raspberrypi/fstab
deleted file mode 100644
index 55da1df..0000000
--- a/recipes-core/base-files/base-files/raspberrypi/fstab
+++ /dev/null
@@ -1,9 +0,0 @@
-# stock fstab for the RaspberryPi - you may want to tweak this to suit.
-
-rootfs               /                    auto       defaults,noatime      1  1
-proc                 /proc                proc       defaults              0  0
-devpts               /dev/pts             devpts     mode=0620,gid=5       0  0
-usbfs                /proc/bus/usb        usbfs      defaults              0  0
-tmpfs                /var/volatile        tmpfs      defaults              0  0
-tmpfs                /dev/shm             tmpfs      mode=0777             0  0
-tmpfs                /media/ram           tmpfs      defaults              0  0
diff --git a/recipes-core/base-files/base-files/raspberrypi/profile b/recipes-core/base-files/base-files/raspberrypi/profile
deleted file mode 100644
index 55568ad..0000000
--- a/recipes-core/base-files/base-files/raspberrypi/profile
+++ /dev/null
@@ -1,33 +0,0 @@
-# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
-# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).
-
-PATH="/usr/local/bin:/usr/bin:/bin"
-EDITOR="/bin/vi"			# needed for packages like cron
-test -z "$TERM" && TERM="vt100"	# Basic terminal capab. For screen etc.
-
-if [ ! -e /etc/localtime -a ! -e /etc/TZ ]; then
-	TZ="UTC"		# Time Zone. Look at http://theory.uwinnipeg.ca/gnu/glibc/libc_303.html 
-				# for an explanation of how to set this to your local timezone.
-	export TZ
-fi
-
-if [ "`id -u`" -eq 0 ]; then
-   PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin:
-fi
-if [ "$PS1" ]; then
-# works for bash and ash (no other shells known to be in use here)
-   PS1='\u@\h:\w\$ '
-fi
-
-if [ -d /etc/profile.d ]; then
-  for i in /etc/profile.d/*.sh; do
-    if [ -r $i ]; then
-      . $i
-    fi
-  done
-  unset i
-fi
-
-export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM
-
-umask 022
diff --git a/recipes-core/base-files/base-files_3.0.14.bbappend b/recipes-core/base-files/base-files_3.0.14.bbappend
deleted file mode 100644
index 36432f5..0000000
--- a/recipes-core/base-files/base-files_3.0.14.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-# Don't forget to bump PRINC if you update the extra files.
-PRINC = "1"
-- 
1.8.1.4


