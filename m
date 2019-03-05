Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E336E00D26; Tue,  5 Mar 2019 08:46:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0A29E00CCC
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 08:46:14 -0800 (PST)
Received: by mail-pf1-f170.google.com with SMTP id j5so6130626pfa.2
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 08:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=qSwWpCXmUu0I8pURCxQMPQyJ6ehgvWdTUElC6xoChA8=;
	b=fNKcqzajq5HhXhTs+q/HQ/kU2UXYgDyPbEN7Wb21ZIMj0HYk+CRUjqqfF3PkZl/RQt
	pGKaFE7M9EEOaOuqtCo7+xUKFkfghxo/TuFaieIdOSi7XCCcW5x+TGfoKVXVeX6FUugd
	R8IfFHDWHme/w2nGMMw/ZtHUvT1Z198oVUGg/tWHM/Up1HmGM8EW/Ek0csqs3wKuSvgw
	DToxyQl6MUiNbehE++DkyajF/2xsBb5NdZwgEDsm8ViHlxggmu/ppK57NTUgPL8zgIcZ
	yy+1mD2RVbA9YyL/lfNNlPZc4itCAQuIsMwSTyrf6Ma/G7EQMZQRcIn4hahCbja9BP9s
	auew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=qSwWpCXmUu0I8pURCxQMPQyJ6ehgvWdTUElC6xoChA8=;
	b=MkDToeMHSlvzg+oKECrNWV0ES9/9ILBvOlJbRnwga+ZmshM8JwYAkpMp5rcTPZYinN
	gc4c2k628lmysc4aRVWr6dI0VoLkMyWOB7RiliaLQMii2laihy4c/AsUTSS19X2aKGfW
	OLHbFyoHMz1sjX1lZXo/wSccBsiw7VIbp8Rp4j0blzDabPQvf4BuPMezhsLZSB/p9SHF
	fa/vB+CV7N5e5Kr1g2d66B60TP3D++KrYg5GdQ7APJqzKaowv91O/guHl2i6RMqkRN3n
	izOWDIoOfdp5gsdoIEsmENnoK9l/Nit0BNjvL1amdll612GugFaPHiquAu0kptK3MWOf
	ZaBA==
X-Gm-Message-State: APjAAAVFVJnR2MCy8ygDJSruvzFKfmnie6fAWXzQpROLdgplVFca2Ruy
	ZcwqpnbgP6CnbWO8eYnVWwU8jauN
X-Google-Smtp-Source: APXvYqxXqGCYNWAzuXd+IOA1PgovuVwLUBB6wdqOQ7AxOo4OFq6DEnOUOukMZ0hhCYQlogdi56UfdA==
X-Received: by 2002:a62:69c3:: with SMTP id e186mr2636925pfc.169.1551804374013;
	Tue, 05 Mar 2019 08:46:14 -0800 (PST)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n6sm18769726pgh.79.2019.03.05.08.46.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 08:46:13 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2019 08:46:07 -0800
Message-Id: <20190305164608.12211-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190305164608.12211-1-akuster808@gmail.com>
References: <20190305164608.12211-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 6/7] libtpm: upate to stable 0.6.0
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
X-List-Received-Date: Tue, 05 Mar 2019 16:46:19 -0000

Add PE

This update include support for tpm2.0

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/libtpm/{libtpm_1.0.bb => libtpm_0.6.0.bb} | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_1.0.bb => libtpm_0.6.0.bb} (70%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.6.0.bb
similarity index 70%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.6.0.bb
index a930d7b..a882960 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.6.0.bb
@@ -2,8 +2,10 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "4111bd1bcf721e6e7b5f11ed9c2b93083677aa25"
-SRC_URI = "git://github.com/stefanberger/libtpms.git"
+SRCREV = "9dc915572b51db0714640ba1ddf8cca9c0f24f05"
+SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-${PV}"
+
+PE = "1"
 
 S = "${WORKDIR}/git"
 inherit autotools-brokensep pkgconfig
@@ -11,6 +13,4 @@ inherit autotools-brokensep pkgconfig
 PACKAGECONFIG ?= "openssl"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 
-PV = "1.0+git${SRCPV}"
-
 BBCLASSEXTEND = "native"
-- 
2.17.1


