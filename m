Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9B99E00F0D; Wed, 25 Sep 2019 00:27:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AFBE00E07
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:26:47 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8P7QAHf016469
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 00:26:20 -0700
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 00:26:00 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Wed, 25 Sep 2019 15:24:08 +0800
Message-ID: <1569396253-36865-12-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
References: <1569396253-36865-1-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH 11/16] rng-tools bbappend: port a copy of default from oe-core
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
X-List-Received-Date: Wed, 25 Sep 2019 07:28:05 -0000
Content-Type: text/plain

Port it at the following commit in oe-core
http://cgit.openembedded.org/openembedded-core/commit/?id=16ced1a253c74c01ca414db2f1a010c083213b91

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-support/rng-tools/rng-tools/default      | 1 +
 recipes-support/rng-tools/rng-tools_6.%.bbappend | 4 ++++
 recipes-support/rng-tools/rng-tools_fips.inc     | 2 ++
 3 files changed, 7 insertions(+)
 create mode 100644 recipes-support/rng-tools/rng-tools/default
 create mode 100644 recipes-support/rng-tools/rng-tools_6.%.bbappend
 create mode 100644 recipes-support/rng-tools/rng-tools_fips.inc

diff --git a/recipes-support/rng-tools/rng-tools/default b/recipes-support/rng-tools/rng-tools/default
new file mode 100644
index 0000000..b9f8e03
--- /dev/null
+++ b/recipes-support/rng-tools/rng-tools/default
@@ -0,0 +1 @@
+EXTRA_ARGS="-r /dev/hwrng"
diff --git a/recipes-support/rng-tools/rng-tools_6.%.bbappend b/recipes-support/rng-tools/rng-tools_6.%.bbappend
new file mode 100644
index 0000000..c487175
--- /dev/null
+++ b/recipes-support/rng-tools/rng-tools_6.%.bbappend
@@ -0,0 +1,4 @@
+FIPSINC = ""
+FIPSINC_class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'rng-tools_fips.inc'}"
+
+require ${FIPSINC}
diff --git a/recipes-support/rng-tools/rng-tools_fips.inc b/recipes-support/rng-tools/rng-tools_fips.inc
new file mode 100644
index 0000000..d5f6435
--- /dev/null
+++ b/recipes-support/rng-tools/rng-tools_fips.inc
@@ -0,0 +1,2 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/rng-tools:"
+
-- 
2.7.4


