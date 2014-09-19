Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57019E0076C; Fri, 19 Sep 2014 04:03:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C17CE006EF
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 04:03:26 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,554,1406563200"; d="scan'208";a="36180153"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Sep 2014 19:00:23 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8JB3Sk1028391
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 19:03:28 +0800
Received: from localhost.localdomain (10.167.226.75) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 19 Sep 2014 19:03:27 +0800
From: leimaohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 19 Sep 2014 19:03:18 +0800
Message-ID: <1411124599-6843-1-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.75]
Subject: [PATCH 1/2] spdx:It is necessary to define source directory for spdx.
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
X-List-Received-Date: Fri, 19 Sep 2014 11:03:38 -0000
Content-Type: text/plain

To make sure that when S directory is changed, the spdx info of the package will not miss.

Signed-off-by: leimaohui <leimaohui@cn.fujitsu.com>
---
 meta/classes/spdx.bbclass | 2 +-
 meta/conf/bitbake.conf    | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/classes/spdx.bbclass b/meta/classes/spdx.bbclass
index 55ce3af..aeac04c 100644
--- a/meta/classes/spdx.bbclass
+++ b/meta/classes/spdx.bbclass
@@ -24,7 +24,7 @@ python do_spdx () {
 
     info = {} 
     info['workdir'] = (d.getVar('WORKDIR', True) or "")
-    info['sourcedir'] = (d.getVar('S', True) or "")
+    info['sourcedir'] = (d.getVar('SPDX_S', True) or "")
     info['pn'] = (d.getVar( 'PN', True ) or "")
     info['pv'] = (d.getVar( 'PV', True ) or "")
     info['src_uri'] = (d.getVar( 'SRC_URI', True ) or "")
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 468b175..b35c0cd 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -340,6 +340,7 @@ T = "${WORKDIR}/temp"
 D = "${WORKDIR}/image"
 S = "${WORKDIR}/${BP}"
 B = "${S}"
+SPDX_S = "${S}"
 
 STAGING_DIR = "${TMPDIR}/sysroots"
 
-- 
1.9.1


