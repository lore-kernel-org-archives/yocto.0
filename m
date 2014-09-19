Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 591CAE00769; Fri, 19 Sep 2014 04:03:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE1FFE0074B
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 04:03:36 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,554,1406563200"; d="scan'208";a="36180159"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Sep 2014 19:00:25 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8JB3V16028396
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 19:03:31 +0800
Received: from localhost.localdomain (10.167.226.75) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 19 Sep 2014 19:03:30 +0800
From: leimaohui <leimaohui@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 19 Sep 2014 19:03:19 +0800
Message-ID: <1411124599-6843-2-git-send-email-leimaohui@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1411124599-6843-1-git-send-email-leimaohui@cn.fujitsu.com>
References: <1411124599-6843-1-git-send-email-leimaohui@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.75]
Subject: [PATCH 2/2] spdx:Correct SPDX_S directory.
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

Otherwise,the license info of the db-6.0.30 will miss.

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


