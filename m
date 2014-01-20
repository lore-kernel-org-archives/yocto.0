Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15083E003D8
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 01:27:15 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0K9REd6015625
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 01:27:14 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 01:27:14 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 20 Jan 2014 04:27:08 -0500
Message-ID: <e248ab13a3fd368d93862e48565441c3d7c5753c.1390206438.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390206438.git.wenzong.fan@windriver.com>
References: <cover.1390206438.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [PATCH 1/2] selinux: remove PREFERRED_VERSION configs
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
X-List-Received-Date: Mon, 20 Jan 2014 09:27:19 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/selinux_20131030.inc |    7 -------
 1 file changed, 7 deletions(-)

diff --git a/recipes-security/selinux/selinux_20131030.inc b/recipes-security/selinux/selinux_20131030.inc
index 807a37c..2cb35d5 100644
--- a/recipes-security/selinux/selinux_20131030.inc
+++ b/recipes-security/selinux/selinux_20131030.inc
@@ -2,11 +2,4 @@ SELINUX_RELEASE = "20131030"
 
 SRC_URI = "http://userspace.selinuxproject.org/releases/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
 
-PREFERRED_VERSION_checkpolicy = "2.2"
-PREFERRED_VERSION_libselinux = "2.2"
-PREFERRED_VERSION_libsemanage = "2.2"
-PREFERRED_VERSION_libsepol = "2.2"
-PREFERRED_VERSION_policycoreutils = "2.2.5"
-PREFERRED_VERSION_sepolgen = "1.2.1"
-
 include selinux_common.inc
-- 
1.7.9.5


