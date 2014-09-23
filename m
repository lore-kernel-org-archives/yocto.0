Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DBAE00874; Tue, 23 Sep 2014 02:48:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 759AEE00871
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 02:48:42 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,578,1406563200"; d="scan'208";a="36331140"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 23 Sep 2014 17:45:41 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8N9mkS9020488
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 17:48:47 +0800
Received: from localhost.localdomain (10.167.226.75) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 23 Sep 2014 17:48:44 +0800
From: leimaohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 23 Sep 2014 17:48:14 +0800
Message-ID: <1411465696-23378-3-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411465696-23378-1-git-send-email-leimaohui@cn.fujitsu.com>
References: <1411465696-23378-1-git-send-email-leimaohui@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.75]
Subject: [PATCH 3/5] db_6.0.30: modify SPDX_S variable
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
X-List-Received-Date: Tue, 23 Sep 2014 09:48:43 -0000
Content-Type: text/plain

Modify SPDX_S to the source tree of db-6.0.30 instead of ${S}.

Signed-off-by: leimaohui <leimaohui@cn.fujitsu.com>
---
 meta/recipes-support/db/db_6.0.30.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-support/db/db_6.0.30.bb b/meta/recipes-support/db/db_6.0.30.bb
index 9fc4a30..47fb296 100644
--- a/meta/recipes-support/db/db_6.0.30.bb
+++ b/meta/recipes-support/db/db_6.0.30.bb
@@ -42,6 +42,7 @@ PROVIDES += "${VIRTUAL_NAME}"
 # persuades bitbake to go to the right place
 S = "${WORKDIR}/db-${PV}/dist"
 B = "${WORKDIR}/db-${PV}/build_unix"
+SPDX_S = "${WORKDIR}/db-${PV}"
 
 # The executables go in a separate package - typically there
 # is no need to install these unless doing real database
-- 
1.9.1


