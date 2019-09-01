Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40E19E00973; Sun,  1 Sep 2019 12:56:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 510 seconds by postgrey-1.32 at yocto-www;
	Sun, 01 Sep 2019 12:56:54 PDT
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2766AE0082A
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 12:56:54 -0700 (PDT)
Received: from linuxdev2.toradex.int (unknown [46.140.72.82])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 76E645C01D2;
	Sun,  1 Sep 2019 21:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1567367302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:
	content-transfer-encoding:content-transfer-encoding:in-reply-to:
	references; bh=tAKVv0hOiMOMIJ2Tfs/KQHn8UITVTd4g/dEi04Fp2d0=;
	b=xirX01IaR1g7V+v/w5+HlxvF4QR7o8ct5x0xHjLvHAANFYp5j3+GSClZa4NnPU1kEgvOMQ
	prceqcQ0O1vvs3KVza6xpBMwPI3RoJr3G5vPY6XNPRizfk6kxu9JBeJs9zjgPKd/i4WSOk
	+leN+bc66aqEZ8cgIe5nM4adeilpUk0=
From: Stefan Agner <stefan@agner.ch>
To: yocto@yoctoproject.org
Date: Sun,  1 Sep 2019 21:48:13 +0200
Message-Id: <20190901194813.18363-1-stefan@agner.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Cc: Stefan Agner <stefan.agner@toradex.com>
Subject: [meta-security][PATCH] libseccomp: build static library always
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
X-List-Received-Date: Sun, 01 Sep 2019 19:56:56 -0000
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan.agner@toradex.com>

Always build static library. This is required e.g. for runc from
meta-virtualization in its default configuration.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 recipes-security/libseccomp/libseccomp_2.4.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/libseccomp/libseccomp_2.4.1.bb b/recipes-security/libseccomp/libseccomp_2.4.1.bb
index dba1be5..37a7982 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.1.bb
@@ -17,6 +17,8 @@ inherit autotools-brokensep pkgconfig ptest
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
 
+DISABLE_STATIC = ""
+
 do_compile_ptest() {
     oe_runmake -C tests check-build
 }
-- 
2.20.1


