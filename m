Return-Path: <zangrc.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93CF9E00C78; Mon, 10 Jun 2019 00:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8B31E00C6F
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 00:23:22 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.63,572,1557158400"; d="scan'208";a="66720354"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 10 Jun 2019 15:23:12 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id DCA754CDD973
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 15:23:10 +0800 (CST)
Received: from localhost.localdomain (10.167.226.46) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Mon, 10 Jun 2019 15:23:12 +0800
From: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Jun 2019 15:24:22 +0800
Message-ID: <20190610072424.14779-2-zangrc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610072424.14779-1-zangrc.fnst@cn.fujitsu.com>
References: <20190610072424.14779-1-zangrc.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.46]
X-yoursite-MailScanner-ID: DCA754CDD973.A91EA
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zangrc.fnst@cn.fujitsu.com
Subject: [meta-security][master][warrior][PATCH 1/3] python-scapy: Remove redundant sed operations
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
X-List-Received-Date: Mon, 10 Jun 2019 07:23:25 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

-Remove redundant sed operations.

Signed-off-by: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
---
 recipes-security/scapy/python-scapy.inc | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-security/scapy/python-scapy.inc
index 99f30a7..baa69b2 100644
--- a/recipes-security/scapy/python-scapy.inc
+++ b/recipes-security/scapy/python-scapy.inc
@@ -12,13 +12,6 @@ SRC_URI = "git://github.com/secdev/scapy.git"
 
 inherit ptest
 
-do_install_append() {
-    if [ "${PYTHON_PN}" = "python3" ]; then
-        sed -i -e 's/python/python3/' ${D}${bindir}/scapy
-        sed -i -e 's/python/python3/' ${D}${bindir}/UTscapy
-    fi
-}
-
 do_install_ptest() {
     install -m 0644 ${S}/test/regression.uts ${D}${PTEST_PATH}
     sed -i 's,@PTEST_PATH@,${PTEST_PATH},' ${D}${PTEST_PATH}/run-ptest
-- 
2.20.1




