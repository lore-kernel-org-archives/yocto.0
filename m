Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03347E01468
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r06BtFn5005967
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:15 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:14 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:56 +0200
Message-ID: <1357473302-19235-17-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 17/23] layer-management: Remove git version recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 06 Jan 2013 11:55:15 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../include-unistd-for-alarm-in-example.patch      |   12 -----
 ...include-unistd-for-usleep-in-OpenGLES2App.patch |   18 -------
 .../point-to-internal-CMakeVersions.patch          |   13 -----
 .../layer-management/layer-management_git.bb       |   56 --------------------
 4 files changed, 99 deletions(-)
 delete mode 100644 recipes-graphics/layer-management/layer-management-git/include-unistd-for-alarm-in-example.patch
 delete mode 100644 recipes-graphics/layer-management/layer-management-git/include-unistd-for-usleep-in-OpenGLES2App.patch
 delete mode 100644 recipes-graphics/layer-management/layer-management-git/point-to-internal-CMakeVersions.patch
 delete mode 100644 recipes-graphics/layer-management/layer-management_git.bb

diff --git a/recipes-graphics/layer-management/layer-management-git/include-unistd-for-alarm-in-example.patch b/recipes-graphics/layer-management/layer-management-git/include-unistd-for-alarm-in-example.patch
deleted file mode 100644
index 20896b4..0000000
--- a/recipes-graphics/layer-management/layer-management-git/include-unistd-for-alarm-in-example.patch
+++ /dev/null
@@ -1,12 +0,0 @@
-Index: git/LayerManagerExamples/LayerManagerControl/src/commands.cpp
-===================================================================
---- git.orig/LayerManagerExamples/LayerManagerControl/src/commands.cpp	2012-07-12 16:51:49.695274924 +0300
-+++ git/LayerManagerExamples/LayerManagerControl/src/commands.cpp	2012-07-12 16:52:03.231275452 +0300
-@@ -21,6 +21,7 @@
- #include "ExpressionInterpreter.h"
- #include <iostream>
- #include <signal.h> // signal
-+#include <unistd.h>
- 
- using namespace std;
- 
diff --git a/recipes-graphics/layer-management/layer-management-git/include-unistd-for-usleep-in-OpenGLES2App.patch b/recipes-graphics/layer-management/layer-management-git/include-unistd-for-usleep-in-OpenGLES2App.patch
deleted file mode 100644
index 87a9379..0000000
--- a/recipes-graphics/layer-management/layer-management-git/include-unistd-for-usleep-in-OpenGLES2App.patch
+++ /dev/null
@@ -1,18 +0,0 @@
-Include unistd.h in OpenGLES2App.cpp as usleep is used in code
-
-Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
-Upstream-status: Pending
-
-Index: git/LayerManagerExamples/EGLX11MockNavigation/src/OpenGLES2App.cpp
-===================================================================
---- git.orig/LayerManagerExamples/EGLX11MockNavigation/src/OpenGLES2App.cpp	2012-05-16 13:52:30.114057234 +0300
-+++ git/LayerManagerExamples/EGLX11MockNavigation/src/OpenGLES2App.cpp	2012-05-16 13:52:46.674056640 +0300
-@@ -28,6 +28,8 @@
- #include <math.h>
- #include <sys/time.h>
- 
-+#include <unistd.h>
-+
- #define RUNTIME_IN_MS() (GetTickCount() - startTimeInMS)
- 
- // Max width and height of the window
diff --git a/recipes-graphics/layer-management/layer-management-git/point-to-internal-CMakeVersions.patch b/recipes-graphics/layer-management/layer-management-git/point-to-internal-CMakeVersions.patch
deleted file mode 100644
index 5fd080f..0000000
--- a/recipes-graphics/layer-management/layer-management-git/point-to-internal-CMakeVersions.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: git/CMakeLists.txt
-===================================================================
---- git.orig/CMakeLists.txt	2012-02-16 13:02:02.257718578 +0200
-+++ git/CMakeLists.txt	2012-02-16 13:02:20.217968698 +0200
-@@ -22,7 +22,7 @@
- 
- set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/")
- 
--include(${CMAKE_MODULE_PATH}/CMakeVersions.txt)
-+include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules/CMakeVersions.txt)
- 
- # set default build type, if not defined by user
- if (NOT CMAKE_BUILD_TYPE)
diff --git a/recipes-graphics/layer-management/layer-management_git.bb b/recipes-graphics/layer-management/layer-management_git.bb
deleted file mode 100644
index 9af452d..0000000
--- a/recipes-graphics/layer-management/layer-management_git.bb
+++ /dev/null
@@ -1,56 +0,0 @@
-DESCRIPTION = "LayerManager"
-
-HOMEPAGE = "https://www.genivi.org/"
-SECTION = "environment/base"
-
-LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=249d3578d6bba1bb946148d367a28080"
-
-DEPENDS = "virtual/egl dbus libxcomposite"
-
-PR = "r3"
-
-SRCREV = "86c2dc9ef367b52fd5d05b53cbad5e21b9ab042f"
-
-DEFAULT_PREFERENCE = "-1"
-
-SRC_URI = "git://git.projects.genivi.org/layer_management.git;protocol=git \
-	   file://point-to-internal-CMakeVersions.patch \
-	   file://include-unistd-for-usleep-in-OpenGLES2App.patch \
-	   file://include-unistd-for-alarm-in-example.patch \
-	   file://layermanager.service \
-          "
-# Needed this for imx6 boards to use precompiled EGL libraries
-python () {
-    if ((d.getVar("MACHINE", True) or "").find("imx6") != -1):
-	flags = d.getVar("OECMAKE_CXX_FLAGS", True)
-	flags += " -DLINUX"
-	d.setVar('OECMAKE_CXX_FLAGS', flags)
-}
-
-S = "${WORKDIR}/git"
-
-inherit autotools gettext cmake
-
-do_install_append() {
-    install -d ${D}/${libdir}/systemd/system
-    install -m 0755 ${WORKDIR}/layermanager.service ${D}/${libdir}/systemd/system
-    install -m 0755 ${WORKDIR}/layermanager_demo.service ${D}/${libdir}/systemd/system
-}
-
-FILES_${PN} += "${libdir}/lib* \
-		${libdir}/layermanager/lib* \
-		${libdir}/layermanager/communicator/lib* \
-		${libdir}/layermanager/ipcmodules/lib* \
-		${libdir}/layermanager/renderer/lib* \
-		${libdir}/layermanager/renderer/renderer* \
-		${libdir}/systemd"
-
-FILES_${PN}-dev = "${includedir}/*"
-FILES_${PN}-staticdev += "${libdir}/layermanager/static/lib*"
-FILES_${PN}-dbg += "${libdir}/layermanager/.debug/ \
-		    ${libdir}/layermanager/communicator/.debug/ \
-		    ${libdir}/layermanager/ipcmodules/.debug/ \
-		    ${libdir}/layermanager/renderer/.debug/ "
-
-WARN_QA = "ldflags useless-rpaths rpaths staticdev"
-- 
1.7.9.5


