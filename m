Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F35E00D6B; Wed,  5 Jun 2019 18:22:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52737E00CF4
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 18:22:28 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x561M7cl017048
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 5 Jun 2019 18:22:17 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Wed, 5 Jun 2019 18:21:56 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 6 Jun 2019 09:08:26 +0800
Message-ID: <1559783306-19974-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-anaconda][PATCH] anaconda_oe.py: add ldconfig to DISTRO_FEATURES
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
X-List-Received-Date: Thu, 06 Jun 2019 01:22:28 -0000
Content-Type: text/plain

'ldconfig' is a required distro feature for anaconda, so add it
before running any builds, otherwise, we get build failure due to
lack of 'ldconfig'.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 lib/oeqa/selftest/cases/anaconda_oe.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/oeqa/selftest/cases/anaconda_oe.py b/lib/oeqa/selftest/cases/anaconda_oe.py
index 9cc6de4..e568709 100644
--- a/lib/oeqa/selftest/cases/anaconda_oe.py
+++ b/lib/oeqa/selftest/cases/anaconda_oe.py
@@ -19,6 +19,7 @@ class TestAnacondaOE(OESelftestTestCase):
         features += 'VIRTUAL-RUNTIME_init_manager = "systemd"\n'
         features += 'DISTRO_FEATURES_append = " systemd"\n'
         features += 'DISTRO_FEATURES_append = " pam"\n'
+        features += 'DISTRO_FEATURES_append = " ldconfig"\n'
         features += 'DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " sysvinit"\n'
         self.write_config(features)
         self.logger.info('local.conf:\n%s' % features)
-- 
2.7.4


