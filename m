Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E26DE0145A
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 03:55:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r06Bt0gk027360
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 03:55:00 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Sun, 6 Jan 2013 03:55:00 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Sun, 6 Jan 2013 13:54:48 +0200
Message-ID: <1357473302-19235-9-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 09/23] portmap: Minor file reformatting
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
X-List-Received-Date: Sun, 06 Jan 2013 11:55:00 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 recipes-connectivity/portmap/portmap_6.0.bbappend |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/recipes-connectivity/portmap/portmap_6.0.bbappend b/recipes-connectivity/portmap/portmap_6.0.bbappend
index ea1a1c8..515e9ee 100644
--- a/recipes-connectivity/portmap/portmap_6.0.bbappend
+++ b/recipes-connectivity/portmap/portmap_6.0.bbappend
@@ -1,6 +1,6 @@
-PRINC = "3"
+PRINC := "${@int(PRINC) + 3}"
 
-# Find local "files" and "${PN}" directory
+# Find local ${PN} directory
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
 inherit systemd
@@ -9,8 +9,9 @@ SYSTEMD_PACKAGES = "${PN}-systemd"
 SYSTEMD_SERVICE = "portmap.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
-SRC_URI_append = " file://portmap.service \
-                 "
+SRC_URI_append = " \
+    file://portmap.service \
+    "
 
 INITSCRIPT_NAME = ""
 INITSCRIPT_PARAMS = ""
-- 
1.7.9.5


