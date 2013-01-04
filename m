Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01B09E0142C
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 04:07:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r04C7Bsp016876
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 4 Jan 2013 04:07:11 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Fri, 4 Jan 2013 04:07:11 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <holger.behrens@windriver.com>, <florin.sarbu@windriver.com>
Date: Fri, 4 Jan 2013 14:07:21 +0200
Message-ID: <1357301242-22113-4-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1357301242-22113-1-git-send-email-andrei.gherzan@windriver.com>
References: <1357301242-22113-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: yocto@yoctoproject.org, Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 4/4] node-startup-controller: Use public repository
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
X-List-Received-Date: Fri, 04 Jan 2013 12:07:12 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../node-startup-controller_1.0.1.bb               |    4 ++--
 .../node-startup-controller_git.bb                 |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb b/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb
index 814760e..396c7ce 100644
--- a/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb
+++ b/recipes-extended/node-startup-controller/node-startup-controller_1.0.1.bb
@@ -13,9 +13,9 @@ LICENSE = "MPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=815ca599c9df247a0c7f619bab123dad"
 
 # tag 1.0.1 : f109eab4393fcb55ecbb0a21d68436a5057a6b82
-SRC_URI = "git://git.genivi.org/srv/git/${PN};protocol=git;tag=f109eab4393fcb55ecbb0a21d68436a5057a6b82 \
+SRC_URI = "git://git.projects.genivi.org/lifecycle/node-startup-controller.git;protocol=git;tag=f109eab4393fcb55ecbb0a21d68436a5057a6b82 \
            file://use-systemd-unit-dir.patch"
-PR = "r1"
+PR = "r2"
 
 DEPENDS = "glib-2.0 dlt-daemon systemd"
 
diff --git a/recipes-extended/node-startup-controller/node-startup-controller_git.bb b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
index 9c02572..0d3b90c 100644
--- a/recipes-extended/node-startup-controller/node-startup-controller_git.bb
+++ b/recipes-extended/node-startup-controller/node-startup-controller_git.bb
@@ -14,11 +14,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=815ca599c9df247a0c7f619bab123dad"
 
 SRCREV = "958e5ab2bc93ac0d885ca75f4f33988cbdd3e758"
 PV = "1.0.0+git${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 DEFAULT_PREFERENCE = "-1"
 
-SRC_URI = "git://git.genivi.org/srv/git/${PN};protocol=git"
+SRC_URI = "git://git.projects.genivi.org/lifecycle/node-startup-controller.git;protocol=git"
 
 DEPENDS = "glib-2.0 dlt-daemon systemd"
 
-- 
1.7.9.5


