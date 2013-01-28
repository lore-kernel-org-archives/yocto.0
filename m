Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85026E00724
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 10:02:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r0SI2OmQ011441
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2013 10:02:24 -0800 (PST)
Received: from localhost.localdomain (128.224.171.81) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.328.9; Mon, 28 Jan 2013 10:02:21 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <florin.sarbu@windriver.com>
Date: Mon, 28 Jan 2013 20:01:49 +0200
Message-ID: <1359396110-32411-1-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.171.81]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 1/2] node-startup-controller: Avoid error while reconfigure
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
X-List-Received-Date: Mon, 28 Jan 2013 18:02:22 -0000
Content-Type: text/plain

| DEBUG: Executing shell function do_configure
| mkdir: cannot create directory `m4': File exists

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../node-startup-controller_1.0.1.bb               |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb b/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb
index 396c7ce..f350956 100644
--- a/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb
+++ b/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb
@@ -15,7 +15,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=815ca599c9df247a0c7f619bab123dad"
 # tag 1.0.1 : f109eab4393fcb55ecbb0a21d68436a5057a6b82
 SRC_URI = "git://git.projects.genivi.org/lifecycle/node-startup-controller.git;protocol=git;tag=f109eab4393fcb55ecbb0a21d68436a5057a6b82 \
            file://use-systemd-unit-dir.patch"
-PR = "r2"
+PR = "r3"
 
 DEPENDS = "glib-2.0 dlt-daemon systemd"
 
@@ -23,7 +23,7 @@ S = "${WORKDIR}/git"
 
 inherit autotools gtk-doc systemd
 do_configure_prepend () {
-        mkdir m4
+        mkdir -p m4
 }
 
 PACKAGES =+ "${PN}-nsm-dummy ${PN}-nsm-dummy-dbg"
-- 
1.7.5.4


