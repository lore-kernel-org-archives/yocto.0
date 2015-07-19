Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C422BE00A0A; Sun, 19 Jul 2015 02:11:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7985FE00510
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 02:11:27 -0700 (PDT)
X-Halon-ID: 2a52adcf-2df6-11e5-8d85-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 11:11:39 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sun, 19 Jul 2015 11:11:26 +0200
Message-Id: <a898d8842c3307e07cf2a3e54de4b1d1aa2a85e4.1437296854.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1437296854.git.petter@technux.se>
References: <cover.1437296854.git.petter@technux.se>
In-Reply-To: <cover.1437296854.git.petter@technux.se>
References: <cover.1437296854.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 2/2] wiringpi: Bump SRCREV
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
X-List-Received-Date: Sun, 19 Jul 2015 09:11:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Update wiringpi to latest revision. Due to a refactoring of the build
procedure in wiringpi the integration patch 'makefile-install.patch'
didn't apply anymore. While migrating that patch it was simplified and
generated using 'git format-patch' instead, to make it easier to maintain
the patch in the future.

[Support #60]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .../0001-Add-initial-cross-compile-support.patch   | 429 +++++++++++++++++++++
 .../wiringPi/files/Makefiles-install.patch         | 202 ----------
 recipes-devtools/wiringPi/wiringpi_git.bb          |  10 +-
 3 files changed, 435 insertions(+), 206 deletions(-)
 create mode 100644 recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
 delete mode 100644 recipes-devtools/wiringPi/files/Makefiles-install.patch

diff --git a/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
new file mode 100644
index 0000000..c5ba270
--- /dev/null
+++ b/recipes-devtools/wiringPi/files/0001-Add-initial-cross-compile-support.patch
@@ -0,0 +1,429 @@
+From b0d82bc7cc90db41aa4f7012bbe3009f0b8ab11d Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
+Date: Sat, 18 Jul 2015 23:20:05 +0200
+Subject: [PATCH] Add initial cross compile support
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream-Status: Pending
+
+Signed-off-by: Petter Mabäcker <petter@technux.se>
+---
+ devLib/Makefile             | 58 +++++++++++++++++++++++++--------------------
+ examples/Gertboard/Makefile | 22 ++++++++++-------
+ examples/Makefile           | 19 +++++++++------
+ examples/PiFace/Makefile    | 22 ++++++++++-------
+ examples/PiGlow/Makefile    |  4 ++--
+ examples/q2w/Makefile       |  5 ++--
+ gpio/Makefile               | 31 +++++++++++++-----------
+ wiringPi/Makefile           | 56 ++++++++++++++++++++++++-------------------
+ 8 files changed, 124 insertions(+), 93 deletions(-)
+
+diff --git a/devLib/Makefile b/devLib/Makefile
+index d62b532..c7c7884 100644
+--- a/devLib/Makefile
++++ b/devLib/Makefile
+@@ -22,18 +22,22 @@
+ #################################################################################
+ 
+ VERSION=$(shell cat ../VERSION)
+-DESTDIR=/usr
+-PREFIX=/local
++DESTDIR?=/usr
++PREFIX?=/local
+ 
+-STATIC=libwiringPiDev.a
+-DYNAMIC=libwiringPiDev.so.$(VERSION)
++INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
++LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
+ 
+-#DEBUG	= -g -O0
+-DEBUG	= -O2
+-CC	= gcc
+-INCLUDE	= -I.
+-DEFS	= -D_GNU_SOURCE
+-CFLAGS	= $(DEBUG) $(DEFS) -Wformat=2 -Wall -Winline $(INCLUDE) -pipe -fPIC
++BASE_NAME=libwiringPiDev
++STATIC=$(BASE_NAME).a
++DYNAMIC=$(BASE_NAME).so.$(VERSION)
++
++#DEBUG	?= -g -O0
++DEBUG	?= -O2
++CC	?= gcc
++INCLUDE	?= -I.
++DEFS	?= -D_GNU_SOURCE
++CFLAGS	?= $(DEBUG) $(DEFS) -Wformat=2 -Wall -Winline $(INCLUDE) -pipe -fPIC
+ 
+ LIBS    =
+ 
+@@ -60,16 +64,16 @@ $(STATIC):	$(OBJ)
+ 
+ $(DYNAMIC):	$(OBJ)
+ 	@echo "[Link (Dynamic)]"
+-	@$(CC) -shared -Wl,-soname,libwiringPiDev.so -o libwiringPiDev.so.$(VERSION) -lpthread $(OBJ)
++	@$(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
+ 
+ .c.o:
+ 	@echo [Compile] $<
+-	@$(CC) -c $(CFLAGS) $< -o $@
++	@$(CC) -c $(CFLAGS) -fPIC $< -o $@
+ 
+ .PHONY:	clean
+ clean:
+ 	@echo "[Clean]"
+-	@rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak libwiringPiDev.*
++	@rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak $(BASE_NAME).so* $(BASE_NAME).a
+ 
+ .PHONY:	tags
+ tags:	$(SRC)
+@@ -80,22 +84,22 @@ tags:	$(SRC)
+ .PHONY:	install
+ install:	$(DYNAMIC)
+ 	@echo "[Install Headers]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 $(HEADERS)					$(DESTDIR)$(PREFIX)/include
++	@install -m 0755 -d						$(INCLUDE_DIR)
++	@install -m 0644 $(HEADERS)					$(INCLUDE_DIR)
+ 	@echo "[Install Dynamic Lib]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/lib
+-	@install -m 0755 libwiringPiDev.so.$(VERSION)			$(DESTDIR)$(PREFIX)/lib/libwiringPiDev.so.$(VERSION)
+-	@ln -sf $(DESTDIR)$(PREFIX)/lib/libwiringPiDev.so.$(VERSION)	$(DESTDIR)/lib/libwiringPiDev.so
+-	@ldconfig
++	@install -m 0755 -d						$(LIB_DIR)
++	@install -m 0755 $(BASE_NAME).so	$(LIB_DIR)/$(DYNAMIC)
++	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so
++	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
+ 
+ .PHONY:	install-static
+ install-static:	$(STATIC)
+ 	@echo "[Install Headers]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 $(HEADERS)					$(DESTDIR)$(PREFIX)/include
++	@install -m 0755 -d						$(INCLUDE_DIR)
++	@install -m 0644 $(HEADERS)					$(INCLUDE_DIR)
+ 	@echo "[Install Static Lib]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/lib
+-	@install -m 0755 libwiringPiDev.a				$(DESTDIR)$(PREFIX)/lib
++	@install -m 0755 -d						$(LIB_DIR)
++	@install -m 0644 $(STATIC)					$(LIB_DIR)
+ 
+ .PHONY:	install-deb
+ install-deb:	$(DYNAMIC)
+@@ -110,9 +114,11 @@ install-deb:	$(DYNAMIC)
+ .PHONY:	uninstall
+ uninstall:
+ 	@echo "[UnInstall]"
+-	@cd $(DESTDIR)$(PREFIX)/include/ && rm -f $(HEADERS)
+-	@cd $(DESTDIR)$(PREFIX)/lib/     && rm -f libwiringPiDev.*
+-	@ldconfig
++	@cd $(INCLUDE_DIR) && rm -f $(HEADERS)
++	@rm -f $(LIB_DIR)/$(STATIC)
++	@rm -f $(LIB_DIR)/$(DYNAMIC)
++	@rm -f $(LIB_DIR)/$(BASE_NAME).so
++	@rm -f $(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
+ 
+ 
+ .PHONY:	depend
+diff --git a/examples/Gertboard/Makefile b/examples/Gertboard/Makefile
+index 7569261..b0c32e0 100644
+--- a/examples/Gertboard/Makefile
++++ b/examples/Gertboard/Makefile
+@@ -5,14 +5,20 @@
+ #	Copyright (c) 2013 Gordon Henderson
+ #################################################################################
+ 
+-#DEBUG	= -g -O0
+-DEBUG	= -O3
+-CC	= gcc
+-INCLUDE	= -I/usr/local/include
+-CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+-
+-LDFLAGS	= -L/usr/local/lib
+-LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
++DESTDIR?=/usr
++PREFIX?=/local
++
++INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
++LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
++
++#DEBUG	?= -g -O0
++DEBUG	?= -O3
++CC	?= gcc
++INCLUDE	?= -I$(INCLUDE_DIR)
++CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++
++LDFLAGS	?= -L$(LIB_DIR)
++LDLIBS    ?= -lwiringPi -lwiringPiDev -lpthread -lm
+ 
+ # Should not alter anything below this line
+ ###############################################################################
+diff --git a/examples/Makefile b/examples/Makefile
+index c9967dc..c2f8b9d 100644
+--- a/examples/Makefile
++++ b/examples/Makefile
+@@ -22,15 +22,20 @@
+ #    along with wiringPi.  If not, see <http://www.gnu.org/licenses/>.
+ #################################################################################
+ 
++DESTDIR?=/usr
++PREFIX?=/local
+ 
+-#DEBUG	= -g -O0
+-DEBUG	= -O3
+-CC	= gcc
+-INCLUDE	= -I/usr/local/include
+-CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
++LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
+ 
+-LDFLAGS	= -L/usr/local/lib
+-LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
++#DEBUG	?= -g -O0
++DEBUG	?= -O3
++CC	?= gcc
++INCLUDE	?= -I$(INCLUDE_DIR)
++CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++
++LDFLAGS	?= -L$(LIB_DIR)
++LDLIBS    ?= -lwiringPi -lwiringPiDev -lpthread -lm
+ 
+ # Should not alter anything below this line
+ ###############################################################################
+diff --git a/examples/PiFace/Makefile b/examples/PiFace/Makefile
+index 0bde334..fc14c0c 100644
+--- a/examples/PiFace/Makefile
++++ b/examples/PiFace/Makefile
+@@ -23,14 +23,20 @@
+ #################################################################################
+ 
+ 
+-#DEBUG	= -g -O0
+-DEBUG	= -O3
+-CC	= gcc
+-INCLUDE	= -I/usr/local/include
+-CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+-
+-LDFLAGS	= -L/usr/local/lib
+-LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
++DESTDIR?=/usr
++PREFIX?=/local
++
++INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
++LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
++
++#DEBUG	?= -g -O0
++DEBUG	?= -O3
++CC	?= gcc
++INCLUDE	?= -I$(INCLUDE_DIR)
++CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++
++LDFLAGS	?= -L$(LIB_DIR)
++LDLIBS    ?= -lwiringPi -lwiringPiDev -lpthread -lm
+ 
+ # Should not alter anything below this line
+ ###############################################################################
+diff --git a/examples/PiGlow/Makefile b/examples/PiGlow/Makefile
+index 8d31141..482c9e7 100644
+--- a/examples/PiGlow/Makefile
++++ b/examples/PiGlow/Makefile
+@@ -26,10 +26,10 @@
+ #DEBUG	= -g -O0
+ DEBUG	= -O3
+ CC	= gcc
+-INCLUDE	= -I/usr/local/include
++INCLUDE	= -I../wiringPi -I../wiringPiDev
+ CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+ 
+-LDFLAGS	= -L/usr/local/lib
++LDFLAGS	= -L../wiringPi -L../wiringPiDev
+ LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
+ 
+ # Should not alter anything below this line
+diff --git a/examples/q2w/Makefile b/examples/q2w/Makefile
+index 150c825..0544aa3 100644
+--- a/examples/q2w/Makefile
++++ b/examples/q2w/Makefile
+@@ -22,14 +22,13 @@
+ #    along with wiringPi.  If not, see <http://www.gnu.org/licenses/>.
+ #################################################################################
+ 
+-
+ #DEBUG	= -g -O0
+ DEBUG	= -O3
+ CC	= gcc
+-INCLUDE	= -I/usr/local/include
++INCLUDE	= -I../wiringPi -I../devLib
+ CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+ 
+-LDFLAGS	= -L/usr/local/lib
++LDFLAGS	= -L../wiringPi -L../devLib
+ LDLIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
+ 
+ ###############################################################################
+diff --git a/gpio/Makefile b/gpio/Makefile
+index 449986e..95af1ad 100644
+--- a/gpio/Makefile
++++ b/gpio/Makefile
+@@ -23,16 +23,20 @@
+ #    along with wiringPi.  If not, see <http://www.gnu.org/licenses/>.
+ #################################################################################
+ 
+-DESTDIR=/usr
+-PREFIX=/local
++DESTDIR?=/usr
++PREFIX?=/local
+ 
+-#DEBUG	= -g -O0
+-DEBUG	= -O2
+-CC	= gcc
+-INCLUDE	= -I$(DESTDIR)$(PREFIX)/include
+-CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
++LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
++BIN_DIR?=$(DESTDIR)$(PREFIX)/bin
+ 
+-LDFLAGS	= -L$(DESTDIR)$(PREFIX)/lib
++#DEBUG	?= -g -O0
++DEBUG	?= -O2
++CC	?= gcc
++INCLUDE	?= -I$(INCLUDE_DIR)
++CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++
++LDFLAGS	= -L$(LIB_DIR)
+ LIBS    = -lwiringPi -lwiringPiDev -lpthread -lm
+ 
+ # May not need to  alter anything below this line
+@@ -68,11 +72,10 @@ tags:	$(SRC)
+ .PHONY:	install
+ install: gpio
+ 	@echo "[Install]"
+-	@cp gpio		$(DESTDIR)$(PREFIX)/bin
+-	@chown root.root	$(DESTDIR)$(PREFIX)/bin/gpio
+-	@chmod 4755		$(DESTDIR)$(PREFIX)/bin/gpio
+-	@mkdir -p		$(DESTDIR)$(PREFIX)/man/man1
+-	@cp gpio.1		$(DESTDIR)$(PREFIX)/man/man1
++	@install -d $(BIN_DIR)
++	@install -m 4755 -o root -g root gpio $(BIN_DIR)
++	@install -d $(DESTDIR)$(PREFIX)/share/man/man1
++	@install -m 644 -o root -g root gpio.1 $(DESTDIR)$(PREFIX)/share/man/man1
+ 
+ .PHONY:	install-deb
+ install-deb:	gpio
+@@ -83,7 +86,7 @@ install-deb:	gpio
+ .PHONY:	uninstall
+ uninstall:
+ 	@echo "[UnInstall]"
+-	@rm -f $(DESTDIR)$(PREFIX)/bin/gpio
++	@rm -f $(BIN_DIR)/gpio
+ 	@rm -f $(DESTDIR)$(PREFIX)/man/man1/gpio.1
+ 
+ .PHONY:	depend
+diff --git a/wiringPi/Makefile b/wiringPi/Makefile
+index 015a894..5fc0659 100644
+--- a/wiringPi/Makefile
++++ b/wiringPi/Makefile
+@@ -22,18 +22,22 @@
+ #################################################################################
+ 
+ VERSION=$(shell cat ../VERSION)
+-DESTDIR=/usr
+-PREFIX=/local
++DESTDIR?=/usr
++PREFIX?=/local
++INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
++LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
+ 
+-STATIC=libwiringPi.a
+-DYNAMIC=libwiringPi.so.$(VERSION)
++BASE_NAME=libwiringPi
++STATIC=$(BASE_NAME).a
++DYNAMIC=$(BASE_NAME).so.$(VERSION)
+ 
+-#DEBUG	= -g -O0
+-DEBUG	= -O2
+-CC	= gcc
+-INCLUDE	= -I.
+-DEFS	= -D_GNU_SOURCE
++#DEBUG	?= -g -O0
+ CFLAGS	= $(DEBUG) $(DEFS) -Wformat=2 -Wall -Winline $(INCLUDE) -pipe -fPIC
++DEBUG	?= -O2
++CC	?= gcc
++DEFS	= -D_GNU_SOURCE
++INCLUDE	?= -I.
++CFLAGS	?= $(DEBUG) $(DEFS) -Wformat=2 -Wall -Winline $(INCLUDE) -pipe -fPIC
+ 
+ LIBS    =
+ 
+@@ -83,17 +87,17 @@ $(STATIC):	$(OBJ)
+ 
+ $(DYNAMIC):	$(OBJ)
+ 	@echo "[Link (Dynamic)]"
+-	@$(CC) -shared -Wl,-soname,libwiringPi.so -o libwiringPi.so.$(VERSION) -lpthread $(OBJ)
++	@$(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
+ 
+ .c.o:
+ 	@echo [Compile] $<
+-	@$(CC) -c $(CFLAGS) $< -o $@
++	@$(CC) -c $(CFLAGS) -fPIC $< -o $@
+ 
+ 
+ .PHONY:	clean
+ clean:
+ 	@echo "[Clean]"
+-	@rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak libwiringPi.*
++	@rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak $(BASE_NAME).so* $(BASE_NAME).a
+ 
+ .PHONY:	tags
+ tags:	$(SRC)
+@@ -104,22 +108,22 @@ tags:	$(SRC)
+ .PHONY:	install
+ install:	$(DYNAMIC)
+ 	@echo "[Install Headers]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 $(HEADERS)					$(DESTDIR)$(PREFIX)/include
++	@install -m 0755 -d						$(INCLUDE_DIR)
++	@install -m 0644 $(HEADERS)					$(INCLUDE_DIR)
+ 	@echo "[Install Dynamic Lib]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/lib
+-	@install -m 0755 libwiringPi.so.$(VERSION)			$(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION)
+-	@ln -sf $(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION)	$(DESTDIR)/lib/libwiringPi.so
+-	@ldconfig
++	@install -m 0755 -d						$(LIB_DIR)
++	@install -m 0755 $(BASE_NAME).so	$(LIB_DIR)/$(DYNAMIC)
++	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so
++	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
+ 
+ .PHONY:	install-static
+ install-static:	$(STATIC)
+ 	@echo "[Install Headers]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 $(HEADERS)					$(DESTDIR)$(PREFIX)/include
++	@install -m 0755 -d						$(INCLUDE_DIR)
++	@install -m 0644 $(HEADERS)					$(INCLUDE_DIR)
+ 	@echo "[Install Static Lib]"
+-	@install -m 0755 -d						$(DESTDIR)$(PREFIX)/lib
+-	@install -m 0755 libwiringPi.a					$(DESTDIR)$(PREFIX)/lib
++	@install -m 0755 -d						$(LIB_DIR)
++	@install -m 0644 $(STATIC)					$(LIB_DIR)
+ 
+ .PHONY:	install-deb
+ install-deb:	$(DYNAMIC)
+@@ -134,9 +138,11 @@ install-deb:	$(DYNAMIC)
+ .PHONY:	uninstall
+ uninstall:
+ 	@echo "[UnInstall]"
+-	@cd $(DESTDIR)$(PREFIX)/include/ && rm -f $(HEADERS)
+-	@cd $(DESTDIR)$(PREFIX)/lib/     && rm -f libwiringPi.*
+-	@ldconfig
++	@cd $(INCLUDE_DIR) && rm -f $(HEADERS)
++	@rm -f $(LIB_DIR)/$(STATIC)
++	@rm -f $(LIB_DIR)/$(DYNAMIC)
++	@rm -f $(LIB_DIR)/$(BASE_NAME).so
++	@rm -f $(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
+ 
+ 
+ .PHONY:	depend
+-- 
+1.9.1
+
diff --git a/recipes-devtools/wiringPi/files/Makefiles-install.patch b/recipes-devtools/wiringPi/files/Makefiles-install.patch
deleted file mode 100644
index cd13064..0000000
--- a/recipes-devtools/wiringPi/files/Makefiles-install.patch
+++ /dev/null
@@ -1,202 +0,0 @@
-diff --git a/examples/Makefile b/examples/Makefile
-index defd510..b84f3de 100644
---- a/examples/Makefile
-+++ b/examples/Makefile
-@@ -26,10 +26,10 @@
- #DEBUG	= -g -O0
- DEBUG	= -O3
- CC	= gcc
--INCLUDE	= -I/usr/local/include
-+INCLUDE	= -I../wiringPi
- CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
- 
--LDFLAGS	= -L/usr/local/lib
-+LDFLAGS	= -L../wiringPi
- LDLIBS    = -lwiringPi -lpthread -lm
- 
- # Should not alter anything below this line
-diff --git a/gpio/Makefile b/gpio/Makefile
-index a043962..b1539d9 100644
---- a/gpio/Makefile
-+++ b/gpio/Makefile
-@@ -23,13 +23,16 @@
- #################################################################################
- 
- 
-+DESTDIR?=/usr
-+PREFIX?=/local
-+
- #DEBUG	= -g -O0
--DEBUG	= -O2
--CC	= gcc
--INCLUDE	= -I/usr/local/include
--CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
-+DEBUG	?= -O2
-+CC	?= gcc
-+INCLUDE	?= -I../wiringPi
-+CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
- 
--LDFLAGS	= -L/usr/local/lib
-+LDFLAGS	?= -L../wiringPi
- LIBS    = -lwiringPi -lpthread -lm
- 
- # May not need to  alter anything below this line
-@@ -61,17 +64,16 @@ tags:	$(SRC)
- .PHONEY:	install
- install:
- 	@echo "[Install]"
--	@cp gpio /usr/local/bin
--	@chown root.root /usr/local/bin/gpio
--	@chmod 4755 /usr/local/bin/gpio
--	@mkdir -p /usr/local/man/man1
--	@cp gpio.1 /usr/local/man/man1
-+	@install -d $(DESTDIR)$(PREFIX)/bin
-+	@install -m 4755 -o root -g root gpio $(DESTDIR)$(PREFIX)/bin
-+	@install -d $(DESTDIR)$(PREFIX)/share/man/man1
-+	@install -m 644 -o root -g root gpio.1 $(DESTDIR)$(PREFIX)/share/man/man1
- 
- .PHONEY:	uninstall
- uninstall:
- 	@echo "[UnInstall]"
--	@rm -f /usr/local/bin/gpio
--	@rm -f /usr/local/man/man1/gpio.1
-+	@rm -f $(DESTDIR)$(PREFIX)/bin/gpio
-+	@rm -f $(DESTDIR)$(PREFIX)/share/man/man1/gpio.1
- 
- .PHONEY:	depend
- depend:
-diff --git a/wiringPi/Makefile b/wiringPi/Makefile
-index c6a4555..2c7ae82 100644
---- a/wiringPi/Makefile
-+++ b/wiringPi/Makefile
-@@ -25,17 +25,20 @@ DYN_VERS_MAJ=1
- DYN_VERS_MIN=0
- 
- VERSION=$(DYN_VERS_MAJ).$(DYN_VERS_MIN)
--DESTDIR=/usr
--PREFIX=/local
-+DESTDIR?=/usr
-+PREFIX?=/local
-+INCLUDE_DIR?=$(DESTDIR)$(PREFIX)/include
-+LIB_DIR?=$(DESTDIR)$(PREFIX)/lib
- 
--STATIC=libwiringPi.a
--DYNAMIC=libwiringPi.so.$(VERSION)
-+BASE_NAME=libwiringPi
-+STATIC=$(BASE_NAME).a
-+DYNAMIC=$(BASE_NAME).so.$(VERSION)
- 
- #DEBUG	= -g -O0
--DEBUG	= -O2
--CC	= gcc
--INCLUDE	= -I.
--CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe -fPIC
-+DEBUG	?= -O2
-+CC	?= gcc
-+INCLUDE	?= -I.
-+CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe -fPIC
- 
- LIBS    =
- 
-@@ -67,19 +70,19 @@ $(STATIC):	$(OBJ)
- 
- $(DYNAMIC):	$(OBJ)
- 	@echo "[Link (Dynamic)]"
--	@$(CC) -shared -Wl,-soname,libwiringPi.so.1 -o libwiringPi.so.1.0 -lpthread $(OBJ)
-+	@$(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
- 
- i2c:	$(OBJ) $(OBJ_I2C)
- 	@echo "[Link (Dynamic + I2C)]"
--	@$(CC) -shared -Wl,-soname,libwiringPi.so.1 -o libwiringPi.so.1.0 -lpthread $(OBJ) $(OBJ_I2C)
-+	@$(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ) $(OBJ_I2C)
- 
- .c.o:
- 	@echo [Compile] $<
--	@$(CC) -c $(CFLAGS) $< -o $@
-+	@$(CC) -c $(CFLAGS) -fPIC $< -o $@
- 
- .PHONEY:	clean
- clean:
--	rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak libwiringPi.*
-+	rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak $(BASE_NAME).so* $(BASE_NAME).a
- 
- .PHONEY:	tags
- tags:	$(SRC)
-@@ -89,45 +92,46 @@ tags:	$(SRC)
- .PHONEY:	install
- install:	$(DYNAMIC)
- 	@echo "[Install]"
--	@install -m 0755 -d			$(DESTDIR)$(PREFIX)/lib
--	@install -m 0755 -d			$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 wiringPi.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 wiringSerial.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 wiringShift.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 gertboard.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 piNes.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 softPwm.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 softServo.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 softTone.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 lcd.h			$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 wiringPiSPI.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0644 wiringPiI2C.h		$(DESTDIR)$(PREFIX)/include
--	@install -m 0755 libwiringPi.so.$(VERSION)		  $(DESTDIR)$(PREFIX)/lib
--	@ln -sf $(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION) $(DESTDIR)/lib/libwiringPi.so
--	@ln -sf $(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION) $(DESTDIR)/lib/libwiringPi.so.1
--	@ldconfig
-+	@install -m 0755 -d			$(LIB_DIR)
-+	@install -m 0755 -d			$(INCLUDE_DIR)
-+	@install -m 0644 wiringPi.h		$(INCLUDE_DIR)
-+	@install -m 0644 wiringSerial.h		$(INCLUDE_DIR)
-+	@install -m 0644 wiringShift.h		$(INCLUDE_DIR)
-+	@install -m 0644 gertboard.h		$(INCLUDE_DIR)
-+	@install -m 0644 piNes.h		$(INCLUDE_DIR)
-+	@install -m 0644 softPwm.h		$(INCLUDE_DIR)
-+	@install -m 0644 softServo.h		$(INCLUDE_DIR)
-+	@install -m 0644 softTone.h		$(INCLUDE_DIR)
-+	@install -m 0644 lcd.h			$(INCLUDE_DIR)
-+	@install -m 0644 wiringPiSPI.h		$(INCLUDE_DIR)
-+	@install -m 0644 wiringPiI2C.h		$(INCLUDE_DIR)
-+	@install -m 0755 $(BASE_NAME).so	$(LIB_DIR)/$(DYNAMIC)
-+	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so
-+	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
- 
- .PHONEY:	install-static
- install-static:	$(STATIC)
- 	@echo "[Install Static]"
--	@install -m 0755 libwiringPi.a		$(DESTDIR)$(PREFIX)/lib
-+	@install -m 0644 $(STATIC)		$(LIB_DIR)
- 
- .PHONEY:	uninstall
- uninstall:
- 	@echo "[UnInstall]"
--	@rm -f $(DESTDIR)$(PREFIX)/include/wiringPi.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/wiringSerial.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/wiringShift.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/gertboard.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/piNes.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/softPwm.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/softServo.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/softTone.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/lcd.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/wiringPiSPI.h
--	@rm -f $(DESTDIR)$(PREFIX)/include/wiringPiI2C.h
--	@rm -f $(DESTDIR)$(PREFIX)/lib/libwiringPi.*
--	@ldconfig
-+	@rm -f $(INCLUDE_DIR)/wiringPi.h
-+	@rm -f $(INCLUDE_DIR)/wiringSerial.h
-+	@rm -f $(INCLUDE_DIR)/wiringShift.h
-+	@rm -f $(INCLUDE_DIR)/gertboard.h
-+	@rm -f $(INCLUDE_DIR)/piNes.h
-+	@rm -f $(INCLUDE_DIR)/softPwm.h
-+	@rm -f $(INCLUDE_DIR)/softServo.h
-+	@rm -f $(INCLUDE_DIR)/softTone.h
-+	@rm -f $(INCLUDE_DIR)/lcd.h
-+	@rm -f $(INCLUDE_DIR)/wiringPiSPI.h
-+	@rm -f $(INCLUDE_DIR)/wiringPiI2C.h
-+	@rm -f $(LIB_DIR)/$(STATIC)
-+	@rm -f $(LIB_DIR)/$(DYNAMIC)
-+	@rm -f $(LIB_DIR)/$(BASE_NAME).so
-+	@rm -f $(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
- 
- 
- .PHONEY:	depend
diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
index b2e3e91..21b5294 100644
--- a/recipes-devtools/wiringPi/wiringpi_git.bb
+++ b/recipes-devtools/wiringPi/wiringpi_git.bb
@@ -4,28 +4,30 @@ SECTION = "devel/libs"
 LICENSE = "LGPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=e6a600fd5e1d9cbde2d983680233ad02"
 
-SRCREV = "98bcb20d9391ebde24f9eb1244f0d238fb1a1dab"
+SRCREV = "5edd177112c99416f68ba3e8c6c4db6ed942e796"
 
 S = "${WORKDIR}/git"
 
 SRC_URI = "\
           git://git.drogon.net/wiringPi \
-          file://Makefiles-install.patch \
+          file://0001-Add-initial-cross-compile-support.patch \
           "
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-CFLAGS_prepend = "-I${S}/wiringPi"
+CFLAGS_prepend = "-I${S}/wiringPi -I${S}/devLib"
 
 EXTRA_OEMAKE += "'INCLUDE_DIR=${D}${includedir}' 'LIB_DIR=${D}${libdir}'"
 EXTRA_OEMAKE += "'DESTDIR=${D}/usr' 'PREFIX=""'"
 
 do_compile() {
+    oe_runmake -C devLib
     oe_runmake -C wiringPi
-    oe_runmake -C gpio 'LDFLAGS=${LDFLAGS} -L${S}/wiringPi'
+    oe_runmake -C gpio 'LDFLAGS=${LDFLAGS} -L${S}/wiringPi -L${S}/devLib'
 }
 
 do_install() {
+    oe_runmake -C devLib install
     oe_runmake -C wiringPi install
     oe_runmake -C gpio install
 }
-- 
1.9.1


