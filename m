Return-Path: <noor_ahsan@mentor.com>
Received: from gemini.alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B27E3E0151C
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 05:49:07 -0700 (PDT)
Received: from pkl-ahsann-ubuntu.mgc.mentorg.com ([137.202.157.70])
	by gemini.alm.mentorg.com (8.14.4/8.14.4) with ESMTP id r5BCmwvY029904; 
	Tue, 11 Jun 2013 07:48:59 -0500
From: "Noor, Ahsan" <noor_ahsan@mentor.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Date: Tue, 11 Jun 2013 17:48:45 +0500
Message-Id: <1370954925-31952-1-git-send-email-noor_ahsan@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [PATCH V2] dlt-daemon: Fix multiple issues with service files.
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
X-List-Received-Date: Tue, 11 Jun 2013 12:49:08 -0000

From: Noor <noor_ahsan@mentor.com>

* The newly included patch, systemd_service_installation.patch, is required
  because the cmake script in the dlt-daemon package tries to locate the
  systemd units directory on the host. During cross compiling it should not
  see paths on local machine and make decesion based on it. On ubuntu 10.04
  /lib/systemd/system folder does not exist so cross-compiling dlt-deamon
  results in no servie file image folder. So commented the if condition which
  checks the existance of /lib/systemd/system. Genivi issue link dealing with
  this is http://bugs.genivi.org/show_bug.cgi?id=67.
* Created symlinks of dlt.service and dlt-system.servic in basic.target.wants
  folder.
* Set PARALLEL_MAKE to "" as faced some issues when it was set.

Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
---
 .../systemd_service_installation.patch             |   24 ++++++++++++++++++++
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb    |   16 ++++++++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_installation.patch b/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_installation.patch
new file mode 100644
index 0000000..8469a5e
--- /dev/null
+++ b/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_installation.patch
@@ -0,0 +1,24 @@
+--- git/systemd/CMakeLists_old.txt	2013-03-12 16:53:37.052664326 +0500
++++ git/systemd/CMakeLists.txt	2013-03-12 16:53:57.052896347 +0500
+@@ -46,15 +46,15 @@ if(WITH_SYSTEMD)
+     message(STATUS "DLT adaptor udp configuration: APPID=${DLT_ADAPTOR_UDP_APPID} CTID=${DLT_ADAPTOR_UDP_CTID} PORT=${DLT_ADAPTOR_UDP_PORT}" )
+     
+     
+-    if(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
++    #if(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt.service DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-system.service DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-receive.service DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-example-user.service DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-adaptor-udp.service DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         message(STATUS "Unit files will be installed to ${SYSTEMD_CONFIGURATIONS_FILES_DIR} after make install" )
+-    else(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
+-        message(STATUS "Unit files will not be installed to ${SYSTEMD_CONFIGURATIONS_FILES_DIR} after make install")
+-    endif(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
++    #else(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
++    #    message(STATUS "Unit files will not be installed to ${SYSTEMD_CONFIGURATIONS_FILES_DIR} after make install")
++    #endif(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
+      
+-endif(WITH_SYSTEMD)
+\ No newline at end of file
++endif(WITH_SYSTEMD)
diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
index 9cdbfc0..82b46eb 100644
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
@@ -19,7 +19,9 @@ LICENSE = "MPLv2"
 LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=99ba60c3fad7eaf8c56bca6dd75cba09 \
 		    file://MPL.txt;md5=ccdb2761cef70c8b2612624c323f89dc"
 
-SRC_URI = "git://git.projects.genivi.org/${PN}.git;protocol=git;tag=v${PV}"
+SRC_URI = "git://git.projects.genivi.org/${PN}.git;protocol=git;tag=v${PV} \
+           file://systemd_service_installation.patch \
+          "
 
 S = "${WORKDIR}/git"
 
@@ -31,3 +33,15 @@ FILES_${PN}-systemd += "${systemd_unitdir}/system/"
 PACKAGES =+ "${PN}-systemd"
 
 EXTRA_OECMAKE = "-DWITH_SYSTEMD=ON"
+
+PARALLEL_MAKE = ""
+
+do_install_append() {
+    # Remove "User=genivi" option from systemd service files, as we want this to go to default setting
+    sed -i '/User/d' ${D}/${systemd_unitdir}/system/*.service
+
+    # Install the required systemd services links        
+    install -d ${D}${base_libdir}/systemd/system/basic.target.wants
+    ln -sf ../dlt.service ${D}${base_libdir}/systemd/system/basic.target.wants/dlt.service
+    ln -sf ../dlt-system.service ${D}${base_libdir}/systemd/system/basic.target.wants/dlt-system.service
+}
-- 
1.7.9.5


