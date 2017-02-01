Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDEE6E009DF; Wed,  1 Feb 2017 07:43:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7E24E009CD
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 07:43:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v11FhOa2001818
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 1 Feb 2017 07:43:24 -0800
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Wed, 1 Feb 2017 07:43:23 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 1 Feb 2017 10:43:19 -0500
Message-ID: <42fc1fa90c3845394bb962797f164b9a5df6095d.1485963487.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1485963487.git.bruce.ashfield@windriver.com>
References: <cover.1485963487.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/2] yocto-bsps: add 4.9 bbappend
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
X-List-Received-Date: Wed, 01 Feb 2017 15:43:39 -0000
Content-Type: text/plain

Introduce a 4.9 bbappend for the h/w reference BSPs. Since 4.8 will
be removed, we need to have this file in place.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_4.9.bbappend  | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
new file mode 100644
index 000000000000..6a0493070065
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -0,0 +1,26 @@
+KBRANCH_genericx86  = "standard/base"
+KBRANCH_genericx86-64  = "standard/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
+
+SRCREV_machine_genericx86    ?= "021b4aef55b44597587a1ce5879be642b3dca155"
+SRCREV_machine_genericx86-64 ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
+SRCREV_machine_edgerouter ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
+SRCREV_machine_beaglebone ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
+SRCREV_machine_mpc8315e-rdb ?= "b4a4ce5c575d3673dcb4a6922285a78868539fb2"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+
+LINUX_VERSION_genericx86 = "4.9.6"
+LINUX_VERSION_genericx86-64 = "4.9.6"
+LINUX_VERSION_edgerouter = "4.9.6"
+LINUX_VERSION_beaglebone = "4.9.6"
+LINUX_VERSION_mpc8315e-rdb = "4.9.6"
-- 
2.5.0


