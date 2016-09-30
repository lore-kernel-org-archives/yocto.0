Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60DDCE00D99; Fri, 30 Sep 2016 11:37:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A07AE00C8E
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 11:37:04 -0700 (PDT)
Received: by mail-it0-f65.google.com with SMTP id j69so3381788itb.1
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 11:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=DKsBIvQViW2NS3rPhnzkLyHaShPOtkyOF3vIyilUCNA=;
	b=EoNRv5q7rJVPRWExDEaw3tGLgryeTqw9i8BuTZ4lPrI4fR46LJD9nQiE5RbJe/voYy
	oj+ZbQ15DGgBEjPEulCGfG5QhJLD5akZ4Lv42P90T7UiKat4LLTsp6Y7JoEUOCJc2v5u
	2Px+AfKZdCXyypxasObEEGAiDtp/9L22SMHmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=DKsBIvQViW2NS3rPhnzkLyHaShPOtkyOF3vIyilUCNA=;
	b=fCmgXaDiwPmJSW9v3dcHPNGipVfz8F7/oTg3DrjjuwycJ/5aXcz4chivxLcXkHBRhQ
	amCxF4cZZbu+AbXnP+sJ1Efy4OlwxaWxyvuOd35bvd1h7ycGQJouJvp8ToGhDcruFBXc
	tVm9B3W1JijHup6JYV4UP/W+M+V/MifAOQjegxLgQ5H7HztzcWtRbTd4TxFZrwb9sFyI
	kfSendIicwx2gXw+n9kJ7p9w1o+QZp69BWxGpIPQIesFyeTnsCyKowWdMU5A+Vd7aemq
	dFM1ZCydah4M4EfzupaeQdbc6RebdyOmL3U43Gt6eGGXmtTk6K7QDgla3ALavF8fCXXC
	6h5A==
X-Gm-Message-State: AA6/9Rmx213LEzx9hPT9yk2t/bhtUqqsNA5cMUhybIajlax+Ej3og6WNbEv+TgMfReTSYQ==
X-Received: by 10.107.41.81 with SMTP id p78mr10252663iop.78.1475260624372;
	Fri, 30 Sep 2016 11:37:04 -0700 (PDT)
Received: from localhost (static-96-237-165-28.bstnma.fios.verizon.net.
	[96.237.165.28]) by smtp.gmail.com with ESMTPSA id
	p127sm3938076iod.16.2016.09.30.11.37.03
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 30 Sep 2016 11:37:03 -0700 (PDT)
From: Cody P Schafer <dev@codyps.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Sep 2016 14:36:56 -0400
Message-Id: <20160930183656.3600-1-dev@codyps.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-qt4][PATCH] nativesdk-qt4-tools: ensure --disable-static is not passed
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
X-List-Received-Date: Fri, 30 Sep 2016 18:37:08 -0000

This recipe presumes it can build the qt4-tools as static, and does not
install any of it's built libraries. If we don't remove
`--disable-static`, it attempts to use non-existent shared libraries
(many of them aren't even built), resulting in either link failures at
build time or (occasionally) at populate_sdk time due to the lack of a
provider for the shared libraries.

Signed-off-by: Cody P Schafer <dev@codyps.com>
---
 recipes-qt4/qt4/nativesdk-qt4-tools.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-qt4/qt4/nativesdk-qt4-tools.inc b/recipes-qt4/qt4/nativesdk-qt4-tools.inc
index 54bf2a1..44faf83 100644
--- a/recipes-qt4/qt4/nativesdk-qt4-tools.inc
+++ b/recipes-qt4/qt4/nativesdk-qt4-tools.inc
@@ -8,6 +8,10 @@ FILESEXTRAPATHS =. "${FILE_DIRNAME}/qt4-${PV}:"
 
 inherit nativesdk qmake2
 
+# This recipe builds the tools as static executables (using static libraries),
+# so we need to avoid disabling them.
+DISABLE_STATIC = ""
+
 SRC_URI = "http://download.qt-project.org/official_releases/qt/4.8/${PV}/qt-everywhere-opensource-src-${PV}.tar.gz \
            file://0001-qlibraryinfo-allow-to-set-qt.conf-from-the-outside-u.patch \
            file://0004-configure-qmake-is-already-built-in-qt4-tools-native.patch \
-- 
2.10.0


