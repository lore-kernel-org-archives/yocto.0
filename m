Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5C91E00CC1; Wed, 11 Oct 2017 19:13:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79D5E00CB6
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 19:13:50 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v9C2DnK4027290
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 19:13:50 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 11 Oct 2017 19:13:49 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 12 Oct 2017 10:12:30 +0800
Message-ID: <1d7f8653c4fe524b022f2a8bf6ae5bae123f0ba4.1507774123.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1507774123.git.jackie.huang@windriver.com>
References: <cover.1507774123.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/2 v2] cgl-common.inc: append SRC_URI for poky-cgl only
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
X-List-Received-Date: Thu, 12 Oct 2017 02:13:52 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Someone may want to add meta-cgl-common layer into their
distro and only use some of the packages, but these kernel
features will be also added by the bbappend and may cause
unexpected issue, so change to append the SRC_URI for poky-cgl
distro only.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 meta-cgl-common/recipes-kernel/linux/cgl-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
index 52cf773..1c93d7d 100644
--- a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
+++ b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
-SRC_URI += "file://cfg/00001-systemtap.cfg \
+SRC_URI_append_poky-cgl = " file://cfg/00001-systemtap.cfg \
             file://cfg/00002-oprofile.cfg \
             file://cfg/00003-lttng.cfg \
             file://cfg/00004-kgdb.cfg \
-- 
2.11.0


