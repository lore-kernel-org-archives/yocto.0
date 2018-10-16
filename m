Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59F55E00A9B; Mon, 15 Oct 2018 19:27:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 021F9E00A16
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 19:27:17 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9G2QvMY014467
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 19:27:07 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.408.0; Mon, 15 Oct 2018 19:26:34 -0700
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 16 Oct 2018 09:45:19 +0800
Message-ID: <20181016014519.9084-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Subject: [meta-virtualization][PATCH] libvirt: remove qemu from PACKAGECONFIG for mips n32 and n64
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
X-List-Received-Date: Tue, 16 Oct 2018 02:27:18 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

PACKAGECONFIG 'qemu' causes libvirt depends on package qemu. But qemu
is not compatible with mips n32 and n64. So remove 'qemu' from
PACKAGECONFIG for mips n32 and n64.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-extended/libvirt/libvirt_4.7.0.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-extended/libvirt/libvirt_4.7.0.bb b/recipes-extended/libvirt/libvirt_4.7.0.bb
index 47275ae..a1175f5 100644
--- a/recipes-extended/libvirt/libvirt_4.7.0.bb
+++ b/recipes-extended/libvirt/libvirt_4.7.0.bb
@@ -186,6 +186,10 @@ PACKAGECONFIG ??= "qemu yajl uml openvz vmware vbox esx iproute2 lxc test \
                    ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'polkit', '', d)} \
                   "
 
+# qemu is NOT compatible with mips64
+PACKAGECONFIG_remove_mipsarchn32 = "qemu"
+PACKAGECONFIG_remove_mipsarchn64 = "qemu"
+
 # enable,disable,depends,rdepends
 #
 PACKAGECONFIG[qemu] = "--with-qemu,--without-qemu,qemu,"
-- 
2.19.0.rc2


