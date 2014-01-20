Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6597FE003D8
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 01:27:17 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0K9RGHE026191
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 01:27:16 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 01:27:16 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 20 Jan 2014 04:27:09 -0500
Message-ID: <9d61817cf6c2624063c5a4e797c08f65029b9952.1390206438.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390206438.git.wenzong.fan@windriver.com>
References: <cover.1390206438.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [PATCH 2/2] libselinux: migrate SRC_URI to 2.2.2
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
X-List-Received-Date: Mon, 20 Jan 2014 09:27:18 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../{libselinux_2.2.bb => libselinux_2.2.2.bb}     |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/selinux/{libselinux_2.2.bb => libselinux_2.2.2.bb} (74%)

diff --git a/recipes-security/selinux/libselinux_2.2.bb b/recipes-security/selinux/libselinux_2.2.2.bb
similarity index 74%
rename from recipes-security/selinux/libselinux_2.2.bb
rename to recipes-security/selinux/libselinux_2.2.2.bb
index 23bb9cb..d0a4e2e 100644
--- a/recipes-security/selinux/libselinux_2.2.bb
+++ b/recipes-security/selinux/libselinux_2.2.2.bb
@@ -5,8 +5,8 @@ include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "d82beab880749a017f2737e6687fec30"
-SRC_URI[sha256sum] = "e9dc64216543a7283d786f623ac28e8867f8794138e7deba474a3aa8d02dce33"
+SRC_URI[md5sum] = "55026eb4654c4f732a27c191b39bebaf"
+SRC_URI[sha256sum] = "30ab363416806da907b86b97f1d31c252473e3200358bb1570f563c8312b5a3e"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
-- 
1.7.9.5


