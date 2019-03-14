Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65B72E00D08; Thu, 14 Mar 2019 07:29:33 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F073CE00B5C
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:32 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id b2so4082722pgl.9
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=I6eic19RRllP9z9/ojN0utljwriHWofn5rj4XqCAfro=;
	b=XLIfzyO7wIk5sNe/ZA6Sky9qVvT6EZKoPumYD5WMLvVoJJtrsHGH3kz1sJqZcE35yA
	j8hS1Qjg+oub9kv3LwNN5MJxGVB485AoiYSRBK9BCkR/9ByITtle25cjhg3HNkV01llP
	Eg4/AjKx0Pd8IgXdiT4xn3FrkSHgbkt6HSnd62kABU6M54G+DfTfGJfLt5O68kt2GdKs
	1KZyXodSyn6fPb8T/o8sqOFV7ud7QMjJDwfd/hjyNhmUsmqva84thEJLczw8YBLZCmbn
	wVJt+SQEWN+eVDS81AfqT1i3kM5KcZqiq6AfSBCaQdqnpEmUU2emdV+upD1FQpj7HVxj
	s+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=I6eic19RRllP9z9/ojN0utljwriHWofn5rj4XqCAfro=;
	b=H2pnRC3tK0cSQ/wzqofjpWMtm1NE5b6jBp1A7ZAb76YK1kcYsJiBI63ymYnJWpCEW9
	nKKbDHf5R15bcGCUAXTtuMOLrKrUTFvwHzcJgKNC8dUhEUiKR0fadSP209JeEfOama/P
	6jA+GNMU1e/WbAIyxtToIqCKR2y4J7/jVF5AEEmizy4rcOUrrz3YYxlnMDq3DjuzgBDE
	HmHV7NcEVbYB0G6ycQABXpGDIZ5nWvP1ptvq7CgPy+FZB5gemX+QzLXtjINFn/dx9+wm
	NYu/ontkhMvcsZLSzq2TeEJLZhecuWgOHQ3XhvcvOILtu81H84h2YfWJknBlvWWwJyh3
	Eiig==
X-Gm-Message-State: APjAAAV/uspncYn9eGPzm+4878hUbyIo9Hd+tsEOepVPe1xafW9zIIH2
	yfJDtuFxI54UN2iDDis8YNIuu2vO
X-Google-Smtp-Source: APXvYqzuQKIJuSRii3PkMVfSsMYumVNbcthV77hftQNDURhKPloAdqd/cA3LYgrq2DJKm+o2ZRCTNA==
X-Received: by 2002:a17:902:8348:: with SMTP id
	z8mr53044622pln.151.1552573772073; 
	Thu, 14 Mar 2019 07:29:32 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f125sm28148202pfc.91.2019.03.14.07.29.31 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 07:29:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 07:29:25 -0700
Message-Id: <20190314142928.1458-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190314142928.1458-1-akuster808@gmail.com>
References: <20190314142928.1458-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/6] tpm2-tss-engine: add new package
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
X-List-Received-Date: Thu, 14 Mar 2019 14:29:33 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb  | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb

diff --git a/meta-tpm/recipes-tpm/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb b/meta-tpm/recipes-tpm/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
new file mode 100644
index 0000000..36530be
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm2-tss-engine/tpm2-tss-engine_0.9.9.bb
@@ -0,0 +1,23 @@
+SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL." 
+DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
+
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3fb0047fd29391478a71e8e6101c76eb"
+
+SECTION = "security/tpm"
+
+DEPENDS = "autoconf-archive-native bash-completion libtss2 libgcrypt openssl"
+
+SRCREV = "bef89ec79cbb4c99963b0e336d9184827c545782"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss-engine.git"
+
+inherit autotools-brokensep pkgconfig systemd
+
+S = "${WORKDIR}/git"
+
+PACKAGES += "${PN}-engines ${PN}-engines-staticdev ${PN}-bash-completion"
+
+FILES_${PN}-dev = "${libdir}/engines-1.1/tpm2tss.so ${includedir}/*"
+FILES_${PN}-engines = "${libdir}/engines-1.1/lib*.so*"
+FILES_${PN}-engines-staticdev = "${libdir}/engines-1.1/libtpm2tss.a"
+FILES_${PN}-bash-completion += "${datadir}/bash-completion/completions"
-- 
2.17.1


