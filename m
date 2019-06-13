Return-Path: <zangrc.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC605E00DF0; Wed, 12 Jun 2019 20:23:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7557E00D64
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 20:23:05 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.63,367,1557158400"; d="scan'208";a="67175494"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 13 Jun 2019 11:23:04 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id ECDA14CDD97F
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 11:23:03 +0800 (CST)
Received: from localhost.localdomain (10.167.226.46) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.439.0; Thu, 13 Jun 2019 11:23:06 +0800
From: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 13 Jun 2019 11:24:16 +0800
Message-ID: <20190613032417.9855-2-zangrc.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613032417.9855-1-zangrc.fnst@cn.fujitsu.com>
References: <20190613032417.9855-1-zangrc.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.46]
X-yoursite-MailScanner-ID: ECDA14CDD97F.ABE11
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zangrc.fnst@cn.fujitsu.com
Subject: [meta-security][master][PATCH 1/2] python-fail2ban: solved the conflict with python3-fail2ban
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
X-List-Received-Date: Thu, 13 Jun 2019 03:23:06 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

-Use update-alternatives class to resolve conflicts with python3-fail2ban.

Signed-off-by: Zang Ruochen <zangrc.fnst@cn.fujitsu.com>
---
 recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb b/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
index 17a7dd8..3eea365 100644
--- a/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
+++ b/recipes-security/fail2ban/python-fail2ban_0.10.4.0.bb
@@ -1,4 +1,13 @@
-inherit setuptools
+inherit setuptools update-alternatives
 require python-fail2ban.inc
 
 RDEPENDS_${PN}-ptest = "python python-modules python-fail2ban"
+
+ALTERNATIVE_${PN} = "fail2ban-client fail2ban-regex fail2ban-server fail2ban-testcases"
+
+ALTERNATIVE_TARGET[fail2ban-client] = "${bindir}/fail2ban-client"
+ALTERNATIVE_TARGET[fail2ban-regex] = "${bindir}/fail2ban-regex"
+ALTERNATIVE_TARGET[fail2ban-server] = "${bindir}/fail2ban-server"
+ALTERNATIVE_TARGET[fail2ban-testcases] = "${bindir}/fail2ban-testcases"
+
+ALTERNATIVE_PRIORITY = "30"
-- 
2.20.1




