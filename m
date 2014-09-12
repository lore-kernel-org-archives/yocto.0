Return-Path: <Vincent.Riera@imgtec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C7A7E0079B; Fri, 12 Sep 2014 09:52:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 946 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Sep 2014 09:51:48 PDT
Received: from mailapp01.imgtec.com (mailapp01.imgtec.com [195.59.15.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74748E006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:51:48 -0700 (PDT)
Received: from KLMAIL01.kl.imgtec.org (unknown [192.168.5.35])
	by Websense Email Security Gateway with ESMTPS id 8EAC7563AB838
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 17:35:58 +0100 (IST)
Received: from KLMAIL02.kl.imgtec.org (10.40.60.222) by KLMAIL01.kl.imgtec.org
	(192.168.5.35) with Microsoft SMTP Server (TLS) id 14.3.195.1;
	Fri, 12 Sep 2014 17:36:01 +0100
Received: from LEMAIL01.le.imgtec.org (192.168.152.62) by
	klmail02.kl.imgtec.org (10.40.60.222) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Fri, 12 Sep 2014 17:36:01 +0100
Received: from localhost.localdomain (192.168.154.104) by
	LEMAIL01.le.imgtec.org (192.168.152.62) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 12 Sep 2014 17:36:00 +0100
From: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Sep 2014 17:35:52 +0100
Message-ID: <1410539753-24011-2-git-send-email-Vincent.Riera@imgtec.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
References: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.154.104]
Subject: [PATCH 1/2] Add support for MIPS32r2
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
X-List-Received-Date: Fri, 12 Sep 2014 16:52:06 -0000
Content-Type: text/plain

Add support for MIPS32r2.

Signed-off-by: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
---
 meta/conf/machine/include/tune-mips32r2.inc |   25 +++++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/conf/machine/include/tune-mips32r2.inc

diff --git a/meta/conf/machine/include/tune-mips32r2.inc b/meta/conf/machine/include/tune-mips32r2.inc
new file mode 100644
index 0000000..b36d00a
--- /dev/null
+++ b/meta/conf/machine/include/tune-mips32r2.inc
@@ -0,0 +1,25 @@
+DEFAULTTUNE ?= "mips32r2"
+
+require conf/machine/include/mips/arch-mips.inc
+
+TUNEVALID[mips32r2] = "Enable mips32r2 specific processor optimizations"
+TUNECONFLICTS[mips32r2] = "n64 n32"
+TUNE_CCARGS .= "${@bb.utils.contains("TUNE_FEATURES", "mips32r2", " -march=mips32r2", "", d)}"
+
+AVAILTUNES += "mips32r2 mips32r2el mips32r2-nf mips32r2el-nf"
+
+TUNE_FEATURES_tune-mips32r2 = "${TUNE_FEATURES_tune-mips} mips32r2"
+MIPSPKGSFX_VARIANT_tune-mips32r2 = "mips32r2"
+PACKAGE_EXTRA_ARCHS_tune-mips32r2 = "mips mips32r2"
+
+TUNE_FEATURES_tune-mips32r2el = "${TUNE_FEATURES_tune-mipsel} mips32r2"
+MIPSPKGSFX_VARIANT_tune-mips32r2el = "mips32r2el"
+PACKAGE_EXTRA_ARCHS_tune-mips32r2el = "mipsel mips32r2el"
+
+TUNE_FEATURES_tune-mips32r2-nf = "${TUNE_FEATURES_tune-mips-nf} mips32r2"
+MIPSPKGSFX_VARIANT_tune-mips32r2-nf = "mips32r2"
+PACKAGE_EXTRA_ARCHS_tune-mips32r2-nf = "mips-nf mips32r2-nf"
+
+TUNE_FEATURES_tune-mips32r2el-nf = "${TUNE_FEATURES_tune-mipsr2el-nf} mips32r2"
+MIPSPKGSFX_VARIANT_tune-mips32r2el-nf = "mips32r2el"
+PACKAGE_EXTRA_ARCHS_tune-mips32r2el-nf = "mipsel-nf mips32r2el-nf"
-- 
1.7.1


