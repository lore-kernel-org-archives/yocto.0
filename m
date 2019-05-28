Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C068E00D38; Mon, 27 May 2019 19:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 024B0E00D31
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 19:37:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x4S2bvIx000338
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 19:37:57 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Mon, 27 May 2019 19:37:56 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 28 May 2019 10:37:55 +0800
Message-ID: <1559011075-69802-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [PATCH] samhain: add rconflict for client and server mode
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
X-List-Received-Date: Tue, 28 May 2019 02:37:58 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-ids/samhain/samhain-client_4.3.2.bb | 1 +
 recipes-ids/samhain/samhain-server_4.3.2.bb | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-ids/samhain/samhain-client_4.3.2.bb b/recipes-ids/samhain/samhain-client_4.3.2.bb
index 812408e..0f53a8c 100644
--- a/recipes-ids/samhain/samhain-client_4.3.2.bb
+++ b/recipes-ids/samhain/samhain-client_4.3.2.bb
@@ -9,3 +9,4 @@ EXTRA_OECONF += " \
         "
 
 RDEPENDS_${PN} = "acl zlib attr bash"
+RCONFLICTS_${PN} = "samhain-standalone"
diff --git a/recipes-ids/samhain/samhain-server_4.3.2.bb b/recipes-ids/samhain/samhain-server_4.3.2.bb
index 9341d44..d304912 100644
--- a/recipes-ids/samhain/samhain-server_4.3.2.bb
+++ b/recipes-ids/samhain/samhain-server_4.3.2.bb
@@ -18,3 +18,4 @@ do_install_append() {
 }
 
 RDEPENDS_${PN} += "gmp bash perl"
+RCONFLICTS_${PN} = "samhain-standalone"
-- 
2.7.4


