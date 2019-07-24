Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97DE6E00D53; Wed, 24 Jul 2019 00:58:03 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9479FE00AB4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 00:58:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x6O7w1oF012363
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 24 Jul 2019 00:58:01 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Wed, 24 Jul 2019 00:58:00 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>, <bruce.ashfield@gmail.com>
Date: Wed, 24 Jul 2019 15:57:59 +0800
Message-ID: <1563955079-184310-1-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cloud-services][PATCH] python-dateutil: Remove the bbappend
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
X-List-Received-Date: Wed, 24 Jul 2019 07:58:03 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

The current bbappend only has below logic:
CLEANBROKEN = "1"

For python-dateutil, the distutils class is about to
do a clean via "setup.py clean" as below logic in distutils
class without CLEANBROKE = "1":
distutils_do_configure() {
        if [ "${CLEANBROKEN}" != "1" ] ; then
                NO_FETCH_BUILD=1 \
                ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-native/${PYTHON_PN} setup.py clean ${DISTUTILS_BUILD_ARGS}
        fi
}

But it works for python-dateutil, no need to set
CLEANBROKEN, so remove this bbappend.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-devtools/python/python-dateutil_%.bbappend | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 recipes-devtools/python/python-dateutil_%.bbappend

diff --git a/recipes-devtools/python/python-dateutil_%.bbappend b/recipes-devtools/python/python-dateutil_%.bbappend
deleted file mode 100644
index 68409e5..0000000
--- a/recipes-devtools/python/python-dateutil_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-CLEANBROKEN = "1"
-- 
2.7.4


