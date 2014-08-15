Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F521E00524; Thu, 14 Aug 2014 20:26:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8427E004DD
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 20:26:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7F3QiBC023672
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 20:26:45 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.174.1; Thu, 14 Aug 2014 20:26:44 -0700
From: Kai Kang <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Aug 2014 11:21:33 +0800
Message-ID: <1408072893-28126-2-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1408072893-28126-1-git-send-email-kai.kang@windriver.com>
References: <1408072893-28126-1-git-send-email-kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.153.152]
Subject: [PATCH] qemu: enable aarch64 support in yocto
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
X-List-Received-Date: Fri, 15 Aug 2014 03:26:48 -0000
Content-Type: text/plain

qemu 2.1.0 support aarch64 targets, so add aarch64 to QEMU_TARGETS to
enable qemu aarch64 support. Var QEMU_TARGETS in poky.conf overrides the
var in qemu recipe, so add in poky.conf too.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index ec251f9..9a67b50 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -44,7 +44,7 @@ DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
 
 TCLIBCAPPEND = ""
 
-QEMU_TARGETS ?= "arm i386 mips mipsel ppc x86_64"
+QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel ppc x86_64"
 # Other QEMU_TARGETS "mips64 mips64el sh4"
 
 PREMIRRORS ??= "\
-- 
1.9.1


