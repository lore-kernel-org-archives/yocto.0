Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5A8DE00D40; Tue, 18 Oct 2016 09:52:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF94EE00D35
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:52:32 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id s8so15578914pfj.2
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=CXQYU171Dq17JnNn2w5k78OeK1EBbefAD+6rgKsaW8Y=;
	b=UK8a7ihtToWItcLp4UTM8DknMWMvxtUuSWinLpDQli3pFHv8MhrroiUSnDHu7548BU
	lqevezARviVyf7jUaxtZMm5sjUYVIm5foOvMR+O25/aAIbSTG0ldT+6TzZHRq/+L18Gq
	lekferhIgIye+YPRHpDdT0l2Ys1BeVsEZ/+1rXazUxZn3/6AiUGtheoMaGEPR2+UzOK3
	SsB9LVLlrn06jvUBfzrBTYhL1tALMD3LKbg0mK5HHUA4poniv6sfUnRmWKr9RqnQOcok
	+MhNUag92VVfBc7ZXLUkiI8SkSaX1DxbBkb7tMJzoJaRmblLWMOuYRx4RNILphTHzwY5
	l34w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=CXQYU171Dq17JnNn2w5k78OeK1EBbefAD+6rgKsaW8Y=;
	b=S6EbAUlbrZiprY0RmO8Y9iNLwZN5Hc9ocNxr4dR1FDkRCQuEjxYu3Idnz0QUmPbds7
	GRCIgKvWHiKUfw6ChXLT4GY/G49uvyi+2pOTZgbW7Nyiss5NQ19wVeBriFWaCpot05/m
	9BxehuO/kkKpQLDlYE8IA4cveTX2/3pndJKF4gaWN3xKmrcqt4I7+nsOUYKEyn86Jt6R
	IBMG44SxEdoA+ynTBtFkqLI2VOxYtXPjEv9PtrLp475tXLAk2l9/aLX7dMfkibrL1UV6
	G7Xpp3VgpppcziCQrDmXfc3H9AZ1D57RVbljDbWobMee6QiiFaQMu7B2nY10sCxa0y9p
	xF+Q==
X-Gm-Message-State: AA6/9Rkwn/NPXtOyFkbXrQjIK+1JIFUMl+LQIKIcL35HVkAYs1yymfNQmczwx74rHqBqiw==
X-Received: by 10.98.30.193 with SMTP id e184mr2372857pfe.104.1476809551993;
	Tue, 18 Oct 2016 09:52:31 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	l1sm17552443pai.14.2016.10.18.09.52.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 18 Oct 2016 09:52:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 18 Oct 2016 09:52:30 -0700
Message-Id: <1476809550-21662-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][V2][PATCH] tpm-tools: add native support
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
X-List-Received-Date: Tue, 18 Oct 2016 16:52:38 -0000

V2:
- drop 1.0 from PV

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 +++++++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb

diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
index 5645976..99ea8ee 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
@@ -9,6 +9,7 @@ SECTION = "tpm"
 LICENSE = "CPL-1.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 DEPENDS = "libtspi openssl"
+DEPENDS_class-native = "trousers-native"
 
 SRC_URI += " \
     http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.gz \
@@ -20,3 +21,5 @@ SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
 SRC_URI[sha256sum] = "66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
 
 inherit autotools gettext
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
new file mode 100644
index 0000000..b7026aa
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2.0-tools"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
+SECTION = "tpm"
+
+DEPENDS = "tpm2.0-tss openssl curl"
+
+SRCREV = "c924cc8ca752e5af6a829f893c6be4b185d56e99"
+
+SRC_URI = "git://github.com/01org/tpm2.0-tools.git;protocol=git;branch=master;name=tpm2.0-tools;destsuffix=tpm2.0-tools"
+
+S = "${WORKDIR}/tpm2.0-tools"
+
+PV = "git${SRCPV}"
+
+inherit autotools-brokensep pkgconfig
+
+do_configure () {
+	cd ${S}
+	./bootstrap  --force
+	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+}
-- 
2.7.4


