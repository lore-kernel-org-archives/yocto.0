Return-Path: <yaoxp@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54D61E00B6C; Sun,  8 Jun 2014 21:33:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Sun, 08 Jun 2014 21:32:59 PDT
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6051E00A44
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 21:32:59 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.98,1001,1392134400"; d="scan'208";a="31635194"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 09 Jun 2014 12:29:06 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s594Vhal031417
	for <yocto@yoctoproject.org>; Mon, 9 Jun 2014 12:31:43 +0800
Received: from FEDORA20.fnst.cn.fujitsu.com (10.167.226.101) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 9 Jun 2014 12:31:44 +0800
From: Yao Xinpan <yaoxp@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 9 Jun 2014 12:31:34 +0800
Message-ID: <1402288294-19549-1-git-send-email-yaoxp@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.4.2
MIME-Version: 1.0
X-Originating-IP: [10.167.226.101]
Subject: [PATCH] add license file: DMTF
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
X-List-Received-Date: Mon, 09 Jun 2014 04:33:03 -0000
Content-Type: text/plain

hi all
I want to add software which associates with DMTF into rootfs.
There is WARNING as follows when build:
"WARNING: cim-schema: No generic license file exists for: DMTF in any provider"

Could add license DMTF into yocto?

Signed-off-by: Yao Xinpan <yaoxp@cn.fujitsu.com>
---
 meta/files/common-licenses/DMTF | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 meta/files/common-licenses/DMTF

diff --git a/meta/files/common-licenses/DMTF b/meta/files/common-licenses/DMTF
new file mode 100644
index 0000000..54a2812
--- /dev/null
+++ b/meta/files/common-licenses/DMTF
@@ -0,0 +1,34 @@
+// Copyright 1998-2008 Distributed Management Task Force, Inc. (DMTF).
+// All rights reserved.
+// DMTF is a not-for-profit association of industry members dedicated
+// to promoting enterprise and systems management and interoperability.
+// DMTF specifications and documents may be reproduced by
+// members and non-members, provided that correct attribution is given.
+// As DMTF specifications may be revised from time to time,
+// the particular version and release date should always be noted.
+// 
+// Implementation of certain elements of this standard or proposed
+// standard may be subject to third party patent rights, including
+// provisional patent rights (herein "patent rights"). DMTF makes
+// no representations to users of the standard as to the existence
+// of such rights, and is not responsible to recognize, disclose, or
+// identify any or all such third party patent right, owners or
+// claimants, nor for any incomplete or inaccurate identification or
+// disclosure of such rights, owners or claimants. DMTF shall have no
+// liability to any party, in any manner or circumstance, under any
+// legal theory whatsoever, for failure to recognize, disclose, or
+// identify any such third party patent rights, or for such party's
+// reliance on the standard or incorporation thereof in its product,
+// protocols or testing procedures. DMTF shall have no liability to
+// any party implementing such standard, whether such implementation
+// is foreseeable or not, nor to any patent owner or claimant, and shall
+// have no liability or responsibility for costs or losses incurred if
+// a standard is withdrawn or modified after publication, and shall be
+// indemnified and held harmless by any party implementing the
+// standard from any and all claims of infringement by a patent owner
+// for such implementations.
+// 
+// For information about patents held by third-parties which have
+// notified the DMTF that, in their opinion, such patent may relate to
+// or impact implementations of DMTF standards, visit
+// http://www.dmtf.org/about/policies/disclosures.php.
-- 
1.8.4.2


