Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D0D7E008BF; Wed, 28 Mar 2018 20:23:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D64F1E007F2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 20:23:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w2T3NcKJ007696
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 20:23:38 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Wed, 28 Mar 2018 20:23:37 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 29 Mar 2018 11:20:31 +0800
Message-ID: <20180329032031.23649-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] samhain-server: do not extend to native
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
X-List-Received-Date: Thu, 29 Mar 2018 03:23:40 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

No packages depend on samhain-server-native and it doesn't
make sense to extend a server package to native, so remove
the BBCLASSEXTEND.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/samhain/samhain-server_4.2.2.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/samhain/samhain-server_4.2.2.bb b/recipes-security/samhain/samhain-server_4.2.2.bb
index 67f1ec5..9341d44 100644
--- a/recipes-security/samhain/samhain-server_4.2.2.bb
+++ b/recipes-security/samhain/samhain-server_4.2.2.bb
@@ -18,4 +18,3 @@ do_install_append() {
 }
 
 RDEPENDS_${PN} += "gmp bash perl"
-BBCLASSEXTEND = "native"
-- 
2.11.0


