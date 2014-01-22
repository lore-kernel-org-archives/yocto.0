Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9092E0089B
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 00:02:43 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0M82ghf022391
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Jan 2014 00:02:43 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Wed, 22 Jan 2014 00:02:42 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Wed, 22 Jan 2014 03:02:38 -0500
Message-ID: <1c2cad724b6fd3a9dd0af2df0a9b229afa5076ac.1390377478.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390377478.git.wenzong.fan@windriver.com>
References: <cover.1390377478.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [meta-selinux][PATCH 1/1] libsemanage: fix DEPENDS override issue
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
X-List-Received-Date: Wed, 22 Jan 2014 08:02:45 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Don't override DEPENDS for target build, the "audit" should be appended
to it.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/libsemanage.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 9424358..5e90c26 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -11,7 +11,7 @@ LICENSE = "LGPLv2.1+"
 inherit lib_package
 
 DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native"
-DEPENDS_class-target += "audit"
+DEPENDS_append_class-target += "audit"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-- 
1.7.9.5


