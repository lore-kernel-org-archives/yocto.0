Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A6BE008E3
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 17:38:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s091cX2r002871
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Jan 2014 17:38:33 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Wed, 8 Jan 2014 17:38:33 -0800
From: <wenzong.fan@windriver.com>
To: <xin.ouyang@windriver.com>, <mark.hatle@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 8 Jan 2014 20:38:14 -0500
Message-ID: <90faa89a7285955ffbfef7ef3dd1c09204d4599a.1389171235.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1389171235.git.wenzong.fan@windriver.com>
References: <cover.1389171235.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 09/10] policycoreutils: fix QA issues
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
X-List-Received-Date: Thu, 09 Jan 2014 01:38:34 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

ERROR: QA Issue: policycoreutils: Files/directories were installed \
but not shipped
  /usr/share/icons/hicolor/24x24/apps/system-config-selinux.png
  /usr/share/bash-completion/completions/setsebool
  /usr/share/bash-completion/completions/sepolicy
  /usr/share/bash-completion/completions/semanage
  /usr/share/dbus-1/system-services/org.selinux.service
  /usr/share/polkit-1/actions/org.selinux.config.policy
  /usr/share/polkit-1/actions/org.selinux.policy

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 430b03f..56470e9 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -176,7 +176,7 @@ FILES_${PN}-sandbox += "\
 FILES_${PN}-secon += "${bindir}/secon"
 FILES_${PN}-semanage = "\
 	${sbindir}/semanage \
-	${sysconfdir}/bash_completion.d/semanage-bash-completion.sh \
+	${datadir}/bash-completion/completions/semanage \
 "
 FILES_${PN}-semodule += "${sbindir}/semodule"
 FILES_${PN}-semodule-deps += "${bindir}/semodule_deps"
@@ -188,7 +188,9 @@ FILES_${PN}-semodule-package += "\
 "
 FILES_${PN}-sepolicy += "\
 	${bindir}/sepolicy \
-	${sysconfdir}/bash_completion.d/sepolicy-bash-completion.sh \
+	${datadir}/bash-completion/completions/sepolicy \
+	${datadir}/dbus-1/system-services/org.selinux.service \
+	${datadir}/polkit-1/actions/org.selinux.policy \
 "
 FILES_${PN}-sepolgen-ifgen += "\
 	${bindir}/sepolgen-ifgen \
@@ -204,11 +206,13 @@ FILES_${PN}-setfiles += "\
 "
 FILES_${PN}-setsebool += "\
 	${sbindir}/setsebool \
-	${sysconfdir}/bash_completion.d/setsebool-bash-completion.sh \
+	${datadir}/bash-completion/completions/setsebool \
 "
 FILES_system-config-selinux = " \
     ${bindir}/sepolgen \
     ${datadir}/system-config-selinux/* \
+    ${datadir}/icons/hicolor/24x24/apps/system-config-selinux.png \
+    ${datadir}/polkit-1/actions/org.selinux.config.policy \
 "
 
 export STAGING_INCDIR
-- 
1.7.9.5


