Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75FE7E010C3; Mon,  5 Mar 2018 01:31:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D77E00D6D
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:31 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id i3so14001050wmi.4
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Tg+rW2jz6aiwCu+PBs4Aoaw4XJatTtWkq9XalF76nTE=;
	b=WqfBNi4Mi89NigWV5O3y0YNZdrJaZ4aCLsINkJssa5dLdKhnL12Ns+SDgTen1uFk3y
	b4mqQiyuid0ikL4hXxCMe6lDw0wY90flxKCAIGlhYM8m4uZR8/HdemqJtpaR9igcAmIm
	mVYD0jJuO4Vlu8Zo7wl0pG/a0Q6328JVCy9LPMpZUG8zCWvAO5gVZKryATLdoGM+XSFw
	br5jR9zl+ih2rZ9NkWINDGYkE4DdqrIyibIlCKweR1wu7KMNzwPHHE53F9OzyIPbAwVf
	Y4ZpXTmpwWd7BJEP/BHOLQXHyT85l9uVoKZv8FDAYiQ3NTagdzxddY+FfH+y6+XmOkqZ
	qVUw==
X-Gm-Message-State: AElRT7FCLT5DvOiWu44UrO+2A0PuZP7RCGDmSzm8sd2kEoJQ6OukNGnu
	lRbHutBd2cCxxylHspJDcszn/CHv
X-Google-Smtp-Source: AG47ELtH/0stVwx8Wu2UHYr0C0WKy8PpMWM2gJuBaYIEH8OOlji5Y/tEkb2palPk2s1z0B9g9oFSIw==
X-Received: by 10.28.164.195 with SMTP id n186mr8162018wme.149.1520242288769; 
	Mon, 05 Mar 2018 01:31:28 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:27 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:05 +0000
Message-Id: <20180305093106.11858-14-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 13/14] openjdk-8: fix musl build
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

Add various patches to make it work in musl. Some of them are generic
enough to be applied for all builds, some need to be specific to musl.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-release-162b12.inc  |  16 ++
 ...dk-comparison-between-pointer-and-integer.patch |   2 +-
 ...x-compilation-with-security-flags-enabled.patch |   2 +-
 ...dk-Allow-using-a-system-installed-libjpeg.patch |   2 +-
 ...jdk-Allow-using-a-system-installed-libpng.patch |   2 +-
 ...0005-hotspot-use-correct-include-for-poll.patch |  85 ++++++++++
 ...006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch |  41 +++++
 .../0007-jdk-use-correct-include-for-poll.patch    | 172 +++++++++++++++++++++
 .../0008-jdk-use-correct-include-for-signal.patch  |  89 +++++++++++
 ...0009-jdk-disable-backtrace-musl-build-fix.patch |  45 ++++++
 ...l-0001-hotspot-stop-using-obsolete-isnanf.patch |  42 +++++
 ...-give-a-much-bigger-buffer-to-getmntent_r.patch | 103 ++++++++++++
 ...x-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch |  37 +++++
 ...dk-remove-sysctl.h-include-musl-build-fix.patch |  90 +++++++++++
 .../musl-0005-hotspot-disable-agent-build.patch    |  88 +++++++++++
 ...otspot-os_linux-remove-glibc-dependencies.patch |  75 +++++++++
 ...linux_x86-remove-glibc-dependencies-fpu_c.patch |  46 ++++++
 ...ild-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch |  69 +++++++++
 .../musl-0009-jdk-musl-has-gethostby_r.patch       |  35 +++++
 19 files changed, 1037 insertions(+), 4 deletions(-)
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0005-hotspot-use-correct-include-for-poll.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0007-jdk-use-correct-include-for-poll.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0008-jdk-use-correct-include-for-signal.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/0009-jdk-disable-backtrace-musl-build-fix.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0001-hotspot-stop-using-obsolete-isnanf.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0005-hotspot-disable-agent-build.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch
 create mode 100644 recipes-core/openjdk/patches-openjdk-8/musl-0009-jdk-musl-has-gethostby_r.patch

diff --git a/recipes-core/openjdk/openjdk-8-release-162b12.inc b/recipes-core/openjdk/openjdk-8-release-162b12.inc
index d672148..dc1e023 100644
--- a/recipes-core/openjdk/openjdk-8-release-162b12.inc
+++ b/recipes-core/openjdk/openjdk-8-release-162b12.inc
@@ -10,6 +10,11 @@ PATCHES_URI = "\
     file://0002-hotspot-fix-compilation-with-security-flags-enabled.patch \
     file://0003-jdk-Allow-using-a-system-installed-libjpeg.patch \
     file://0004-jdk-Allow-using-a-system-installed-libpng.patch \
+    file://0005-hotspot-use-correct-include-for-poll.patch \
+    file://0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch \
+    file://0007-jdk-use-correct-include-for-poll.patch \
+    file://0008-jdk-use-correct-include-for-signal.patch \
+    file://0009-jdk-disable-backtrace-musl-build-fix.patch \
 "
 # some patches extracted from http://cr.openjdk.java.net/~rkennke/shark-build-hotspot/webrev.01/hotspot.patch
 # reported via http://mail.openjdk.java.net/pipermail/build-dev/2015-January/013972.html
@@ -23,6 +28,17 @@ PATCHES_URI_append_class-target = "\
     file://openjdk8-add-missing-linker-flags.patch;striplevel=0 \
     file://openjdk8-fix-libpng-neon-build.patch;striplevel=0 \
 "
+PATCHES_URI_append_libc-musl = "\
+    file://musl-0001-hotspot-stop-using-obsolete-isnanf.patch \
+    file://musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch \
+    file://musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch \
+    file://musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch \
+    file://musl-0005-hotspot-disable-agent-build.patch \
+    file://musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch \
+    file://musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch \
+    file://musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch \
+    file://musl-0009-jdk-musl-has-gethostby_r.patch \
+"
 
 # Name of the directory containing the compiled output
 BUILD_DIR = "openjdk.build"
diff --git a/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch b/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch
index 29a30d6..b310598 100644
--- a/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/0001-jdk-comparison-between-pointer-and-integer.patch
@@ -1,7 +1,7 @@
 From 97d6911fb581f9e44785db29abbf97ce77713f50 Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
 Date: Fri, 2 Mar 2018 11:13:08 +0000
-Subject: [PATCH 1/8] jdk: comparison between pointer and integer
+Subject: [PATCH 1/9] jdk: comparison between pointer and integer
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
diff --git a/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch b/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch
index f06e791..a94e90f 100644
--- a/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/0002-hotspot-fix-compilation-with-security-flags-enabled.patch
@@ -1,7 +1,7 @@
 From bdea8cf299313388ec41ea20281deca6dc4f764d Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
 Date: Tue, 27 Feb 2018 14:41:06 +0000
-Subject: [PATCH 2/8] hotspot: fix compilation with security flags enabled
+Subject: [PATCH 2/9] hotspot: fix compilation with security flags enabled
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
diff --git a/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch b/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch
index a40e11f..e189278 100644
--- a/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/0003-jdk-Allow-using-a-system-installed-libjpeg.patch
@@ -1,7 +1,7 @@
 From a6746c1ee43a63e79b5405e40c463d00160bc02e Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
 Date: Tue, 27 Feb 2018 13:36:53 +0000
-Subject: [PATCH 3/8] jdk: Allow using a system-installed libjpeg
+Subject: [PATCH 3/9] jdk: Allow using a system-installed libjpeg
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
diff --git a/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch b/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch
index af00bef..658ba32 100644
--- a/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch
+++ b/recipes-core/openjdk/patches-openjdk-8/0004-jdk-Allow-using-a-system-installed-libpng.patch
@@ -1,7 +1,7 @@
 From 549100e3e687d2c844eeebe22a7dcbf7ed50406e Mon Sep 17 00:00:00 2001
 From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
 Date: Tue, 27 Feb 2018 13:43:04 +0000
-Subject: [PATCH 4/8] jdk: Allow using a system-installed libpng
+Subject: [PATCH 4/9] jdk: Allow using a system-installed libpng
 MIME-Version: 1.0
 Content-Type: text/plain; charset=UTF-8
 Content-Transfer-Encoding: 8bit
diff --git a/recipes-core/openjdk/patches-openjdk-8/0005-hotspot-use-correct-include-for-poll.patch b/recipes-core/openjdk/patches-openjdk-8/0005-hotspot-use-correct-include-for-poll.patch
new file mode 100644
index 0000000..45573e4
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0005-hotspot-use-correct-include-for-poll.patch
@@ -0,0 +1,85 @@
+From 79e35bd203b40979e1d241a04d6d9df373327bef Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 09:28:06 +0000
+Subject: [PATCH 5/9] hotspot: use correct include for poll
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Compiling against musl-libc gives the following warning (which is
+treated as error due to -Werror):
+.../recipe-sysroot/usr/include/sys/poll.h:1:2: error: #warning redirecting incorrect #include <sys/poll.h> to <poll.h> [-Werror=cpp]
+ #warning redirecting incorrect #include <sys/poll.h> to <poll.h>
+  ^~~~~~~
+etc.
+
+To use poll(), poll.h needs to be included, even on glibc - do so using
+the following command:
+    for i in $(git grep sys/poll\.h hotspot | cut -f 1 -d : | sort -u) ; do
+        sed -e 's,sys/poll\.h,poll.h,g' -i ${i}
+    done
+
+Upstream-Status: Pending
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/os/aix/vm/os_aix.inline.hpp         | 2 +-
+ hotspot/src/os/bsd/vm/os_bsd.inline.hpp         | 2 +-
+ hotspot/src/os/linux/vm/os_linux.inline.hpp     | 2 +-
+ hotspot/src/os/solaris/vm/os_solaris.inline.hpp | 2 +-
+ 4 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/hotspot/src/os/aix/vm/os_aix.inline.hpp b/hotspot/src/os/aix/vm/os_aix.inline.hpp
+index a97c94c0..e2974ee1 100644
+--- a/hotspot/src/os/aix/vm/os_aix.inline.hpp
++++ b/hotspot/src/os/aix/vm/os_aix.inline.hpp
+@@ -34,7 +34,7 @@
+ 
+ #include <unistd.h>
+ #include <sys/socket.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <sys/ioctl.h>
+ #include <netdb.h>
+ 
+diff --git a/hotspot/src/os/bsd/vm/os_bsd.inline.hpp b/hotspot/src/os/bsd/vm/os_bsd.inline.hpp
+index 10b39941..3144a29c 100644
+--- a/hotspot/src/os/bsd/vm/os_bsd.inline.hpp
++++ b/hotspot/src/os/bsd/vm/os_bsd.inline.hpp
+@@ -33,7 +33,7 @@
+ 
+ #include <unistd.h>
+ #include <sys/socket.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <netdb.h>
+ 
+ inline void* os::thread_local_storage_at(int index) {
+diff --git a/hotspot/src/os/linux/vm/os_linux.inline.hpp b/hotspot/src/os/linux/vm/os_linux.inline.hpp
+index 10d56d89..b9b2b775 100644
+--- a/hotspot/src/os/linux/vm/os_linux.inline.hpp
++++ b/hotspot/src/os/linux/vm/os_linux.inline.hpp
+@@ -33,7 +33,7 @@
+ 
+ #include <unistd.h>
+ #include <sys/socket.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <netdb.h>
+ 
+ inline void* os::thread_local_storage_at(int index) {
+diff --git a/hotspot/src/os/solaris/vm/os_solaris.inline.hpp b/hotspot/src/os/solaris/vm/os_solaris.inline.hpp
+index 921fcf7c..5d80a7d0 100644
+--- a/hotspot/src/os/solaris/vm/os_solaris.inline.hpp
++++ b/hotspot/src/os/solaris/vm/os_solaris.inline.hpp
+@@ -33,7 +33,7 @@
+ #include <sys/param.h>
+ #include <dlfcn.h>
+ #include <sys/socket.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <sys/filio.h>
+ #include <unistd.h>
+ #include <netdb.h>
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch b/recipes-core/openjdk/patches-openjdk-8/0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch
new file mode 100644
index 0000000..f6af83e
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0006-hotspot-don-t-rely-on-old-SysV-SIGCLD.patch
@@ -0,0 +1,41 @@
+From 4ed4b58270dcd3d897adef605893c104944c4f3a Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 15:00:55 +0000
+Subject: [PATCH 6/9] hotspot: don't rely on old SysV SIGCLD
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+SIGCLD is the old System V name for SIGCHLD, and not
+all c libraries implement it, e.g. musl-libc, which
+leads to the following compilation error:
+
+| hotspot/src/os/linux/vm/jvm_linux.cpp:157:17: error: 'SIGCLD' was not declared in this scope
+|    "CLD",        SIGCLD,         /* Same as SIGCHLD (System V).  */
+|                  ^~~~~~
+
+Just make it conditional, so the code compiles everywhere.
+
+Upstream-Status: Pending
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/os/linux/vm/jvm_linux.cpp | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/hotspot/src/os/linux/vm/jvm_linux.cpp b/hotspot/src/os/linux/vm/jvm_linux.cpp
+index ba84788a..c22281f7 100644
+--- a/hotspot/src/os/linux/vm/jvm_linux.cpp
++++ b/hotspot/src/os/linux/vm/jvm_linux.cpp
+@@ -154,7 +154,9 @@ struct siglabel siglabels[] = {
+ #ifdef SIGSTKFLT
+   "STKFLT",     SIGSTKFLT,      /* Stack fault.  */
+ #endif
++#ifdef SIGCLD
+   "CLD",        SIGCLD,         /* Same as SIGCHLD (System V).  */
++#endif
+   "CHLD",       SIGCHLD,        /* Child status has changed (POSIX).  */
+   "CONT",       SIGCONT,        /* Continue (POSIX).  */
+   "STOP",       SIGSTOP,        /* Stop, unblockable (POSIX).  */
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/0007-jdk-use-correct-include-for-poll.patch b/recipes-core/openjdk/patches-openjdk-8/0007-jdk-use-correct-include-for-poll.patch
new file mode 100644
index 0000000..2efdbf5
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0007-jdk-use-correct-include-for-poll.patch
@@ -0,0 +1,172 @@
+From df9c5738c4a8a00ba65948503ff0c0cfa2f17e95 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 09:28:06 +0000
+Subject: [PATCH 7/9] jdk: use correct include for poll
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Compiling against musl-libc gives the following warning (which is
+treated as error due to -Werror:
+| In file included from jdk/src/solaris/native/java/net/net_util_md.h:36:0,
+|                  from jdk/src/share/native/java/net/net_util.h:31,
+|                  from jdk/src/solaris/native/java/net/InetAddressImplFactory.c:28:
+| usr/include/sys/poll.h:1:2: warning: #warning redirecting incorrect #include <sys/poll.h> to <poll.h> [-Wcpp]
+|  #warning redirecting incorrect #include <sys/poll.h> to <poll.h>
+|   ^~~~~~~
+etc.
+
+To use poll(), poll.h needs to be included, even on glibc - do so using
+the following command:
+    for i in $(git grep sys/poll\.h jdk | cut -f 1 -d : | sort -u) ; do
+        sed -e 's,sys/poll\.h,poll.h,g' -i ${i}
+    done
+
+Upstream-Status: Pending
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/aix/native/java/net/aix_close.c                 | 2 +-
+ jdk/src/aix/native/sun/nio/ch/AixPollPort.c             | 2 +-
+ jdk/src/solaris/native/java/net/PlainSocketImpl.c       | 2 +-
+ jdk/src/solaris/native/java/net/bsd_close.c             | 2 +-
+ jdk/src/solaris/native/java/net/linux_close.c           | 2 +-
+ jdk/src/solaris/native/java/net/net_util_md.h           | 2 +-
+ jdk/src/solaris/native/sun/nio/ch/DevPollArrayWrapper.c | 2 +-
+ jdk/src/solaris/native/sun/nio/ch/Net.c                 | 2 +-
+ jdk/src/solaris/native/sun/nio/fs/LinuxWatchService.c   | 2 +-
+ jdk/src/solaris/transport/socket/socket_md.c            | 2 +-
+ 10 files changed, 10 insertions(+), 10 deletions(-)
+
+diff --git a/jdk/src/aix/native/java/net/aix_close.c b/jdk/src/aix/native/java/net/aix_close.c
+index 8c070e4b..126f4d7d 100644
+--- a/jdk/src/aix/native/java/net/aix_close.c
++++ b/jdk/src/aix/native/java/net/aix_close.c
+@@ -51,7 +51,7 @@
+ #include <unistd.h>
+ #include <errno.h>
+ 
+-#include <sys/poll.h>
++#include <poll.h>
+ 
+ /*
+  * Stack allocated by thread when doing blocking operation
+diff --git a/jdk/src/aix/native/sun/nio/ch/AixPollPort.c b/jdk/src/aix/native/sun/nio/ch/AixPollPort.c
+index 70064b89..c10c602b 100644
+--- a/jdk/src/aix/native/sun/nio/ch/AixPollPort.c
++++ b/jdk/src/aix/native/sun/nio/ch/AixPollPort.c
+@@ -34,7 +34,7 @@
+ #include <unistd.h>
+ #include <sys/types.h>
+ #include <sys/socket.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <sys/pollset.h>
+ #include <fcntl.h>
+ #include <stddef.h>
+diff --git a/jdk/src/solaris/native/java/net/PlainSocketImpl.c b/jdk/src/solaris/native/java/net/PlainSocketImpl.c
+index 71cbdf8c..170957e7 100644
+--- a/jdk/src/solaris/native/java/net/PlainSocketImpl.c
++++ b/jdk/src/solaris/native/java/net/PlainSocketImpl.c
+@@ -28,7 +28,7 @@
+ #include <sys/types.h>
+ #include <sys/socket.h>
+ #if defined(__linux__) && !defined(USE_SELECT)
+-#include <sys/poll.h>
++#include <poll.h>
+ #endif
+ #include <netinet/tcp.h>        /* Defines TCP_NODELAY, needed for 2.6 */
+ #include <netinet/in.h>
+diff --git a/jdk/src/solaris/native/java/net/bsd_close.c b/jdk/src/solaris/native/java/net/bsd_close.c
+index af57cef3..64d04088 100644
+--- a/jdk/src/solaris/native/java/net/bsd_close.c
++++ b/jdk/src/solaris/native/java/net/bsd_close.c
+@@ -36,7 +36,7 @@
+ #include <sys/uio.h>
+ #include <unistd.h>
+ #include <errno.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ 
+ /*
+  * Stack allocated by thread when doing blocking operation
+diff --git a/jdk/src/solaris/native/java/net/linux_close.c b/jdk/src/solaris/native/java/net/linux_close.c
+index 98e1ce09..85fba135 100644
+--- a/jdk/src/solaris/native/java/net/linux_close.c
++++ b/jdk/src/solaris/native/java/net/linux_close.c
+@@ -34,7 +34,7 @@
+ #include <sys/uio.h>
+ #include <unistd.h>
+ #include <errno.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ 
+ /*
+  * Stack allocated by thread when doing blocking operation
+diff --git a/jdk/src/solaris/native/java/net/net_util_md.h b/jdk/src/solaris/native/java/net/net_util_md.h
+index a48446de..8915b68a 100644
+--- a/jdk/src/solaris/native/java/net/net_util_md.h
++++ b/jdk/src/solaris/native/java/net/net_util_md.h
+@@ -33,7 +33,7 @@
+ #include <unistd.h>
+ 
+ #ifndef USE_SELECT
+-#include <sys/poll.h>
++#include <poll.h>
+ #endif
+ 
+ 
+diff --git a/jdk/src/solaris/native/sun/nio/ch/DevPollArrayWrapper.c b/jdk/src/solaris/native/sun/nio/ch/DevPollArrayWrapper.c
+index 6860a167..20849dab 100644
+--- a/jdk/src/solaris/native/sun/nio/ch/DevPollArrayWrapper.c
++++ b/jdk/src/solaris/native/sun/nio/ch/DevPollArrayWrapper.c
+@@ -28,7 +28,7 @@
+ #include "jvm.h"
+ #include "jlong.h"
+ #include "sun_nio_ch_DevPollArrayWrapper.h"
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <unistd.h>
+ #include <sys/time.h>
+ 
+diff --git a/jdk/src/solaris/native/sun/nio/ch/Net.c b/jdk/src/solaris/native/sun/nio/ch/Net.c
+index 73560ad6..a3720055 100644
+--- a/jdk/src/solaris/native/sun/nio/ch/Net.c
++++ b/jdk/src/solaris/native/sun/nio/ch/Net.c
+@@ -23,7 +23,7 @@
+  * questions.
+  */
+ 
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <sys/types.h>
+ #include <sys/socket.h>
+ #include <string.h>
+diff --git a/jdk/src/solaris/native/sun/nio/fs/LinuxWatchService.c b/jdk/src/solaris/native/sun/nio/fs/LinuxWatchService.c
+index 375aaa48..7606e9ba 100644
+--- a/jdk/src/solaris/native/sun/nio/fs/LinuxWatchService.c
++++ b/jdk/src/solaris/native/sun/nio/fs/LinuxWatchService.c
+@@ -32,7 +32,7 @@
+ #include <dlfcn.h>
+ #include <sys/types.h>
+ #include <sys/socket.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #include <sys/inotify.h>
+ 
+ #include "sun_nio_fs_LinuxWatchService.h"
+diff --git a/jdk/src/solaris/transport/socket/socket_md.c b/jdk/src/solaris/transport/socket/socket_md.c
+index 33e062e0..819fcabd 100644
+--- a/jdk/src/solaris/transport/socket/socket_md.c
++++ b/jdk/src/solaris/transport/socket/socket_md.c
+@@ -37,7 +37,7 @@
+ #include <thread.h>
+ #else
+ #include <pthread.h>
+-#include <sys/poll.h>
++#include <poll.h>
+ #endif
+ 
+ #include "socket_md.h"
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/0008-jdk-use-correct-include-for-signal.patch b/recipes-core/openjdk/patches-openjdk-8/0008-jdk-use-correct-include-for-signal.patch
new file mode 100644
index 0000000..05f9558
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0008-jdk-use-correct-include-for-signal.patch
@@ -0,0 +1,89 @@
+From a063ee68bc0dd7dbf9737df4ee191e98796f2f6a Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 09:28:06 +0000
+Subject: [PATCH 8/9] jdk: use correct include for signal
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Compiling against musl-libc gives the following warning (which is
+treated as error due to -Werror:
+| In file included from jdk/src/solaris/javavm/export/jvm_md.h:68:0,
+|                  from jdk/src/share/javavm/export/jvm.h:32,
+|                  from jdk/src/share/native/java/net/net_util.h:29,
+|                  from jdk/src/solaris/native/java/net/InetAddressImplFactory.c:28:
+| usr/include/sys/signal.h:1:2: warning: #warning redirecting incorrect #include <sys/signal.h> to <signal.h> [-Wcpp]
+|  #warning redirecting incorrect #include <sys/signal.h> to <signal.h>
+|   ^~~~~~~
+etc.
+
+As per the message, signal.h needs to be included instead - do so using
+the following command:
+    for i in $(git grep sys/signal\.h jdk | cut -f 1 -d : | sort -u) ; do
+        sed -e 's,sys/signal\.h,signal.h,g' -i ${i}
+    done
+
+Upstream-Status: Pending
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/aix/native/sun/nio/ch/AixNativeThread.c  | 2 +-
+ jdk/src/macosx/javavm/export/jvm_md.h            | 2 +-
+ jdk/src/solaris/javavm/export/jvm_md.h           | 2 +-
+ jdk/src/solaris/native/sun/nio/ch/NativeThread.c | 2 +-
+ 4 files changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/jdk/src/aix/native/sun/nio/ch/AixNativeThread.c b/jdk/src/aix/native/sun/nio/ch/AixNativeThread.c
+index c0d58579..c4abb7ae 100644
+--- a/jdk/src/aix/native/sun/nio/ch/AixNativeThread.c
++++ b/jdk/src/aix/native/sun/nio/ch/AixNativeThread.c
+@@ -32,7 +32,7 @@
+ #include "sun_nio_ch_NativeThread.h"
+ 
+ #include <pthread.h>
+-#include <sys/signal.h>
++#include <signal.h>
+ 
+ /* Also defined in src/aix/native/java/net/aix_close.c */
+ #define INTERRUPT_SIGNAL (SIGRTMAX - 1)
+diff --git a/jdk/src/macosx/javavm/export/jvm_md.h b/jdk/src/macosx/javavm/export/jvm_md.h
+index 012bb1ba..0b575768 100644
+--- a/jdk/src/macosx/javavm/export/jvm_md.h
++++ b/jdk/src/macosx/javavm/export/jvm_md.h
+@@ -60,7 +60,7 @@
+ #include <sys/stat.h>
+ #include <fcntl.h>
+ #include <errno.h>
+-#include <sys/signal.h>
++#include <signal.h>
+ 
+ /* O Flags */
+ 
+diff --git a/jdk/src/solaris/javavm/export/jvm_md.h b/jdk/src/solaris/javavm/export/jvm_md.h
+index 5c681914..62415ee2 100644
+--- a/jdk/src/solaris/javavm/export/jvm_md.h
++++ b/jdk/src/solaris/javavm/export/jvm_md.h
+@@ -65,7 +65,7 @@
+ #include <sys/stat.h>
+ #include <fcntl.h>
+ #include <errno.h>
+-#include <sys/signal.h>
++#include <signal.h>
+ 
+ /* O Flags */
+ 
+diff --git a/jdk/src/solaris/native/sun/nio/ch/NativeThread.c b/jdk/src/solaris/native/sun/nio/ch/NativeThread.c
+index 5e2a78b7..204f0441 100644
+--- a/jdk/src/solaris/native/sun/nio/ch/NativeThread.c
++++ b/jdk/src/solaris/native/sun/nio/ch/NativeThread.c
+@@ -34,7 +34,7 @@
+ 
+ #ifdef __linux__
+   #include <pthread.h>
+-  #include <sys/signal.h>
++  #include <signal.h>
+   /* Also defined in net/linux_close.c */
+   #define INTERRUPT_SIGNAL (__SIGRTMAX - 2)
+ #elif __solaris__
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/0009-jdk-disable-backtrace-musl-build-fix.patch b/recipes-core/openjdk/patches-openjdk-8/0009-jdk-disable-backtrace-musl-build-fix.patch
new file mode 100644
index 0000000..43130b5
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/0009-jdk-disable-backtrace-musl-build-fix.patch
@@ -0,0 +1,45 @@
+From 8ef989f82b29655e8d4532f14d5aa12a2999d850 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Fri, 2 Mar 2018 13:58:07 +0000
+Subject: [PATCH 10/10] jdk: disable backtrace() (musl build fix)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+musl doesn't implement / provide backtrace() and friends or
+the corresponding header files. This is all glibc specific.
+
+Use appropriate #ifdef to disable their use on musl and thus
+to fix the build on musl.
+
+Upstream-Status: Pending
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/solaris/native/sun/xawt/XToolkit.c | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/jdk/src/solaris/native/sun/xawt/XToolkit.c b/jdk/src/solaris/native/sun/xawt/XToolkit.c
+index 71d41f37..d3dc47cb 100644
+--- a/jdk/src/solaris/native/sun/xawt/XToolkit.c
++++ b/jdk/src/solaris/native/sun/xawt/XToolkit.c
+@@ -27,7 +27,7 @@
+ #include <X11/Xutil.h>
+ #include <X11/Xos.h>
+ #include <X11/Xatom.h>
+-#ifdef __linux__
++#if defined(__linux__) && defined(__GLIBC__)
+ #include <execinfo.h>
+ #endif
+ 
+@@ -799,7 +799,7 @@ JNIEXPORT jstring JNICALL Java_sun_awt_X11_XToolkit_getEnv
+     return ret;
+ }
+ 
+-#ifdef __linux__
++#if defined(__linux__) && defined(__GLIBC__)
+ void print_stack(void)
+ {
+   void *array[10];
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0001-hotspot-stop-using-obsolete-isnanf.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0001-hotspot-stop-using-obsolete-isnanf.patch
new file mode 100644
index 0000000..ebe6547
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0001-hotspot-stop-using-obsolete-isnanf.patch
@@ -0,0 +1,42 @@
+From 1624e2dd3739fe208efa13b31abf4bc53ae2e5c1 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 11:24:44 +0000
+Subject: [PATCH 1/9] hotspot: stop using obsolete isnanf()
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Compiling against musl-libc gives the following error:
+| hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp: In function 'int g_isnan(float)':
+| hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp:238:39: error: 'isnanf' was not declared in this scope
+|  inline int g_isnan(float  f) { return isnanf(f); }
+|                                        ^~~~~~
+
+isnanf() is obsolete, and musl doesn't implement it. isnan()
+is the right thing to use for all types (float and double),
+replacing isnanf(), even on glibc.
+
+Do so.
+
+Upstream-Status: Pending
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp b/hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp
+index efa0b4e1..6df2302e 100644
+--- a/hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp
++++ b/hotspot/src/share/vm/utilities/globalDefinitions_gcc.hpp
+@@ -235,7 +235,7 @@ inline int g_isnan(double f) { return isnand(f); }
+ #elif defined(__APPLE__)
+ inline int g_isnan(double f) { return isnan(f); }
+ #elif defined(LINUX) || defined(_ALLBSD_SOURCE)
+-inline int g_isnan(float  f) { return isnanf(f); }
++inline int g_isnan(float  f) { return isnan(f); }
+ inline int g_isnan(double f) { return isnan(f); }
+ #else
+ #error "missing platform-specific definition here"
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch
new file mode 100644
index 0000000..06cdcaf
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0002-jdk-give-a-much-bigger-buffer-to-getmntent_r.patch
@@ -0,0 +1,103 @@
+From 2ba0f3fae90f2d2c310663e4b39e90f969116241 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 15:59:09 +0000
+Subject: [PATCH 2/9] jdk: give a much bigger buffer to getmntent_r()
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+https://bugs.alpinelinux.org/issues/7093
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ .../native/sun/nio/fs/LinuxNativeDispatcher.c      | 29 +++++++++++++++-------
+ 1 file changed, 20 insertions(+), 9 deletions(-)
+
+diff --git a/jdk/src/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c b/jdk/src/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c
+index c8500db5..d0b85d67 100644
+--- a/jdk/src/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c
++++ b/jdk/src/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c
+@@ -33,6 +33,7 @@
+ #include <dlfcn.h>
+ #include <errno.h>
+ #include <mntent.h>
++#include <limits.h>
+ 
+ #include "sun_nio_fs_LinuxNativeDispatcher.h"
+ 
+@@ -173,8 +174,8 @@ Java_sun_nio_fs_LinuxNativeDispatcher_getmntent(JNIEnv* env, jclass this,
+     jlong value, jobject entry)
+ {
+     struct mntent ent;
+-    char buf[1024];
+-    int buflen = sizeof(buf);
++    char *buf = NULL;
++    const size_t buflen = PATH_MAX * 4;
+     struct mntent* m;
+     FILE* fp = jlong_to_ptr(value);
+     jsize len;
+@@ -183,10 +184,17 @@ Java_sun_nio_fs_LinuxNativeDispatcher_getmntent(JNIEnv* env, jclass this,
+     char* dir;
+     char* fstype;
+     char* options;
++    jint res = -1;
+ 
+-    m = getmntent_r(fp, &ent, (char*)&buf, buflen);
+-    if (m == NULL)
++    buf = malloc(buflen);
++    if (buf == NULL) {
++        JNU_ThrowOutOfMemoryError(env, "native heap");
+         return -1;
++    }
++    m = getmntent_r(fp, &ent, buf, buflen);
++    if (m == NULL)
++        goto out;
++
+     name = m->mnt_fsname;
+     dir = m->mnt_dir;
+     fstype = m->mnt_type;
+@@ -195,32 +203,35 @@ Java_sun_nio_fs_LinuxNativeDispatcher_getmntent(JNIEnv* env, jclass this,
+     len = strlen(name);
+     bytes = (*env)->NewByteArray(env, len);
+     if (bytes == NULL)
+-        return -1;
++        goto out;
+     (*env)->SetByteArrayRegion(env, bytes, 0, len, (jbyte*)name);
+     (*env)->SetObjectField(env, entry, entry_name, bytes);
+ 
+     len = strlen(dir);
+     bytes = (*env)->NewByteArray(env, len);
+     if (bytes == NULL)
+-        return -1;
++        goto out;
+     (*env)->SetByteArrayRegion(env, bytes, 0, len, (jbyte*)dir);
+     (*env)->SetObjectField(env, entry, entry_dir, bytes);
+ 
+     len = strlen(fstype);
+     bytes = (*env)->NewByteArray(env, len);
+     if (bytes == NULL)
+-        return -1;
++        goto out;
+     (*env)->SetByteArrayRegion(env, bytes, 0, len, (jbyte*)fstype);
+     (*env)->SetObjectField(env, entry, entry_fstype, bytes);
+ 
+     len = strlen(options);
+     bytes = (*env)->NewByteArray(env, len);
+     if (bytes == NULL)
+-        return -1;
++        goto out;
+     (*env)->SetByteArrayRegion(env, bytes, 0, len, (jbyte*)options);
+     (*env)->SetObjectField(env, entry, entry_options, bytes);
+ 
+-    return 0;
++    res = 0;
++out:
++    free(buf);
++    return res;
+ }
+ 
+ JNIEXPORT void JNICALL
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch
new file mode 100644
index 0000000..6990d55
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0003-jdk-fix-libjvm-load-on-musl-set-LD_LIBRARY_PATH.patch
@@ -0,0 +1,37 @@
+From 4429d73853b3938a53a6058cc0dcaac08d191995 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 16:01:54 +0000
+Subject: [PATCH 3/9] jdk: fix libjvm load on musl (set LD_LIBRARY_PATH)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+musl needs LD_LIBRARY_PATH set because when .so is opened
+with dlopen(/abs/path) it does not qualify for providing
+symbols for NEEDED dependency.
+
+Patch taken from Alpine Linux:
+    https://git.alpinelinux.org/cgit/aports/tree/community/openjdk8/icedtea-jdk-fix-libjvm-load.patch?id=4d34f29dddd3934358df7a9607706d09ae0433c3
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/solaris/bin/java_md_solinux.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/jdk/src/solaris/bin/java_md_solinux.c b/jdk/src/solaris/bin/java_md_solinux.c
+index 6d977109..e9a0a1eb 100644
+--- a/jdk/src/solaris/bin/java_md_solinux.c
++++ b/jdk/src/solaris/bin/java_md_solinux.c
+@@ -291,6 +291,8 @@ RequiresSetenv(int wanted, const char *jvmpath) {
+     char *dmllp = NULL;
+     char *p; /* a utility pointer */
+ 
++    return JNI_TRUE;
++
+ #ifdef AIX
+     /* We always have to set the LIBPATH on AIX because ld doesn't support $ORIGIN. */
+     return JNI_TRUE;
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch
new file mode 100644
index 0000000..0c20627
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0004-jdk-remove-sysctl.h-include-musl-build-fix.patch
@@ -0,0 +1,90 @@
+From 86945e6df4dc15d5c2402a656d1d9d1b25945fb2 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 09:28:06 +0000
+Subject: [PATCH 4/9] jdk: remove sysctl.h include (musl build fix)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Compiling against musl-libc gives the following warning (which is
+treated as error due to -Werror:
+| jdk/src/solaris/native/java/net/PlainDatagramSocketImpl.c:44:10: fatal error: sys/sysctl.h: No such file or directory
+|  #include <sys/sysctl.h>
+|           ^~~~~~~~~~~~~~
+etc.
+
+Remove it, at things seem to work without as well.
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/solaris/native/java/net/PlainDatagramSocketImpl.c   | 1 -
+ jdk/src/solaris/native/java/net/PlainSocketImpl.c           | 1 -
+ jdk/src/solaris/native/java/net/net_util_md.c               | 1 -
+ jdk/src/solaris/native/sun/management/OperatingSystemImpl.c | 1 -
+ jdk/src/solaris/native/sun/net/portconfig.c                 | 1 -
+ 5 files changed, 5 deletions(-)
+
+diff --git a/jdk/src/solaris/native/java/net/PlainDatagramSocketImpl.c b/jdk/src/solaris/native/java/net/PlainDatagramSocketImpl.c
+index c48d1153..e3519774 100644
+--- a/jdk/src/solaris/native/java/net/PlainDatagramSocketImpl.c
++++ b/jdk/src/solaris/native/java/net/PlainDatagramSocketImpl.c
+@@ -41,7 +41,6 @@
+ #endif
+ #ifdef __linux__
+ #include <unistd.h>
+-#include <sys/sysctl.h>
+ #include <sys/utsname.h>
+ #include <netinet/ip.h>
+ 
+diff --git a/jdk/src/solaris/native/java/net/PlainSocketImpl.c b/jdk/src/solaris/native/java/net/PlainSocketImpl.c
+index 170957e7..9aafbc09 100644
+--- a/jdk/src/solaris/native/java/net/PlainSocketImpl.c
++++ b/jdk/src/solaris/native/java/net/PlainSocketImpl.c
+@@ -43,7 +43,6 @@
+ #endif
+ #ifdef __linux__
+ #include <unistd.h>
+-#include <sys/sysctl.h>
+ #endif
+ 
+ #include "jvm.h"
+diff --git a/jdk/src/solaris/native/java/net/net_util_md.c b/jdk/src/solaris/native/java/net/net_util_md.c
+index eae347cf..a0ba6be0 100644
+--- a/jdk/src/solaris/native/java/net/net_util_md.c
++++ b/jdk/src/solaris/native/java/net/net_util_md.c
+@@ -40,7 +40,6 @@
+ #else
+ #include <limits.h>
+ #include <sys/param.h>
+-#include <sys/sysctl.h>
+ #ifndef MAXINT
+ #define MAXINT INT_MAX
+ #endif
+diff --git a/jdk/src/solaris/native/sun/management/OperatingSystemImpl.c b/jdk/src/solaris/native/sun/management/OperatingSystemImpl.c
+index aa21f019..0b895569 100644
+--- a/jdk/src/solaris/native/sun/management/OperatingSystemImpl.c
++++ b/jdk/src/solaris/native/sun/management/OperatingSystemImpl.c
+@@ -33,7 +33,6 @@
+ #include <sys/types.h>
+ #include <sys/stat.h>
+ #if defined(_ALLBSD_SOURCE)
+-#include <sys/sysctl.h>
+ #ifdef __APPLE__
+ #include <sys/param.h>
+ #include <sys/mount.h>
+diff --git a/jdk/src/solaris/native/sun/net/portconfig.c b/jdk/src/solaris/native/sun/net/portconfig.c
+index 56730f0f..5209c828 100644
+--- a/jdk/src/solaris/native/sun/net/portconfig.c
++++ b/jdk/src/solaris/native/sun/net/portconfig.c
+@@ -29,7 +29,6 @@
+ #include <errno.h>
+ 
+ #if defined(_ALLBSD_SOURCE)
+-#include <sys/sysctl.h>
+ #endif
+ 
+ #include "jni.h"
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0005-hotspot-disable-agent-build.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0005-hotspot-disable-agent-build.patch
new file mode 100644
index 0000000..24342b5
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0005-hotspot-disable-agent-build.patch
@@ -0,0 +1,88 @@
+From 19b1d6b4dc64a1c44a8f90776a489eee5c76463d Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Tue, 27 Feb 2018 15:12:08 +0000
+Subject: [PATCH 5/9] hotspot: disable agent build
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+the agent needs thread_db, which doesn't exist in musl
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ common/autoconf/jdk-options.m4           | 2 +-
+ hotspot/make/linux/makefiles/defs.make   | 4 ++++
+ hotspot/make/linux/makefiles/sa.make     | 2 +-
+ hotspot/make/linux/makefiles/saproc.make | 2 ++
+ 4 files changed, 8 insertions(+), 2 deletions(-)
+
+diff --git a/common/autoconf/jdk-options.m4 b/common/autoconf/jdk-options.m4
+index a8f71705..036963ac 100644
+--- a/common/autoconf/jdk-options.m4
++++ b/common/autoconf/jdk-options.m4
+@@ -151,7 +151,7 @@ AC_DEFUN_ONCE([JDKOPT_SETUP_JVM_VARIANTS],
+   AC_SUBST(JVM_VARIANT_ZEROSHARK)
+   AC_SUBST(JVM_VARIANT_CORE)
+ 
+-  INCLUDE_SA=true
++  INCLUDE_SA=false
+   if test "x$JVM_VARIANT_ZERO" = xtrue ; then
+     INCLUDE_SA=false
+   fi
+diff --git a/hotspot/make/linux/makefiles/defs.make b/hotspot/make/linux/makefiles/defs.make
+index 3af5878a..d10bab95 100644
+--- a/hotspot/make/linux/makefiles/defs.make
++++ b/hotspot/make/linux/makefiles/defs.make
+@@ -286,6 +286,7 @@ ifeq ($(JVM_VARIANT_MINIMAL1),true)
+   endif
+ endif
+ 
++ifeq (0,1)
+ # Serviceability Binaries
+ # No SA Support for PPC, IA64, ARM or zero
+ ADD_SA_BINARIES/x86   = $(EXPORT_JRE_LIB_ARCH_DIR)/libsaproc.$(LIBRARY_SUFFIX) \
+@@ -305,6 +306,9 @@ ADD_SA_BINARIES/ppc   =
+ ADD_SA_BINARIES/ia64  =
+ ADD_SA_BINARIES/arm   =
+ ADD_SA_BINARIES/zero  =
++else
++ADD_SA_BINARIES/$(HS_ARCH) =
++endif
+ 
+ -include $(HS_ALT_MAKE)/linux/makefiles/defs.make
+ 
+diff --git a/hotspot/make/linux/makefiles/sa.make b/hotspot/make/linux/makefiles/sa.make
+index 66a7b945..61cc7244 100644
+--- a/hotspot/make/linux/makefiles/sa.make
++++ b/hotspot/make/linux/makefiles/sa.make
+@@ -62,7 +62,7 @@ SA_PROPERTIES = $(SA_CLASSDIR)/sa.properties
+ 
+ all: 
+ 	if [ -d $(AGENT_DIR) -a "$(SRCARCH)" != "ia64" \
+-             -a "$(SRCARCH)" != "zero" ] ; then \
++             -a "$(SRCARCH)" != "zero" ] && [ 0 -eq 1 ] ; then \
+ 	   $(MAKE) -f sa.make $(GENERATED)/sa-jdi.jar; \
+ 	fi
+ 
+diff --git a/hotspot/make/linux/makefiles/saproc.make b/hotspot/make/linux/makefiles/saproc.make
+index 6579c8e1..8f29004c 100644
+--- a/hotspot/make/linux/makefiles/saproc.make
++++ b/hotspot/make/linux/makefiles/saproc.make
+@@ -62,11 +62,13 @@ endif
+ # if $(AGENT_DIR) does not exist, we don't build SA
+ # also, we don't build SA on Itanium or zero.
+ 
++ifeq (0,1)
+ ifneq ($(wildcard $(AGENT_DIR)),)
+ ifneq ($(filter-out ia64 zero,$(SRCARCH)),)
+   BUILDLIBSAPROC = $(LIBSAPROC)
+ endif
+ endif
++endif
+ 
+ ifneq ($(ALT_SASRCDIR),)
+ ALT_SAINCDIR=-I$(ALT_SASRCDIR) -DALT_SASRCDIR
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch
new file mode 100644
index 0000000..4abd558
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0006-hotspot-os_linux-remove-glibc-dependencies.patch
@@ -0,0 +1,75 @@
+From a02a9fbc3f1fed181504bdb5b0a16863247f92fc Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Fri, 2 Mar 2018 10:11:51 +0000
+Subject: [PATCH 6/9] hotspot: os_linux: remove glibc dependencies
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+* gnu/libc-version.h doesn't exist in musl
+    | hotspot/src/os/linux/vm/os_linux.cpp:97:11: fatal error: gnu/libc-version.h: No such file or directory
+    |  # include <gnu/libc-version.h>
+    |            ^~~~~~~~~~~~~~~~~~~~
+
+* dlvsym() is a GNU extension and doesn't exist in musl
+    | hotspot/src/os/linux/vm/os_linux.cpp:2846:13: error: 'dlvsym' was not declared in this scope
+    |    void *f = dlvsym(handle, name, "libnuma_1.1");
+    |              ^~~~~~
+    | hotspot/src/os/linux/vm/os_linux.cpp:2846:13: note: suggested alternative: 'dlsym'
+    |    void *f = dlvsym(handle, name, "libnuma_1.1");
+    |              ^~~~~~
+    |              dlsym
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/os/linux/vm/os_linux.cpp | 12 +++++++++++-
+ 1 file changed, 11 insertions(+), 1 deletion(-)
+
+diff --git a/hotspot/src/os/linux/vm/os_linux.cpp b/hotspot/src/os/linux/vm/os_linux.cpp
+index 044a70a6..3137796a 100644
+--- a/hotspot/src/os/linux/vm/os_linux.cpp
++++ b/hotspot/src/os/linux/vm/os_linux.cpp
+@@ -94,7 +94,6 @@
+ # include <string.h>
+ # include <syscall.h>
+ # include <sys/sysinfo.h>
+-# include <gnu/libc-version.h>
+ # include <sys/ipc.h>
+ # include <sys/shm.h>
+ # include <link.h>
+@@ -530,6 +529,13 @@ void os::Linux::hotspot_sigmask(Thread* thread) {
+ // detecting pthread library
+ 
+ void os::Linux::libpthread_init() {
++#if 1
++  // Hard code supported musl compatible settings (taken from alpine linux)
++  os::Linux::set_glibc_version("glibc 2.9");
++  os::Linux::set_libpthread_version("NPTL");
++  os::Linux::set_is_NPTL();
++  os::Linux::set_is_floating_stack();
++#else
+   // Save glibc and pthread version strings. Note that _CS_GNU_LIBC_VERSION
+   // and _CS_GNU_LIBPTHREAD_VERSION are supported in glibc >= 2.3.2. Use a
+   // generic name for earlier versions.
+@@ -588,6 +594,7 @@ void os::Linux::libpthread_init() {
+   if (os::Linux::is_NPTL() || os::Linux::supports_variable_stack_size()) {
+      os::Linux::set_is_floating_stack();
+   }
++#endif
+ }
+ 
+ /////////////////////////////////////////////////////////////////////////////
+@@ -2814,6 +2821,9 @@ int os::Linux::sched_getcpu_syscall(void) {
+   return (retval == -1) ? retval : cpu;
+ }
+ 
++// musl doesn't have dlvsym()
++#define dlvsym(h,s,v)  dlsym(h,s)
++
+ // Something to do with the numa-aware allocator needs these symbols
+ extern "C" JNIEXPORT void numa_warn(int number, char *where, ...) { }
+ extern "C" JNIEXPORT void numa_error(char *where) { }
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch
new file mode 100644
index 0000000..50f62fd
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0007-hotspot-os_linux_x86-remove-glibc-dependencies-fpu_c.patch
@@ -0,0 +1,46 @@
+From dc0217d20e3c96203c81acda1c02652755bfcefb Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Fri, 2 Mar 2018 10:24:11 +0000
+Subject: [PATCH 7/9] hotspot: os_linux_x86: remove glibc dependencies
+ (fpu_control.h)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+musl doesn't provide fpu_control.h, open-code the relevant
+bits instead.
+
+Patch adopted from Alpine linux:
+    https://git.alpinelinux.org/cgit/aports/tree/community/openjdk8/icedtea-hotspot-musl.patch?id=4d34f29dddd3934358df7a9607706d09ae0433c3
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ hotspot/src/os_cpu/linux_x86/vm/os_linux_x86.cpp | 4 +++-
+ 1 file changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/hotspot/src/os_cpu/linux_x86/vm/os_linux_x86.cpp b/hotspot/src/os_cpu/linux_x86/vm/os_linux_x86.cpp
+index fb96738a..982ce84d 100644
+--- a/hotspot/src/os_cpu/linux_x86/vm/os_linux_x86.cpp
++++ b/hotspot/src/os_cpu/linux_x86/vm/os_linux_x86.cpp
+@@ -72,7 +72,6 @@
+ # include <pwd.h>
+ # include <poll.h>
+ # include <ucontext.h>
+-# include <fpu_control.h>
+ 
+ #ifdef AMD64
+ #define REG_SP REG_RSP
+@@ -543,6 +542,9 @@ JVM_handle_linux_signal(int sig,
+   ShouldNotReachHere();
+ }
+ 
++#define _FPU_GETCW(cw) __asm__ __volatile__ ("fnstcw %0" : "=m" (*&cw))
++#define _FPU_SETCW(cw) __asm__ __volatile__ ("fldcw %0" : : "m" (*&cw))
++
+ void os::Linux::init_thread_fpu_state(void) {
+ #ifndef AMD64
+   // set fpu to 53 bit precision
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch
new file mode 100644
index 0000000..1e4e500
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0008-jdk-musl-build-fix-use-SIGRTMAX-rather-than-__SIGRTM.patch
@@ -0,0 +1,69 @@
+From ec37e9e5663611e49c7c976d34450ea6b90d0f24 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Fri, 2 Mar 2018 13:37:20 +0000
+Subject: [PATCH 8/9] jdk: musl build fix (use SIGRTMAX rather than __SIGRTMAX)
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+__SIGRTMAX is a private glibc symbol, which isn't provided
+by musl, thus failing compilation.
+
+From https://sourceware.org/ml/rda/2005-q4/msg00011.html
+    On a GNU(ish) system, [SIGRTMIN / SIGRTMAX] these macros are defined
+    to call functions which compute the actual minimum and maximum
+    realtime signal numbers.  In particular, this computation will exclude
+    any signals used by the C library for its own purposes.  These signals
+    could include signals related to thread debugging or, more
+    importantly, for thread cancellation.
+[...]
+    [The __SIGRTMIN and __SIGRTMAX] constants represent a hard minumum
+    and maximum.
+
+Patch taken from Alpine Linux:
+    https://git.alpinelinux.org/cgit/aports/tree/community/openjdk8/icedtea-jdk-musl.patch?id=4d34f29dddd3934358df7a9607706d09ae0433c3
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/solaris/native/java/net/linux_close.c    | 3 ++-
+ jdk/src/solaris/native/sun/nio/ch/NativeThread.c | 2 +-
+ 2 files changed, 3 insertions(+), 2 deletions(-)
+
+diff --git a/jdk/src/solaris/native/java/net/linux_close.c b/jdk/src/solaris/native/java/net/linux_close.c
+index 85fba135..e635dafd 100644
+--- a/jdk/src/solaris/native/java/net/linux_close.c
++++ b/jdk/src/solaris/native/java/net/linux_close.c
+@@ -56,7 +56,7 @@ typedef struct {
+ /*
+  * Signal to unblock thread
+  */
+-static int sigWakeup = (__SIGRTMAX - 2);
++static int sigWakeup;
+ 
+ /*
+  * The fd table and the number of file descriptors
+@@ -95,6 +95,7 @@ static void __attribute((constructor)) init() {
+     /*
+      * Setup the signal handler
+      */
++    sigWakeup = SIGRTMAX - 2;
+     sa.sa_handler = sig_wakeup;
+     sa.sa_flags   = 0;
+     sigemptyset(&sa.sa_mask);
+diff --git a/jdk/src/solaris/native/sun/nio/ch/NativeThread.c b/jdk/src/solaris/native/sun/nio/ch/NativeThread.c
+index 204f0441..f5483bbd 100644
+--- a/jdk/src/solaris/native/sun/nio/ch/NativeThread.c
++++ b/jdk/src/solaris/native/sun/nio/ch/NativeThread.c
+@@ -36,7 +36,7 @@
+   #include <pthread.h>
+   #include <signal.h>
+   /* Also defined in net/linux_close.c */
+-  #define INTERRUPT_SIGNAL (__SIGRTMAX - 2)
++  #define INTERRUPT_SIGNAL (SIGRTMAX - 2)
+ #elif __solaris__
+   #include <thread.h>
+   #include <signal.h>
+-- 
+2.16.2
+
diff --git a/recipes-core/openjdk/patches-openjdk-8/musl-0009-jdk-musl-has-gethostby_r.patch b/recipes-core/openjdk/patches-openjdk-8/musl-0009-jdk-musl-has-gethostby_r.patch
new file mode 100644
index 0000000..3f3387b
--- /dev/null
+++ b/recipes-core/openjdk/patches-openjdk-8/musl-0009-jdk-musl-has-gethostby_r.patch
@@ -0,0 +1,35 @@
+From 276fb5b2d57cf0257dc82e84d80213fe3eec6e34 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@jci.com>
+Date: Fri, 2 Mar 2018 13:57:22 +0000
+Subject: [PATCH 9/9] jdk: musl has gethostby_r()
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Fix the #ifdef to also allow use of it when using musl.
+
+Patch taken from Alpine Linux:
+    https://git.alpinelinux.org/cgit/aports/tree/community/openjdk8/icedtea-jdk-musl.patch?id=4d34f29dddd3934358df7a9607706d09ae0433c3
+
+Upstream-Status: Inappropriate [musl specific]
+Signed-off-by: André Draszik <andre.draszik@jci.com>
+---
+ jdk/src/solaris/native/java/net/Inet4AddressImpl.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/jdk/src/solaris/native/java/net/Inet4AddressImpl.c b/jdk/src/solaris/native/java/net/Inet4AddressImpl.c
+index ec4f97df..5c1af081 100644
+--- a/jdk/src/solaris/native/java/net/Inet4AddressImpl.c
++++ b/jdk/src/solaris/native/java/net/Inet4AddressImpl.c
+@@ -47,7 +47,7 @@
+ 
+ #include "java_net_Inet4AddressImpl.h"
+ 
+-#if defined(__GLIBC__) || (defined(__FreeBSD__) && (__FreeBSD_version >= 601104))
++#if defined(__linux__) || (defined(__FreeBSD__) && (__FreeBSD_version >= 601104))
+ #define HAS_GLIBC_GETHOSTBY_R   1
+ #endif
+ 
+-- 
+2.16.2
+
-- 
2.16.2


