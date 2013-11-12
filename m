Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f43.google.com (mail-qe0-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7EF7E017EE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:38:08 -0800 (PST)
Received: by mail-qe0-f43.google.com with SMTP id nc12so5666600qeb.2
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:38:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=DW0AGqRAqv+d1pMwTzf1OLyykdlLMPYUBKFlHnDvy+o=;
	b=Ke3h69zzKujwrplhohLa/5wrnfL97+TKf34NtvQlaSzH1CdHxisDTWEgiiWr/tpHY3
	RXDDlw2WKcoByXk3I8xtt5H24Blr7tR45r5V3N8W8FF7oOKDoFfCEXgYE5A2Or1E4vsU
	jo+Eylhsk+ktFDGoeaxLT1u1lRyGcfMX0CinliaCARHuiJpjtp3c06+a3wzA/N6zw4cZ
	UTTHOaXGee5hDD7RJ3WCweH8cQ+EttqmXu2ro6hdGSwxgRodXys8MtonDNGO8m5Hwra5
	dQnPOgDL4ncYXrKadOYBbA6LztBW8L2FpsKTZ4KP2j9uYCMnA3TR9xoZDYI3JjZ0dFEn
	n7uQ==
X-Gm-Message-State: ALoCoQl+AzqehRWfBkZa2qrV6XtYjJBMQECjohpKzni80aS5bN4nMCb1fWRm0ZkOdDMVAOaEzrl8
X-Received: by 10.224.7.194 with SMTP id e2mr59880956qae.46.1384274288283;
	Tue, 12 Nov 2013 08:38:08 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id x10sm72157514qas.5.2013.11.12.08.38.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Nov 2013 08:38:07 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 12 Nov 2013 18:37:59 +0200
Message-Id: <1384274279-16413-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Cc: Dan McGregor <dan.mcgregor@usask.ca>
Subject: [meta-raspberrypi][PATCH 1/1] wiringpi: Add new package
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
X-List-Received-Date: Tue, 12 Nov 2013 16:38:14 -0000

From: Dan McGregor <dan.mcgregor@usask.ca>

Commit created from merging:
https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/c8046050db1f0026c1f10e41d95619d86ac7a822
https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/fe2467c0e82ff3d243993bdffde6a24754c3a7f6
https://github.com/SaskatoonTechworks/meta-raspberrypi/commit/72f7705cbac99b834654894b545d5fa431a13b51

Added some minor changes:
* remove PR
* remove tabs

Change-Id: Ia430db732e6c9662f71eca2433d03cce738ca23f
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../wiringPi/files/Makefiles-install.patch         | 202 +++++++++++++++++++++
 recipes-devtools/wiringPi/wiringpi_git.bb          |  31 ++++
 2 files changed, 233 insertions(+)
 create mode 100644 recipes-devtools/wiringPi/files/Makefiles-install.patch
 create mode 100644 recipes-devtools/wiringPi/wiringpi_git.bb

diff --git a/recipes-devtools/wiringPi/files/Makefiles-install.patch b/recipes-devtools/wiringPi/files/Makefiles-install.patch
new file mode 100644
index 0000000..cd13064
--- /dev/null
+++ b/recipes-devtools/wiringPi/files/Makefiles-install.patch
@@ -0,0 +1,202 @@
+diff --git a/examples/Makefile b/examples/Makefile
+index defd510..b84f3de 100644
+--- a/examples/Makefile
++++ b/examples/Makefile
+@@ -26,10 +26,10 @@
+ #DEBUG	= -g -O0
+ DEBUG	= -O3
+ CC	= gcc
+-INCLUDE	= -I/usr/local/include
++INCLUDE	= -I../wiringPi
+ CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+ 
+-LDFLAGS	= -L/usr/local/lib
++LDFLAGS	= -L../wiringPi
+ LDLIBS    = -lwiringPi -lpthread -lm
+ 
+ # Should not alter anything below this line
+diff --git a/gpio/Makefile b/gpio/Makefile
+index a043962..b1539d9 100644
+--- a/gpio/Makefile
++++ b/gpio/Makefile
+@@ -23,13 +23,16 @@
+ #################################################################################
+ 
+ 
++DESTDIR?=/usr
++PREFIX?=/local
++
+ #DEBUG	= -g -O0
+-DEBUG	= -O2
+-CC	= gcc
+-INCLUDE	= -I/usr/local/include
+-CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
++DEBUG	?= -O2
++CC	?= gcc
++INCLUDE	?= -I../wiringPi
++CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe
+ 
+-LDFLAGS	= -L/usr/local/lib
++LDFLAGS	?= -L../wiringPi
+ LIBS    = -lwiringPi -lpthread -lm
+ 
+ # May not need to  alter anything below this line
+@@ -61,17 +64,16 @@ tags:	$(SRC)
+ .PHONEY:	install
+ install:
+ 	@echo "[Install]"
+-	@cp gpio /usr/local/bin
+-	@chown root.root /usr/local/bin/gpio
+-	@chmod 4755 /usr/local/bin/gpio
+-	@mkdir -p /usr/local/man/man1
+-	@cp gpio.1 /usr/local/man/man1
++	@install -d $(DESTDIR)$(PREFIX)/bin
++	@install -m 4755 -o root -g root gpio $(DESTDIR)$(PREFIX)/bin
++	@install -d $(DESTDIR)$(PREFIX)/share/man/man1
++	@install -m 644 -o root -g root gpio.1 $(DESTDIR)$(PREFIX)/share/man/man1
+ 
+ .PHONEY:	uninstall
+ uninstall:
+ 	@echo "[UnInstall]"
+-	@rm -f /usr/local/bin/gpio
+-	@rm -f /usr/local/man/man1/gpio.1
++	@rm -f $(DESTDIR)$(PREFIX)/bin/gpio
++	@rm -f $(DESTDIR)$(PREFIX)/share/man/man1/gpio.1
+ 
+ .PHONEY:	depend
+ depend:
+diff --git a/wiringPi/Makefile b/wiringPi/Makefile
+index c6a4555..2c7ae82 100644
+--- a/wiringPi/Makefile
++++ b/wiringPi/Makefile
+@@ -25,17 +25,20 @@ DYN_VERS_MAJ=1
+ DYN_VERS_MIN=0
+ 
+ VERSION=$(DYN_VERS_MAJ).$(DYN_VERS_MIN)
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
+ #DEBUG	= -g -O0
+-DEBUG	= -O2
+-CC	= gcc
+-INCLUDE	= -I.
+-CFLAGS	= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe -fPIC
++DEBUG	?= -O2
++CC	?= gcc
++INCLUDE	?= -I.
++CFLAGS	?= $(DEBUG) -Wall $(INCLUDE) -Winline -pipe -fPIC
+ 
+ LIBS    =
+ 
+@@ -67,19 +70,19 @@ $(STATIC):	$(OBJ)
+ 
+ $(DYNAMIC):	$(OBJ)
+ 	@echo "[Link (Dynamic)]"
+-	@$(CC) -shared -Wl,-soname,libwiringPi.so.1 -o libwiringPi.so.1.0 -lpthread $(OBJ)
++	@$(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ)
+ 
+ i2c:	$(OBJ) $(OBJ_I2C)
+ 	@echo "[Link (Dynamic + I2C)]"
+-	@$(CC) -shared -Wl,-soname,libwiringPi.so.1 -o libwiringPi.so.1.0 -lpthread $(OBJ) $(OBJ_I2C)
++	@$(CC) -shared -Wl,-soname,$(BASE_NAME).so.$(DYN_VERS_MAJ) -o $(BASE_NAME).so -lpthread $(OBJ) $(OBJ_I2C)
+ 
+ .c.o:
+ 	@echo [Compile] $<
+-	@$(CC) -c $(CFLAGS) $< -o $@
++	@$(CC) -c $(CFLAGS) -fPIC $< -o $@
+ 
+ .PHONEY:	clean
+ clean:
+-	rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak libwiringPi.*
++	rm -f $(OBJ) $(OBJ_I2C) *~ core tags Makefile.bak $(BASE_NAME).so* $(BASE_NAME).a
+ 
+ .PHONEY:	tags
+ tags:	$(SRC)
+@@ -89,45 +92,46 @@ tags:	$(SRC)
+ .PHONEY:	install
+ install:	$(DYNAMIC)
+ 	@echo "[Install]"
+-	@install -m 0755 -d			$(DESTDIR)$(PREFIX)/lib
+-	@install -m 0755 -d			$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 wiringPi.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 wiringSerial.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 wiringShift.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 gertboard.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 piNes.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 softPwm.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 softServo.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 softTone.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 lcd.h			$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 wiringPiSPI.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0644 wiringPiI2C.h		$(DESTDIR)$(PREFIX)/include
+-	@install -m 0755 libwiringPi.so.$(VERSION)		  $(DESTDIR)$(PREFIX)/lib
+-	@ln -sf $(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION) $(DESTDIR)/lib/libwiringPi.so
+-	@ln -sf $(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION) $(DESTDIR)/lib/libwiringPi.so.1
+-	@ldconfig
++	@install -m 0755 -d			$(LIB_DIR)
++	@install -m 0755 -d			$(INCLUDE_DIR)
++	@install -m 0644 wiringPi.h		$(INCLUDE_DIR)
++	@install -m 0644 wiringSerial.h		$(INCLUDE_DIR)
++	@install -m 0644 wiringShift.h		$(INCLUDE_DIR)
++	@install -m 0644 gertboard.h		$(INCLUDE_DIR)
++	@install -m 0644 piNes.h		$(INCLUDE_DIR)
++	@install -m 0644 softPwm.h		$(INCLUDE_DIR)
++	@install -m 0644 softServo.h		$(INCLUDE_DIR)
++	@install -m 0644 softTone.h		$(INCLUDE_DIR)
++	@install -m 0644 lcd.h			$(INCLUDE_DIR)
++	@install -m 0644 wiringPiSPI.h		$(INCLUDE_DIR)
++	@install -m 0644 wiringPiI2C.h		$(INCLUDE_DIR)
++	@install -m 0755 $(BASE_NAME).so	$(LIB_DIR)/$(DYNAMIC)
++	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so
++	@ln -sf $(DYNAMIC)			$(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
+ 
+ .PHONEY:	install-static
+ install-static:	$(STATIC)
+ 	@echo "[Install Static]"
+-	@install -m 0755 libwiringPi.a		$(DESTDIR)$(PREFIX)/lib
++	@install -m 0644 $(STATIC)		$(LIB_DIR)
+ 
+ .PHONEY:	uninstall
+ uninstall:
+ 	@echo "[UnInstall]"
+-	@rm -f $(DESTDIR)$(PREFIX)/include/wiringPi.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/wiringSerial.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/wiringShift.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/gertboard.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/piNes.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/softPwm.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/softServo.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/softTone.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/lcd.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/wiringPiSPI.h
+-	@rm -f $(DESTDIR)$(PREFIX)/include/wiringPiI2C.h
+-	@rm -f $(DESTDIR)$(PREFIX)/lib/libwiringPi.*
+-	@ldconfig
++	@rm -f $(INCLUDE_DIR)/wiringPi.h
++	@rm -f $(INCLUDE_DIR)/wiringSerial.h
++	@rm -f $(INCLUDE_DIR)/wiringShift.h
++	@rm -f $(INCLUDE_DIR)/gertboard.h
++	@rm -f $(INCLUDE_DIR)/piNes.h
++	@rm -f $(INCLUDE_DIR)/softPwm.h
++	@rm -f $(INCLUDE_DIR)/softServo.h
++	@rm -f $(INCLUDE_DIR)/softTone.h
++	@rm -f $(INCLUDE_DIR)/lcd.h
++	@rm -f $(INCLUDE_DIR)/wiringPiSPI.h
++	@rm -f $(INCLUDE_DIR)/wiringPiI2C.h
++	@rm -f $(LIB_DIR)/$(STATIC)
++	@rm -f $(LIB_DIR)/$(DYNAMIC)
++	@rm -f $(LIB_DIR)/$(BASE_NAME).so
++	@rm -f $(LIB_DIR)/$(BASE_NAME).so.$(DYN_VERS_MAJ)
+ 
+ 
+ .PHONEY:	depend
diff --git a/recipes-devtools/wiringPi/wiringpi_git.bb b/recipes-devtools/wiringPi/wiringpi_git.bb
new file mode 100644
index 0000000..b2e3e91
--- /dev/null
+++ b/recipes-devtools/wiringPi/wiringpi_git.bb
@@ -0,0 +1,31 @@
+DESCRIPTION = "A library to control Raspberry Pi GPIO channels"
+HOMEPAGE = "https://projects.drogon.net/raspberry-pi/wiringpi/"
+SECTION = "devel/libs"
+LICENSE = "LGPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING.LESSER;md5=e6a600fd5e1d9cbde2d983680233ad02"
+
+SRCREV = "98bcb20d9391ebde24f9eb1244f0d238fb1a1dab"
+
+S = "${WORKDIR}/git"
+
+SRC_URI = "\
+          git://git.drogon.net/wiringPi \
+          file://Makefiles-install.patch \
+          "
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+CFLAGS_prepend = "-I${S}/wiringPi"
+
+EXTRA_OEMAKE += "'INCLUDE_DIR=${D}${includedir}' 'LIB_DIR=${D}${libdir}'"
+EXTRA_OEMAKE += "'DESTDIR=${D}/usr' 'PREFIX=""'"
+
+do_compile() {
+    oe_runmake -C wiringPi
+    oe_runmake -C gpio 'LDFLAGS=${LDFLAGS} -L${S}/wiringPi'
+}
+
+do_install() {
+    oe_runmake -C wiringPi install
+    oe_runmake -C gpio install
+}
-- 
1.8.1.4


