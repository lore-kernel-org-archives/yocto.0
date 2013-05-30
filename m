Return-Path: <erik.boto@pelagicore.com>
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B48A4E004CF
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 00:04:36 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id w20so202047lbh.40
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 00:04:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:mime-version
	:content-type:content-transfer-encoding:x-gm-message-state;
	bh=q6xM2AvC68ODqPzfdVjQ7Imd57XZZrCTsgob2CAWBac=;
	b=X0oN2/6OLCnRn5enAE6ZAMd9ds8/wFlS3Jo8C83LVD5h3JfKk+H8WtKYlDvhWdmZX4
	AoHPnwvrdpuliFBzLLMdZi6ywM05WD8Xlx6d+YmWIPxpCsIex6/FQQX8aRab4SB9l4hn
	zG3fxvXVXyD2NUgupbDD4DBan0XlCApr3AtyWmYyMHMAWZyO6/vXykbW49U5kCPc0S9b
	sf8f400J2J33INQRcDp9ru1/KeOXSrOkBW40o3YlDwlGassu16TBbX2tQkeh9AbBGLRe
	PFs/VgJXWLeieH4bs9/bKgjaEJ+X8S0AY+MSp0dKm+2rWwJd6uqPUKtQSyJ+EjLKqEom
	Xmsw==
X-Received: by 10.112.88.133 with SMTP id bg5mr2136643lbb.109.1369897475364;
	Thu, 30 May 2013 00:04:35 -0700 (PDT)
Received: from erik-mbook.office.pelagicore.net
	(194-237-7-146.customer.telia.com. [194.237.7.146])
	by mx.google.com with ESMTPSA id w20sm9358641lbi.14.2013.05.30.00.04.33
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 30 May 2013 00:04:34 -0700 (PDT)
From: =?UTF-8?q?Erik=20Bot=C3=B6?= <erik.boto@pelagicore.com>
To: yocto@yoctoproject.org
Date: Thu, 30 May 2013 09:03:28 +0200
Message-Id: <1369897409-25194-1-git-send-email-erik.boto@pelagicore.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkkY1qKpadnHCOpgWIr5xtMCgqYqWWYXVN0MUr4wCdugQcqzu3w4afn4X6fm3155YgxXfsQ
Subject: [meta-ivi][PATCH 1/2] audiomanager: Build plugins as modules instead of shared libraries
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
X-List-Received-Date: Thu, 30 May 2013 07:04:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The plugins are now built as modules instead of versioned shared
libraries. The plugins are also included in the main package instead of
in -dev since they are needed runtime.

Signed-off-by: Erik Botö <erik.boto@pelagicore.com>
---
 ...ns-as-modules-instead-of-shared-libraries.patch | 88 ++++++++++++++++++++++
 .../audiomanager/audiomanager_3.2.bb               | 15 ++--
 .../audiomanager/audiomanager_git.bb               | 15 ++--
 3 files changed, 100 insertions(+), 18 deletions(-)
 create mode 100644 recipes-multimedia/audiomanager/audiomanager/0001-Build-plugins-as-modules-instead-of-shared-libraries.patch

diff --git a/recipes-multimedia/audiomanager/audiomanager/0001-Build-plugins-as-modules-instead-of-shared-libraries.patch b/recipes-multimedia/audiomanager/audiomanager/0001-Build-plugins-as-modules-instead-of-shared-libraries.patch
new file mode 100644
index 0000000..3aaffeb
--- /dev/null
+++ b/recipes-multimedia/audiomanager/audiomanager/0001-Build-plugins-as-modules-instead-of-shared-libraries.patch
@@ -0,0 +1,88 @@
+From ab47293e8210e33a235440a14b24379fc75ba9a3 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Erik=20Bot=C3=B6?= <erik.boto@pelagicore.com>
+Date: Thu, 30 May 2013 08:40:24 +0200
+Subject: [PATCH] * Build plugins as modules instead of shared libraries *
+ Don't set SOVERSION in plugins
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Signed-off-by: Erik Botö <erik.boto@pelagicore.com>
+---
+ PluginCommandInterfaceDbus/CMakeLists.txt  | 6 +-----
+ PluginControlInterface/CMakeLists.txt      | 6 +-----
+ PluginRoutingInterfaceAsync/CMakeLists.txt | 6 +-----
+ PluginRoutingInterfaceDbus/CMakeLists.txt  | 6 +-----
+ 4 files changed, 4 insertions(+), 20 deletions(-)
+
+diff --git a/PluginCommandInterfaceDbus/CMakeLists.txt b/PluginCommandInterfaceDbus/CMakeLists.txt
+index a27e02f..faf7947 100644
+--- a/PluginCommandInterfaceDbus/CMakeLists.txt
++++ b/PluginCommandInterfaceDbus/CMakeLists.txt
+@@ -60,11 +60,7 @@ INCLUDE_DIRECTORIES(
+ # all source files go here
+ file(GLOB PLUGINDBUS_SRCS_CXX "src/*.cpp")
+ 
+-add_library(PluginCommandInterfaceDbus SHARED ${PLUGINDBUS_SRCS_CXX})
+-
+-SET_TARGET_PROPERTIES(PluginCommandInterfaceDbus PROPERTIES 
+-                                            SOVERSION "${LIB_INTERFACE_VERSION}"
+-)
++add_library(PluginCommandInterfaceDbus MODULE ${PLUGINDBUS_SRCS_CXX})
+ 
+ TARGET_LINK_LIBRARIES(PluginCommandInterfaceDbus 
+     ${DLT_LIBRARIES}
+diff --git a/PluginControlInterface/CMakeLists.txt b/PluginControlInterface/CMakeLists.txt
+index 16b49be..466e079 100644
+--- a/PluginControlInterface/CMakeLists.txt
++++ b/PluginControlInterface/CMakeLists.txt
+@@ -47,11 +47,7 @@ INCLUDE_DIRECTORIES(
+ # all source files go here
+ file(GLOB PLUGIN_CONTROL_SRCS_CXX "src/*.cpp")
+ 
+-add_library(PluginControlInterface SHARED ${PLUGIN_CONTROL_SRCS_CXX})
+-
+-SET_TARGET_PROPERTIES(PluginControlInterface PROPERTIES 
+-                                            SOVERSION "${LIB_INTERFACE_VERSION}"
+-)
++add_library(PluginControlInterface MODULE ${PLUGIN_CONTROL_SRCS_CXX})
+ 
+ TARGET_LINK_LIBRARIES(PluginControlInterface 
+     ${DLT_LIBRARIES})
+diff --git a/PluginRoutingInterfaceAsync/CMakeLists.txt b/PluginRoutingInterfaceAsync/CMakeLists.txt
+index b4cd576..1bf09e2 100644
+--- a/PluginRoutingInterfaceAsync/CMakeLists.txt
++++ b/PluginRoutingInterfaceAsync/CMakeLists.txt
+@@ -48,11 +48,7 @@ INCLUDE_DIRECTORIES(
+ file(GLOB PLUGINDBUS_SRCS_CXX "src/*.cpp")
+ 
+ 
+-add_library(PluginRoutingInterfaceAsync SHARED ${PLUGINDBUS_SRCS_CXX})
+-
+-SET_TARGET_PROPERTIES(PluginRoutingInterfaceAsync PROPERTIES 
+-                                            SOVERSION "${LIB_INTERFACE_VERSION}"
+-)
++add_library(PluginRoutingInterfaceAsync MODULE ${PLUGINDBUS_SRCS_CXX})
+ 
+ TARGET_LINK_LIBRARIES(PluginRoutingInterfaceAsync
+     ${DLT_LIBRARIES}
+diff --git a/PluginRoutingInterfaceDbus/CMakeLists.txt b/PluginRoutingInterfaceDbus/CMakeLists.txt
+index ec636c3..19b53bc 100644
+--- a/PluginRoutingInterfaceDbus/CMakeLists.txt
++++ b/PluginRoutingInterfaceDbus/CMakeLists.txt
+@@ -60,11 +60,7 @@ INCLUDE_DIRECTORIES(
+ file(GLOB PLUGINDBUS_SRCS_CXX "src/*.cpp")
+ 
+ 
+-add_library(PluginRoutingInterfaceDbus SHARED ${PLUGINDBUS_SRCS_CXX})
+-
+-SET_TARGET_PROPERTIES(PluginRoutingInterfaceDbus PROPERTIES 
+-                                            SOVERSION "${LIB_INTERFACE_VERSION}"
+-)
++add_library(PluginRoutingInterfaceDbus MODULE ${PLUGINDBUS_SRCS_CXX})
+ 
+ TARGET_LINK_LIBRARIES(PluginRoutingInterfaceDbus 
+     ${DLT_LIBRARIES}
+-- 
+1.8.1.2
+
diff --git a/recipes-multimedia/audiomanager/audiomanager_3.2.bb b/recipes-multimedia/audiomanager/audiomanager_3.2.bb
index 14007fb..d3dcb56 100644
--- a/recipes-multimedia/audiomanager/audiomanager_3.2.bb
+++ b/recipes-multimedia/audiomanager/audiomanager_3.2.bb
@@ -5,12 +5,13 @@ SECTION = "multimedia"
 LICENSE = "MPLv2"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=815ca599c9df247a0c7f619bab123dad"
 
-PR = "r0"
+PR = "r1"
 
 DEPENDS = "dlt-daemon sqlite3 dbus"
 
 SRC_URI = "git://git.projects.genivi.org/AudioManager.git;protocol=git;tag=${PV} \
-           file://AudioManager.service file://setup_amgr.sh"
+           file://AudioManager.service file://setup_amgr.sh \
+           file://0001-Build-plugins-as-modules-instead-of-shared-libraries.patch"
 
 S = "${WORKDIR}/git"
 inherit autotools gettext cmake pkgconfig systemd
@@ -21,16 +22,12 @@ SYSTEMD_AUTO_ENABLE = "disable"
 EXTRA_OECMAKE += "-DWITH_TESTS=OFF -DUSE_BUILD_LIBS=OFF"
 OECMAKE_CXX_FLAGS +="-ldl"
 
-FILES_${PN} += "${libdir}/audioManager/command/*.so.* \
-                ${libdir}/audioManager/control/*.so.* \
-                ${libdir}/audioManager/routing/*.so.* \
+FILES_${PN} += "${libdir}/audioManager/command/*.so* \
+                ${libdir}/audioManager/control/*.so* \
+                ${libdir}/audioManager/routing/*.so* \
                 ${systemd_unitdir}/AudioManager.service \
                 ${systemd_unitdir}/scripts/setup_amgr.sh \
 "
-FILES_${PN}-dev += "${libdir}/audioManager/command/*.so \
-                    ${libdir}/audioManager/control/*.so \
-                    ${libdir}/audioManager/routing/*.so \
-"
 
 FILES_${PN}-dbg += "${libdir}/audioManager/command/.debug/* \
                     ${libdir}/audioManager/control/.debug/* \
diff --git a/recipes-multimedia/audiomanager/audiomanager_git.bb b/recipes-multimedia/audiomanager/audiomanager_git.bb
index 991cfb6..3b4c1a8 100644
--- a/recipes-multimedia/audiomanager/audiomanager_git.bb
+++ b/recipes-multimedia/audiomanager/audiomanager_git.bb
@@ -5,12 +5,13 @@ SECTION = "multimedia"
 LICENSE = "MPLv2"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=815ca599c9df247a0c7f619bab123dad"
 
-PR = "r6"
+PR = "r7"
 
 DEPENDS = "dlt-daemon sqlite3 dbus"
 
 SRC_URI = "git://git.projects.genivi.org/AudioManager.git;protocol=git;tag=e33f72e932661784affc0f24d56f0e78fbac783f \
-           file://AudioManager.service file://setup_amgr.sh"
+           file://AudioManager.service file://setup_amgr.sh \
+           file://0001-Build-plugins-as-modules-instead-of-shared-libraries.patch"
 
 S = "${WORKDIR}/git"
 inherit autotools gettext cmake pkgconfig systemd
@@ -23,16 +24,12 @@ DEFAULT_PREFERENCE = "-1"
 EXTRA_OECMAKE += "-DWITH_TESTS=OFF -DUSE_BUILD_LIBS=OFF"
 OECMAKE_CXX_FLAGS +="-ldl"
 
-FILES_${PN} += "${libdir}/audioManager/command/*.so.* \
-                ${libdir}/audioManager/control/*.so.* \
-                ${libdir}/audioManager/routing/*.so.* \
+FILES_${PN} += "${libdir}/audioManager/command/*.so* \
+                ${libdir}/audioManager/control/*.so* \
+                ${libdir}/audioManager/routing/*.so* \
                 ${systemd_unitdir}/AudioManager.service \
                 ${systemd_unitdir}/scripts/setup_amgr.sh \
 "
-FILES_${PN}-dev += "${libdir}/audioManager/command/*.so \
-                    ${libdir}/audioManager/control/*.so \
-                    ${libdir}/audioManager/routing/*.so \
-"
 
 FILES_${PN}-dbg += "${libdir}/audioManager/command/.debug/* \
                     ${libdir}/audioManager/control/.debug/* \
-- 
1.8.1.2


