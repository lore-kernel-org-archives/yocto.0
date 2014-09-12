Return-Path: <Vincent.Riera@imgtec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AA2BE0079B; Fri, 12 Sep 2014 09:52:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailapp01.imgtec.com (mailapp01.imgtec.com [195.59.15.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75A83E0078E
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 09:51:52 -0700 (PDT)
Received: from KLMAIL01.kl.imgtec.org (unknown [192.168.5.35])
	by Websense Email Security Gateway with ESMTPS id A63323DC8592F
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 17:35:59 +0100 (IST)
Received: from LEMAIL01.le.imgtec.org (192.168.152.62) by
	KLMAIL01.kl.imgtec.org (192.168.5.35) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Fri, 12 Sep 2014 17:36:02 +0100
Received: from localhost.localdomain (192.168.154.104) by
	LEMAIL01.le.imgtec.org (192.168.152.62) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 12 Sep 2014 17:36:01 +0100
From: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Sep 2014 17:35:53 +0100
Message-ID: <1410539753-24011-3-git-send-email-Vincent.Riera@imgtec.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
References: <1410539753-24011-1-git-send-email-Vincent.Riera@imgtec.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.154.104]
Subject: [PATCH 2/2] Add MIPS Creator CI20 machine
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
X-List-Received-Date: Fri, 12 Sep 2014 16:52:08 -0000
Content-Type: text/plain

Add support for the MIPS Creator CI20 machine. You will need to build a
working kernel for this board using this kernel repository on GitHub:

  https://github.com/MIPS/CI20_linux

More information about this board can be found at:

  http://elinux.org/MIPS_Creator_CI20

Signed-off-by: Vicente Olivert Riera <Vincent.Riera@imgtec.com>
---
 meta-yocto-bsp/conf/machine/ci20.conf |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-yocto-bsp/conf/machine/ci20.conf

diff --git a/meta-yocto-bsp/conf/machine/ci20.conf b/meta-yocto-bsp/conf/machine/ci20.conf
new file mode 100644
index 0000000..bd26815
--- /dev/null
+++ b/meta-yocto-bsp/conf/machine/ci20.conf
@@ -0,0 +1,10 @@
+#@TYPE: Machine
+#@NAME: CI20
+#@DESCRIPTION: MIPS Creator CI20
+
+require conf/machine/include/tune-mips32r2.inc
+
+DEFAULTTUNE = "mips32r2el"
+MACHINE_FEATURES = "serial"
+SERIAL_CONSOLE = "115200 ttyS4"
+IMAGE_FSTYPES ?= "tar.bz2"
-- 
1.7.1


