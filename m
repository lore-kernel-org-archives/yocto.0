Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C4DDE00E1C; Tue, 16 Aug 2016 01:35:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA382E00D45
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 01:35:23 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u7G8ZM7j014281
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 01:35:22 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Tue, 16 Aug 2016 01:35:21 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Tue, 16 Aug 2016 16:34:20 +0800
Message-ID: <20160816083420.16088-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-virtualization][PATCH] libvirt: remove qemu from PACKAGECONFIG
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
X-List-Received-Date: Tue, 16 Aug 2016 08:35:25 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

qemu is not compatible with mips64, so remove 'qemu' which causes
libvirt depends on package qemu from PACKAGECONFIG for mips64.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-extended/libvirt/libvirt_1.3.5.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-extended/libvirt/libvirt_1.3.5.bb b/recipes-extended/libvirt/libvirt_1.3.5.bb
index 6222b69..68e0885 100644
--- a/recipes-extended/libvirt/libvirt_1.3.5.bb
+++ b/recipes-extended/libvirt/libvirt_1.3.5.bb
@@ -173,6 +173,9 @@ PACKAGECONFIG ??= "qemu yajl uml openvz vmware vbox esx iproute2 lxc test \
                    ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'polkit', '', d)} \
                   "
 
+# qemu is NOT compatible with mips64
+PACKAGECONFIG_remove_class-target_mips64 = "qemu"
+
 # enable,disable,depends,rdepends
 #
 PACKAGECONFIG[qemu] = "--with-qemu,--without-qemu,qemu,"
-- 
2.9.3


