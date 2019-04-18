Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2987E00D54; Thu, 18 Apr 2019 01:01:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96FE1E00CC9
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2019 01:01:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x3I80LqH014463
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Apr 2019 01:00:32 -0700
Received: from msp-lpggp1.wrs.com (172.25.34.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 18 Apr 2019 01:00:11 -0700
From: <kai.kang@windriver.com>
To: <joe@deserted.net>
Date: Thu, 18 Apr 2019 04:00:05 -0400
Message-ID: <20190418080005.3325-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190418080005.3325-1-kai.kang@windriver.com>
References: <20190418080005.3325-1-kai.kang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH 1/1] busybox: disable PTEST_BINDIR
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
X-List-Received-Date: Thu, 18 Apr 2019 08:01:03 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

A new feature has been added in oe-core to use update-alternative
mechanism for ptest. But it conflicts with current patch in
meta-selinux. So do not use this new feature for ptest when build with
selinux.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 recipes-core/busybox/busybox_selinux.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
index df7c117..cc83b01 100644
--- a/recipes-core/busybox/busybox_selinux.inc
+++ b/recipes-core/busybox/busybox_selinux.inc
@@ -1,3 +1,5 @@
+PTEST_BINDIR = "0"
+
 FILES_${PN} += "${libdir}/${PN}"
 
 # We should use sh wrappers instead of links so the commands could get correct
-- 
2.20.0


