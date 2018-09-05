Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DB91E00BD2; Tue,  4 Sep 2018 17:19:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A622E00BB7
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:19:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w850JKKS017443
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:19:20 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:19:18 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:26 +0800
Message-ID: <1536106707-30781-16-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 15/16] packagegroup-selinux-policycoreutils: remove semodule-utils-semodule-deps
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
X-List-Received-Date: Wed, 05 Sep 2018 00:19:29 -0000
Content-Type: text/plain

Remove package semodule-utils-semodule-deps as it had been removed
upstream.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
index e70baf7..2263592 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-policycoreutils.bb
@@ -20,7 +20,6 @@ RDEPENDS_${PN} = "\
 	policycoreutils-setfiles \
 	policycoreutils-setsebool \
 	policycoreutils-hll \
-	semodule-utils-semodule-deps \
 	semodule-utils-semodule-expand \
 	semodule-utils-semodule-link \
 	semodule-utils-semodule-package \
-- 
2.7.4


