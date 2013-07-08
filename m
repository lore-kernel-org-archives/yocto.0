Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF0E9E01512
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 08:02:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r68F2R41008980
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 8 Jul 2013 08:02:27 -0700 (PDT)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.342.3; Mon, 8 Jul 2013 08:02:26 -0700
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 8 Jul 2013 18:02:09 +0300
Message-ID: <1373295729-21133-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1373295729-21133-1-git-send-email-andrei.gherzan@windriver.com>
References: <1373295729-21133-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: theodor.gherzan@windriver.com,
	Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 2/2] qt4: Sync recipe's version with upstream
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
X-List-Received-Date: Mon, 08 Jul 2013 15:02:27 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-qt/qt4/qt4-embedded_4.8.4.bbappend |   24 ------------------------
 recipes-qt/qt4/qt4-embedded_4.8.5.bbappend |   24 ++++++++++++++++++++++++
 2 files changed, 24 insertions(+), 24 deletions(-)
 delete mode 100644 recipes-qt/qt4/qt4-embedded_4.8.4.bbappend
 create mode 100644 recipes-qt/qt4/qt4-embedded_4.8.5.bbappend

diff --git a/recipes-qt/qt4/qt4-embedded_4.8.4.bbappend b/recipes-qt/qt4/qt4-embedded_4.8.4.bbappend
deleted file mode 100644
index ac6760e..0000000
--- a/recipes-qt/qt4/qt4-embedded_4.8.4.bbappend
+++ /dev/null
@@ -1,24 +0,0 @@
-PRINC := "${@int(PRINC) + 1}"
-
-OTHER_PACKAGES_ivi = "\
-    ${QT_BASE_NAME}-tools \
-    ${QT_BASE_NAME}-assistant \
-    ${QT_BASE_NAME}-common \
-    ${QT_BASE_NAME}-dbus \
-    ${QT_BASE_NAME}-designer \
-    ${QT_BASE_NAME}-fonts \
-    ${QT_BASE_NAME}-fonts-ttf-vera \
-    ${QT_BASE_NAME}-fonts-ttf-dejavu \
-    ${QT_BASE_NAME}-fonts-pfa \
-    ${QT_BASE_NAME}-fonts-pfb \
-    ${QT_BASE_NAME}-fonts-qpf \
-    ${QT_BASE_NAME}-linguist \
-    ${QT_BASE_NAME}-makeqpf \
-    ${QT_BASE_NAME}-mkspecs \
-    ${QT_BASE_NAME}-pixeltool \
-    ${QT_BASE_NAME}-qmlviewer \
-    ${QT_BASE_NAME}-xmlpatterns \
-    ${QT_BASE_NAME}-qt3to4 \
-    ${QT_BASE_NAME}-qml-plugins"
-
-RRECOMMENDS_${PN} = "${LIB_PACKAGES} ${OTHER_PACKAGES_ivi}"
diff --git a/recipes-qt/qt4/qt4-embedded_4.8.5.bbappend b/recipes-qt/qt4/qt4-embedded_4.8.5.bbappend
new file mode 100644
index 0000000..ac6760e
--- /dev/null
+++ b/recipes-qt/qt4/qt4-embedded_4.8.5.bbappend
@@ -0,0 +1,24 @@
+PRINC := "${@int(PRINC) + 1}"
+
+OTHER_PACKAGES_ivi = "\
+    ${QT_BASE_NAME}-tools \
+    ${QT_BASE_NAME}-assistant \
+    ${QT_BASE_NAME}-common \
+    ${QT_BASE_NAME}-dbus \
+    ${QT_BASE_NAME}-designer \
+    ${QT_BASE_NAME}-fonts \
+    ${QT_BASE_NAME}-fonts-ttf-vera \
+    ${QT_BASE_NAME}-fonts-ttf-dejavu \
+    ${QT_BASE_NAME}-fonts-pfa \
+    ${QT_BASE_NAME}-fonts-pfb \
+    ${QT_BASE_NAME}-fonts-qpf \
+    ${QT_BASE_NAME}-linguist \
+    ${QT_BASE_NAME}-makeqpf \
+    ${QT_BASE_NAME}-mkspecs \
+    ${QT_BASE_NAME}-pixeltool \
+    ${QT_BASE_NAME}-qmlviewer \
+    ${QT_BASE_NAME}-xmlpatterns \
+    ${QT_BASE_NAME}-qt3to4 \
+    ${QT_BASE_NAME}-qml-plugins"
+
+RRECOMMENDS_${PN} = "${LIB_PACKAGES} ${OTHER_PACKAGES_ivi}"
-- 
1.7.9.5


