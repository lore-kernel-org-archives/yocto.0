Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E27DE00AAB; Sun, 22 Sep 2019 07:58:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC852E00A75
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 07:58:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8MEw9bw007686
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Sep 2019 07:58:09 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 07:58:09 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Sun, 22 Sep 2019 22:56:57 +0800
Message-ID: <1569164228-26934-5-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 4/15] fipscheck: enable fipscheck on target
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
X-List-Received-Date: Sun, 22 Sep 2019 14:58:11 -0000
Content-Type: text/plain

Refer Fedora/RedHat's way
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/6.5_technical_notes/dracut

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-connectivity/openssh/fipscheck_1.5.0.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-connectivity/openssh/fipscheck_1.5.0.bb b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
index 0a06bd3..23a4123 100644
--- a/recipes-connectivity/openssh/fipscheck_1.5.0.bb
+++ b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
@@ -28,6 +28,10 @@ EXTRA_OEMAKE += " \
     -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
 "
 do_install_append() {
+    # Is't the fedora way to enable fipscheck
+    install -d ${D}${sysconfdir}
+    touch ${D}${sysconfdir}/system-fips
+
     install -d ${D}${libdir}/fipscheck
 }
 
-- 
2.7.4


