Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A63E7E00D71; Mon,  9 Oct 2017 20:32:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60C4BE00D23
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 20:32:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v9A3W3Qg012272
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 9 Oct 2017 20:32:03 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Mon, 9 Oct 2017 20:32:02 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Oct 2017 11:30:45 +0800
Message-ID: <22dce152bf87dfcd65f1ec6461e3a9cede222248.1507606063.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1507606063.git.jackie.huang@windriver.com>
References: <cover.1507606063.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/2] cgl-common.inc: append SRC_URI for poky-cgl only
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
X-List-Received-Date: Tue, 10 Oct 2017 03:32:07 -0000
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
index 52cf773..362a7c4 100644
--- a/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
+++ b/meta-cgl-common/recipes-kernel/linux/cgl-common.inc
@@ -1,6 +1,6 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
-SRC_URI += "file://cfg/00001-systemtap.cfg \
+SRC_URI_append_poky-cgl = "file://cfg/00001-systemtap.cfg \
             file://cfg/00002-oprofile.cfg \
             file://cfg/00003-lttng.cfg \
             file://cfg/00004-kgdb.cfg \
-- 
2.11.0


