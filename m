Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B602E00A38; Tue, 14 Aug 2018 04:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9678E009D4
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:50:53 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id r16-v6so16930820wrt.11
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 04:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=UgfJDYfQyEOqFzT1rio/EjWIM8RqNfSkyiKIciRp6oQ=;
	b=lwB+QonNvVb52TBjxLEZX+CpQ/PLjo3sXPaNf48mdGVn4lJYZHZhFdtiLwIW7dvL5p
	xChtxRuyTYZbUDC6wKdifO4eCnu5JoFLm4reXtB6pkzk15PHWl3LBZDh6ua2x+WkP31A
	KRsMgYBFIOWVycEl9Xx5Sbxu5yOPwHjItwQ6mj/QkBnZmwLUjif4Bb/Ji9UH6pLAylmA
	eW4JTsiRdNpxoXlMvLbmlOBP8lYegEXls0Wi+qZWehUis/slQ4vuHjwDgYV7tmvT0cOJ
	YeCwXzgDFYPGbSagm4wd3x1KNta7sKs0ovHlFsfcflWJjGXCEimiHg1DvBIy2S96KNsg
	T+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=UgfJDYfQyEOqFzT1rio/EjWIM8RqNfSkyiKIciRp6oQ=;
	b=XtDtwn5uf+JOngFlaWWPPDfS4ZhlxyiOKjWWGy5DeIF5tRISqGktvCEp5qHRFfEd3H
	7d48wMerClfoA1Pv78vzhS6U46TO89sFgLSVbT5XL6Q+Ib5MkidyTIr+lpGpc326Mup5
	4KfkcOxRqkm2lGKkBSpl3A0rX50RAUxops7/Cl9rH32Km2/LflWn39BDkHN+GY+fxO5M
	V8hH6IaucXr9UkKrdPvt11lqbqkCrSmT6wV4f4HRiWNJQoHB3x7Nvaioa2RlEvG2BHQy
	jWFI60wMicaPc5OvFy1xoym0YaGmrGsLooZaNqyVkZZOCtWl3ZUxHlCmdb6+V1XnVL27
	A4MQ==
X-Gm-Message-State: AOUpUlESP3GdBEvIc39lVEJMyv4pkNl1t/cdEB1wY7WwQtNhKr3GI0or
	4BFkiEX6tLoWJnDPjECZjpmEmyLKURc=
X-Google-Smtp-Source: AA+uWPxUZ0u3FkrvEWJgul/9fPE51uyzAoY8RhA1aISOkzkSjdqDSQYHdudClB9roZe2AyIqZw+v7Q==
X-Received: by 2002:adf:9c12:: with SMTP id
	f18-v6mr13660616wrc.93.1534247452483; 
	Tue, 14 Aug 2018 04:50:52 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	t198-v6sm22061171wmd.16.2018.08.14.04.50.51
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Aug 2018 04:50:51 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 12:50:44 +0100
Message-Id: <20180814115045.506-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH meta-gplv2 1/2] coreutils: don't build su
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
X-List-Received-Date: Tue, 14 Aug 2018 11:50:54 -0000

Previously we built su but didn't package it because util-linux is the preferred
provider.  However with glibc 2.28 libcrypt has been removed so su doesn't
build.  Instead of depending on virtual/crypt, lets just not build su at all.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-core/coreutils/coreutils-6.9/no-su.patch | 56 ++++++++++++++++++++++++
 recipes-core/coreutils/coreutils_6.9.bb          |  5 +--
 2 files changed, 57 insertions(+), 4 deletions(-)
 create mode 100644 recipes-core/coreutils/coreutils-6.9/no-su.patch

diff --git a/recipes-core/coreutils/coreutils-6.9/no-su.patch b/recipes-core/coreutils/coreutils-6.9/no-su.patch
new file mode 100644
index 0000000..47339e5
--- /dev/null
+++ b/recipes-core/coreutils/coreutils-6.9/no-su.patch
@@ -0,0 +1,56 @@
+Newer versions of su don't provide su as util-linux is the preferred provider,
+so don't build it.
+
+Upstream-Status: Inappropriate
+Signed-off-by: Ross Burton <ross.burton@intel.com>
+
+diff --git a/src/Makefile.am b/src/Makefile.am
+index 863a32b5a..28c060898 100644
+--- a/src/Makefile.am
++++ b/src/Makefile.am
+@@ -16,7 +16,7 @@
+ ## along with this program; if not, write to the Free Software Foundation,
+ ## Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
+ 
+-EXTRA_PROGRAMS = chroot df hostid nice pinky stty su uname uptime users who
++EXTRA_PROGRAMS = chroot df hostid nice pinky stty uname uptime users who
+ 
+ bin_SCRIPTS = groups
+ bin_PROGRAMS = [ chgrp chown chmod cp dd dircolors du \
+@@ -131,8 +131,6 @@ RELEASE_YEAR = \
+ 	chmod +x $@-t
+ 	mv $@-t $@
+ 
+-all-local: su$(EXEEXT)
+-
+ installed_su = $(DESTDIR)$(bindir)/`echo su|sed '$(transform)'`
+ 
+ setuid_root_mode = a=rx,u+s
+@@ -146,27 +144,6 @@ INSTALL_SU = \
+   echo " chmod $(setuid_root_mode) $(installed_su)"; \
+   chmod $(setuid_root_mode) $(installed_su)
+ 
+-install-root: su$(EXEEXT)
+-	@$(INSTALL_SU)
+-
+-install-exec-local: su$(EXEEXT)
+-	@TMPFILE=$(DESTDIR)$(bindir)/.su-$$$$; \
+-	rm -f $$TMPFILE; \
+-	echo > $$TMPFILE; \
+-## See if we can create a setuid root executable in $(bindir).
+-## If not, then don't even try to install su.
+-	can_create_suid_root_executable=no; \
+-	chown root $$TMPFILE > /dev/null 2>&1 \
+-	  && chmod $(setuid_root_mode) $$TMPFILE > /dev/null 2>&1 \
+-	  && can_create_suid_root_executable=yes; \
+-	rm -f $$TMPFILE; \
+-	if test $$can_create_suid_root_executable = yes; then \
+-	  $(INSTALL_SU); \
+-	else \
+-	  echo "WARNING: insufficient access; not installing su"; \
+-	  echo "NOTE: to install su, run 'make install-root' as root"; \
+-	fi
+-
+ uninstall-local:
+ # Remove su only if it's one we installed.
+ 	@if grep '$(GNU_PACKAGE)' $(installed_su) > /dev/null 2>&1; then \
diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 0d236b2..ae941fd 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -28,6 +28,7 @@ SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
            file://loadavg.patch \
            file://no-man.patch \
            file://build-don-t-need-charset.alias-when-building-for-mus.patch \
+           file://no-su.patch \
            "
 
 SRC_URI[md5sum] = "c9607d8495f16e98906e7ed2d9751a06"
@@ -78,10 +79,6 @@ do_install() {
 	# in update-alternatives to fail, therefore use lbracket - the name used
 	# for the actual source file.
 	mv ${D}${bindir}/[ ${D}${bindir}/lbracket.${BPN}
-
-	# Newer versions of coreutils do not include su, to mimic this behavior
-	# we simply remove it.
-	rm -f ${D}${bindir}/su
 }
 
 inherit update-alternatives
-- 
2.11.0


