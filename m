Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34CE7E00B87; Mon,  3 Apr 2017 13:07:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ED2EE00B62
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 13:07:38 -0700 (PDT)
Received: by mail-wr0-f170.google.com with SMTP id w43so184578033wrb.0
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 13:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ymkkaBklB2AgqgWp63VshODSijTN6pG1mC9HK21Dx80=;
	b=KF2jLba0upWgv4oTU3cg0mfI6bW/q5F4sjXDZMC01uT0QTUtO9K9rSJ3lwgol12Bys
	qYHdA8QAN6i/tQZkORLF/qxsgAdwcVL/pEJj8U77n1L0N6j9ulOALneryLuy0VdhZGzJ
	nuznOrsT67FrUn1CdbydyMDaFOi5lVGWLr1VX7Wur70Anzvnp1j4PvCSQ9Ssn96FqKyD
	m7SLp6eNUUe2aSQAZX5fv7RdeLdnmMRxioB6tBBZchjRIeeTzjQ9FcSKfegIJQPtE6dz
	FbrNDW2ECqBfkrMyV1wQHT75BWCUpAjMtbWokDCLFu7lfCMGc/1rv1dHRyV+w+EqseSb
	sa3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ymkkaBklB2AgqgWp63VshODSijTN6pG1mC9HK21Dx80=;
	b=hYu8wUDMdoZ2PRuKz6xo6sQzxBI2bGcOoAYNtuERa0ah+W+b6wg5H0b1IU8+ClfVYS
	IMPdnkBxaNy2pPTOWp0FPYEUoOjsxhBTPTvGmAo++D6XVIUY9fo7m9nrjyii4/QuvjXu
	n8pi7GmZo8pCKJT2kVmq4RFy7EiCXdJ3ze6HNRRNfSk4ykBqnga2WC/hWR8cRFMiTENs
	hbaTq/RfDjFLi6VbjqOqGvmv2cT81vYpzX1HQYsKpBSCuny2AIfhIr/05knY+wRSFsi+
	LtduUZbHqRucMdqmkigYVSebX9HToYduGSZxPlTm+vVSjBSxrcQkwNEDrxTQBhvAOp7x
	cMmw==
X-Gm-Message-State: AFeK/H2bBLYbt4wLnjWNjbixmCdnfds4IiiQedCcrep6uOHaWTi6Xf/j
	8FVa257KFVMdBHKh
X-Received: by 10.28.74.18 with SMTP id x18mr5689583wma.64.1491250057414;
	Mon, 03 Apr 2017 13:07:37 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host168-65-static.12-87-b.business.telecomitalia.it. [87.12.65.168])
	by smtp.gmail.com with ESMTPSA id
	t68sm19499691wrc.55.2017.04.03.13.07.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 03 Apr 2017 13:07:36 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Apr 2017 22:07:27 +0200
Message-Id: <1491250047-3989-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH] wiringpi: uprev to 2.44
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
X-List-Received-Date: Mon, 03 Apr 2017 20:07:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This upgrade is required to solve the following runtime hardware detection
issue when calling wiringPiSetup() on the Pi3:

  Unable to determine hardware version. I see: Hardware   : BCM2835
  ,
  - expecting BCM2708 or BCM2709.

This was triggered by the recent kernel upgrade to 4.9 that introduced
"BCM2835" as the hardware signature in /proc/cpuinfo.

Patches reworked as follow:
* 0001-Add-initial-cross-compile-support.patch: rebase to current upstream
* 0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch: drop since is now
upstream

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 .../0001-Add-initial-cross-compile-support.patch   | 96 +++++++++++-----------
 ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch | 58 -------------
 recipes-devtools/wiringPi/wiringpi_git.bb          |  5 +-
 3 files changed, 51 insertions(+), 108 deletions(-)
 delete mode 100644 recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch

diff --git a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
index 603422c..a081b8d 100644
--- a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
+++ b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
@@ -1,21 +1,26 @@
-From 6d85e6cc3ab97c3f060e5e0a8e3f1945a14c86ba Mon Sep 17 00:00:00 2001
-From: Gianfranco Costamagna <gianfranco.costamagna@abinsula.com>
-Date: Mon, 12 Oct 2015 12:15:51 +0200
-Subject: [PATCH] Add initial cross compile support (rebase from Petter Mabäcker <petter@technux.se> version)
+From 4ed727aa9e528f130fdc8798df771037a1f22fc9 Mon Sep 17 00:00:00 2001
+From: Andrea Galbusera <gizero@gmail.com>
+Date: Mon, 3 Apr 2017 14:48:14 +0200
+Subject: [PATCH] =?UTF-8?q?Add=20initial=20cross=20compile=20support=20(re?=
+ =?UTF-8?q?base=20from=20Petter=20Mab=C3=A4cker=20<petter@technux.se>=20ve?=
+ =?UTF-8?q?rsion)?=
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
 
 ---
- devLib/Makefile             |   54 ++++++++++++++++++++++++-------------------
- examples/Gertboard/Makefile |   22 +++++++++++-------
- examples/Makefile           |   22 +++++++++++-------
- examples/PiFace/Makefile    |   22 +++++++++++-------
- examples/PiGlow/Makefile    |    4 ++--
- examples/q2w/Makefile       |    4 ++--
- gpio/Makefile               |   29 ++++++++++++-----------
- wiringPi/Makefile           |   50 +++++++++++++++++++++------------------
- 8 files changed, 119 insertions(+), 88 deletions(-)
+ devLib/Makefile             | 54 +++++++++++++++++++++++++--------------------
+ examples/Gertboard/Makefile | 20 +++++++++++------
+ examples/Makefile           | 20 +++++++++++------
+ examples/PiFace/Makefile    | 20 +++++++++++------
+ examples/PiGlow/Makefile    |  4 ++--
+ examples/q2w/Makefile       |  4 ++--
+ gpio/Makefile               | 29 ++++++++++++------------
+ wiringPi/Makefile           | 50 +++++++++++++++++++++++------------------
+ 8 files changed, 116 insertions(+), 85 deletions(-)
 
 diff --git a/devLib/Makefile b/devLib/Makefile
-index 0fb0033..cbea759 100644
+index cf665d6..040c03a 100644
 --- a/devLib/Makefile
 +++ b/devLib/Makefile
 @@ -31,15 +31,19 @@ ifneq ($V,1)
@@ -46,7 +51,7 @@ index 0fb0033..cbea759 100644
  
  LIBS    =
  
-@@ -66,16 +70,16 @@ $(STATIC):	$(OBJ)
+@@ -68,16 +72,16 @@ $(STATIC):	$(OBJ)
  
  $(DYNAMIC):	$(OBJ)
  	$Q echo "[Link (Dynamic)]"
@@ -66,7 +71,7 @@ index 0fb0033..cbea759 100644
  
  .PHONY:	tags
  tags:	$(SRC)
-@@ -86,22 +90,22 @@ tags:	$(SRC)
+@@ -88,22 +92,22 @@ tags:	$(SRC)
  .PHONY:	install
  install:	$(DYNAMIC)
  	$Q echo "[Install Headers]"
@@ -99,7 +104,7 @@ index 0fb0033..cbea759 100644
  
  .PHONY:	install-deb
  install-deb:	$(DYNAMIC)
-@@ -116,9 +120,11 @@ install-deb:	$(DYNAMIC)
+@@ -118,9 +122,11 @@ install-deb:	$(DYNAMIC)
  .PHONY:	uninstall
  uninstall:
  	$Q echo "[UnInstall]"
@@ -127,12 +132,11 @@ index 1939ad6..98d1415 100644
 -CC	= gcc
 -INCLUDE	= -I/usr/local/include
 -CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
--
--LDFLAGS	= -L/usr/local/lib
--LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
 +DESTDIR?=/usr
 +PREFIX?=/local
-+
+ 
+-LDFLAGS	= -L/usr/local/lib
+-LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
 +INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
 +LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
 +
@@ -148,7 +152,7 @@ index 1939ad6..98d1415 100644
  # Should not alter anything below this line
  ###############################################################################
 diff --git a/examples/Makefile b/examples/Makefile
-index e6b9b71..931b167 100644
+index 6d87885..8623816 100644
 --- a/examples/Makefile
 +++ b/examples/Makefile
 @@ -26,14 +26,20 @@ ifneq ($V,1)
@@ -160,12 +164,11 @@ index e6b9b71..931b167 100644
 -CC	= gcc
 -INCLUDE	= -I/usr/local/include
 -CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
--
--LDFLAGS	= -L/usr/local/lib
--LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
 +DESTDIR?=/usr
 +PREFIX?=/local
-+
+ 
+-LDFLAGS	= -L/usr/local/lib
+-LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm -lcrypt -lrt
 +INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
 +LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
 +
@@ -176,12 +179,12 @@ index e6b9b71..931b167 100644
 +CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
 +
 +LDFLAGS	?= -L$(LIB_DIR)
-+LDLIBS    ?= -lwiringPi -lwiringPiDev -lpthread -lm
++LDLIBS    ?= -lwiringPi -lwiringPiDev -lpthread -lm -lcrypt -lrt
  
  # Should not alter anything below this line
  ###############################################################################
 diff --git a/examples/PiFace/Makefile b/examples/PiFace/Makefile
-index 4685adc..cfaf902 100644
+index f937c14..ad030b3 100644
 --- a/examples/PiFace/Makefile
 +++ b/examples/PiFace/Makefile
 @@ -26,14 +26,20 @@ ifneq ($V,1)
@@ -193,12 +196,11 @@ index 4685adc..cfaf902 100644
 -CC	= gcc
 -INCLUDE	= -I/usr/local/include
 -CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
--
--LDFLAGS	= -L/usr/local/lib
--LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
 +DESTDIR?=/usr
 +PREFIX?=/local
-+
+ 
+-LDFLAGS	= -L/usr/local/lib
+-LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
 +INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
 +LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
 +
@@ -214,7 +216,7 @@ index 4685adc..cfaf902 100644
  # Should not alter anything below this line
  ###############################################################################
 diff --git a/examples/PiGlow/Makefile b/examples/PiGlow/Makefile
-index acd4818..dabd64e 100644
+index f182db7..d1ea74f 100644
 --- a/examples/PiGlow/Makefile
 +++ b/examples/PiGlow/Makefile
 @@ -29,10 +29,10 @@ endif
@@ -231,7 +233,7 @@ index acd4818..dabd64e 100644
  
  # Should not alter anything below this line
 diff --git a/examples/q2w/Makefile b/examples/q2w/Makefile
-index 6f50fa0..c5e9f6e 100644
+index 8f773bf..14aa6e4 100644
 --- a/examples/q2w/Makefile
 +++ b/examples/q2w/Makefile
 @@ -29,10 +29,10 @@ endif
@@ -248,7 +250,7 @@ index 6f50fa0..c5e9f6e 100644
  
  ###############################################################################
 diff --git a/gpio/Makefile b/gpio/Makefile
-index 7dcd090..83ec454 100644
+index f41a005..22753ee 100644
 --- a/gpio/Makefile
 +++ b/gpio/Makefile
 @@ -30,13 +30,17 @@ ifneq ($V,1)
@@ -259,7 +261,7 @@ index 7dcd090..83ec454 100644
 -DEBUG	= -O2
 -CC	= gcc
 -INCLUDE	= -I$(DESTDIR)$(PREFIX)/include
--CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+-CFLAGS	= $(DEBUG) -Wall -Wextra $(INCLUDE) -Winline -pipe
 +INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
 +LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
 +BIN_DIR?=$(DESTDIR)$(PREFIX)/bin
@@ -269,10 +271,10 @@ index 7dcd090..83ec454 100644
 +DEBUG	?= -O2
 +CC	?= gcc
 +INCLUDE	?= -I$(INCLUDE_DIR)
-+CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++CFLAGS	?= $(DEBUG) -Wall -Wextra $(INCLUDE) -Winline -pipe
 +
 +LDFLAGS	?= -L$(LIB_DIR)
- LIBS    = -lwiringPi -lwiringPiDev -lpthread
+ LIBS    = -lwiringPi -lwiringPiDev -lpthread -lrt -lm -lcrypt
  
  # May not need to  alter anything below this line
 @@ -72,13 +76,10 @@ tags:	$(SRC)
@@ -293,7 +295,7 @@ index 7dcd090..83ec454 100644
  
  .PHONY:	install-deb
  install-deb:	gpio
-@@ -89,7 +90,7 @@ install-deb:	gpio
+@@ -91,7 +92,7 @@ install-deb:	gpio
  .PHONY:	uninstall
  uninstall:
  	$Q echo "[UnInstall]"
@@ -303,7 +305,7 @@ index 7dcd090..83ec454 100644
  
  .PHONY:	depend
 diff --git a/wiringPi/Makefile b/wiringPi/Makefile
-index 6bbcc5d..5355b74 100644
+index e1868b9..e39f75a 100644
 --- a/wiringPi/Makefile
 +++ b/wiringPi/Makefile
 @@ -25,19 +25,23 @@ VERSION=$(shell cat ../VERSION)
@@ -334,14 +336,14 @@ index 6bbcc5d..5355b74 100644
 +CC	?= gcc
 +INCLUDE	?= -I.
  DEFS	= -D_GNU_SOURCE
- CFLAGS	= $(DEBUG) $(DEFS) -Wformat=2 -Wall -Winline $(INCLUDE) -pipe -fPIC
+ CFLAGS	= $(DEBUG) $(DEFS) -Wformat=2 -Wall -Wextra -Winline $(INCLUDE) -pipe -fPIC
  
-@@ -89,17 +93,17 @@ $(STATIC):	$(OBJ)
+@@ -78,17 +82,17 @@ $(STATIC):	$(OBJ)
  
  $(DYNAMIC):	$(OBJ)
  	$Q echo "[Link (Dynamic)]"
--	$Q $(CC) -shared -Wl,-soname,libwiringPi.so$(WIRINGPI_SONAME_SUFFIX) -o libwiringPi.so.$(VERSION) -lpthread $(OBJ)
-+	$Q $(CC) $(LDFLAGS) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
+-	$Q $(CC) -shared -Wl,-soname,libwiringPi.so$(WIRINGPI_SONAME_SUFFIX) -o libwiringPi.so.$(VERSION) $(LIBS) $(OBJ)
++	$Q $(CC) $(LDFLAGS) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so $(LIBS) $(OBJ)
  
  .c.o:
  	$Q echo [Compile] $<
@@ -357,7 +359,7 @@ index 6bbcc5d..5355b74 100644
  
  .PHONY:	tags
  tags:	$(SRC)
-@@ -110,22 +114,22 @@ tags:	$(SRC)
+@@ -99,22 +103,22 @@ tags:	$(SRC)
  .PHONY:	install
  install:	$(DYNAMIC)
  	$Q echo "[Install Headers]"
@@ -390,7 +392,7 @@ index 6bbcc5d..5355b74 100644
  
  .PHONY:	install-deb
  install-deb:	$(DYNAMIC)
-@@ -140,9 +144,11 @@ install-deb:	$(DYNAMIC)
+@@ -129,9 +133,11 @@ install-deb:	$(DYNAMIC)
  .PHONY:	uninstall
  uninstall:
  	$Q echo "[UnInstall]"
@@ -406,5 +408,5 @@ index 6bbcc5d..5355b74 100644
  
  .PHONY:	depend
 -- 
-2.1.4
+2.7.4
 
diff --git a/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch b/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
deleted file mode 100644
index 5de5853..0000000
--- a/recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-From 7f65eb37a82a6d9b095d9c8f262ad9dd205acd03 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sat, 30 Jan 2016 16:57:38 -0800
-Subject: [PATCH] include <asm/ioctl.h> directly for _IOC_SIZEBITS
-
-Fixes errors like
-| wiringPiSPI.c: In function 'wiringPiSPIDataRW':
-| wiringPiSPI.c:89:35: error: '_IOC_SIZEBITS' undeclared (first use in
-this function)
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
-Upstream-Status: Submitted
-
- wiringPi/wiringPi.c    | 1 +
- wiringPi/wiringPiI2C.c | 1 +
- wiringPi/wiringPiSPI.c | 1 +
- 3 files changed, 3 insertions(+)
-
-diff --git a/wiringPi/wiringPi.c b/wiringPi/wiringPi.c
-index 32e5100..cb5db9d 100644
---- a/wiringPi/wiringPi.c
-+++ b/wiringPi/wiringPi.c
-@@ -64,6 +64,7 @@
- #include <time.h>
- #include <fcntl.h>
- #include <pthread.h>
-+#include <asm/ioctl.h>
- #include <sys/time.h>
- #include <sys/mman.h>
- #include <sys/stat.h>
-diff --git a/wiringPi/wiringPiI2C.c b/wiringPi/wiringPiI2C.c
-index c787bce..efdf53c 100644
---- a/wiringPi/wiringPiI2C.c
-+++ b/wiringPi/wiringPiI2C.c
-@@ -52,6 +52,7 @@
- #include <string.h>
- #include <fcntl.h>
- #include <sys/ioctl.h>
-+#include <asm/ioctl.h>
- 
- #include "wiringPi.h"
- #include "wiringPiI2C.h"
-diff --git a/wiringPi/wiringPiSPI.c b/wiringPi/wiringPiSPI.c
-index 453df31..ae3c7d9 100644
---- a/wiringPi/wiringPiSPI.c
-+++ b/wiringPi/wiringPiSPI.c
-@@ -27,6 +27,7 @@
- #include <fcntl.h>
- #include <errno.h>
- #include <string.h>
-+#include <asm/ioctl.h>
- #include <sys/ioctl.h>
- #include <linux/spi/spidev.h>
- 
--- 
-2.7.0
-
diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
index c337b19..7953a55 100644
--- a/recipes-devtools/wiringPi/wiringpi_git.bb
+++ b/recipes-devtools/wiringPi/wiringpi_git.bb
@@ -4,14 +4,13 @@ SECTION = "devel/libs"
 LICENSE = "LGPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=e6a600fd5e1d9cbde2d983680233ad02"
 
-# tag 2.32
-SRCREV = "b0a60c3302973ca1878d149d61f2f612c8f27fac"
+# tag 2.44
+SRCREV = "96344ff7125182989f98d3be8d111952a8f74e15"
 
 S = "${WORKDIR}/git"
 
 SRC_URI = "git://git.drogon.net/wiringPi \
            file://0001-Add-initial-cross-compile-support.patch \
-           file://0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch \
            "
 
 COMPATIBLE_MACHINE = "raspberrypi"
-- 
2.7.4


