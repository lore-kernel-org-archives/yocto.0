Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B6ABE00C49; Wed,  3 Apr 2019 01:55:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F4FBE00C1E
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 01:55:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x338tGuk016262
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 3 Apr 2019 01:55:16 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Wed, 3 Apr 2019 01:55:16 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 3 Apr 2019 16:55:14 +0800
Message-ID: <1554281714-333089-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][PATCH] samhain: hash fix for aarch64 and mips64
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
X-List-Received-Date: Wed, 03 Apr 2019 08:55:18 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

samhain fails on both aarch64 and mips64 targets with:
| samhain[3013]: FATAL: x_dnmalloc.c: 2790: hashval < AMOUNTHASH

Though there is already a patch samhain-mips64-aarch64-dnmalloc-hash-fix.patch
to fix this issue, the logic is incomplete and
pass -DCONFIG_ARCH_MIPS64=1 and -DCONFIG_ARCH_AARCH64=1
during do_configure phase respectively to fix the
issue.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-security/samhain/samhain.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index dcd72b9..90da813 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -97,6 +97,11 @@ EOF
 
 do_configure () {
 	autoconf -f
+	if [ "${TARGET_ARCH}" = "mips64" ]; then
+	    export CFLAGS="${CFLAGS} -DCONFIG_ARCH_MIPS64=1"
+	elif [ "${TARGET_ARCH}" = "aarch64" ]; then
+	    export CFLAGS="${CFLAGS} -DCONFIG_ARCH_AARCH64=1"
+	fi
 	./configure \
 	--build=${BUILD_SYS} \
 	--host=${HOST_SYS} \
-- 
2.7.4


