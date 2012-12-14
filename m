Return-Path: <Andrei.Gherzan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F507E0034C
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:51:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qBEJp9AR027205
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:51:09 -0800 (PST)
Received: from localhost.localdomain (128.224.170.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Fri, 14 Dec 2012 11:51:09 -0800
From: Andrei Gherzan <andrei.gherzan@windriver.com>
To: <yocto@yoctoproject.org>, <florin.sarbu@windriver.com>,
	<holger.behrens@windriver.com>
Date: Fri, 14 Dec 2012 21:50:57 +0200
Message-ID: <1355514657-7502-2-git-send-email-andrei.gherzan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1355514657-7502-1-git-send-email-andrei.gherzan@windriver.com>
References: <1355514657-7502-1-git-send-email-andrei.gherzan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.170.79]
Cc: Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: [meta-ivi][PATCH 2/2] layer-management: Replace dependency of libgl with egl
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
X-List-Received-Date: Fri, 14 Dec 2012 19:51:09 -0000
Content-Type: text/plain

Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
---
 .../layer-management/layer-management_0.9.9.bb     |    4 ++--
 .../layer-management/layer-management_git.bb       |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-graphics/layer-management/layer-management_0.9.9.bb b/recipes-graphics/layer-management/layer-management_0.9.9.bb
index eb6ceaf..81b8fd0 100644
--- a/recipes-graphics/layer-management/layer-management_0.9.9.bb
+++ b/recipes-graphics/layer-management/layer-management_0.9.9.bb
@@ -5,9 +5,9 @@ SECTION = "environment/base"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=071e6b9a5eb9fc5868edf57ce153e5b9"
 
-DEPENDS = "virtual/libgl dbus libxcomposite"
+DEPENDS = "virtual/egl dbus libxcomposite"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = " \
 	git://git.projects.genivi.org/layer_management.git;protocol=git;tag=ivi-layer-management_version_0_9_9 \
diff --git a/recipes-graphics/layer-management/layer-management_git.bb b/recipes-graphics/layer-management/layer-management_git.bb
index 7be26c1..9af452d 100644
--- a/recipes-graphics/layer-management/layer-management_git.bb
+++ b/recipes-graphics/layer-management/layer-management_git.bb
@@ -6,9 +6,9 @@ SECTION = "environment/base"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=249d3578d6bba1bb946148d367a28080"
 
-DEPENDS = "virtual/libgl dbus libxcomposite"
+DEPENDS = "virtual/egl dbus libxcomposite"
 
-PR = "r2"
+PR = "r3"
 
 SRCREV = "86c2dc9ef367b52fd5d05b53cbad5e21b9ab042f"
 
-- 
1.7.9.5


