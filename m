Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BF64E00853; Tue, 23 Sep 2014 02:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6D7E00853
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 02:48:31 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,578,1406563200"; d="scan'208";a="36331122"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 23 Sep 2014 17:45:29 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8N9mYtY020472
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 17:48:34 +0800
Received: from localhost.localdomain (10.167.226.75) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 23 Sep 2014 17:48:31 +0800
From: leimaohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 23 Sep 2014 17:48:12 +0800
Message-ID: <1411465696-23378-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.75]
Subject: [PATCH 1/5] spdx.bbclass:Add SPDX-specific source tree variable.
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
X-List-Received-Date: Tue, 23 Sep 2014 09:48:40 -0000
Content-Type: text/plain

Add SPDX-specific source tree variable for recipes where $S is a subdirectory of the source tree.

Signed-off-by: leimaohui <leimaohui@cn.fujitsu.com>
---
 meta/classes/spdx.bbclass | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta/classes/spdx.bbclass b/meta/classes/spdx.bbclass
index 55ce3af..27169f0 100644
--- a/meta/classes/spdx.bbclass
+++ b/meta/classes/spdx.bbclass
@@ -18,13 +18,15 @@
 SPDXOUTPUTDIR = "${WORKDIR}/spdx_output_dir"
 SPDXSSTATEDIR = "${WORKDIR}/spdx_sstate_dir"
 
+SPDX_S ?= "${S}"
+
 python do_spdx () {
     import os, sys
     import json
 
     info = {} 
     info['workdir'] = (d.getVar('WORKDIR', True) or "")
-    info['sourcedir'] = (d.getVar('S', True) or "")
+    info['sourcedir'] = (d.getVar('SPDX_S', True) or "")
     info['pn'] = (d.getVar( 'PN', True ) or "")
     info['pv'] = (d.getVar( 'PV', True ) or "")
     info['src_uri'] = (d.getVar( 'SRC_URI', True ) or "")
-- 
1.9.1


