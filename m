Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24D4AE00B8D; Sun, 23 Jun 2019 11:15:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59EF2E00C6F
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:25 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id r7so6185465pfl.3
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=z8slu+Dz2vfsjuqglUOb8gIbi7WBp+B4qqKIVB/ibIU=;
	b=kPlN7vMMdegjT7FlgVCxprufb3CRR4KbdJ99bpV5ES1j55SQ9M2xltLazEEgI4Ey2R
	py6avhWP4NFFPQDMBgGXIwUvvVEsMZbNcEex+YS3wOYL3Vqrd7eW1YwEm+7UDQMZfacT
	uF4AGLYhz5b3zvu1blnNXTTLoJKAe1nc09EPQnPpVFntLFS2RqQdaeszgdn3Mx9YgsBP
	v+5i1LcAmjMiIk5MUlJ4Ht9JQLHoAtJyEHRbq8yFvQIJgmma14S+qfq6UrZTW4pIyFsa
	H4cCCF6nCDe88XON4eSRbWEeISmL56qkOzT/rBoHrO3eFieHR4Sr0ia3U9FHcLhOJ6yw
	WDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=z8slu+Dz2vfsjuqglUOb8gIbi7WBp+B4qqKIVB/ibIU=;
	b=ugDKehy3N4tSY/o7UgBdUpIukyOMh9ZqBII1NPRaTYqUAM2ueNrWUOzCxUhbB/1O9J
	aa+vj2QxxVfYPKfT+BIr4k0f4LthnJBOZ36FJkJg87EEW9R2GvBCC6cF1Uba9KbXlOgs
	Upe4vspmATg+VrBqJigASSOyfiVMoHHkQRwfzMYjxwKBM/eoQktIqxQ3YiLGwwmaae1l
	AP9AXtRiCijNBpilMsD7gJCitugxiJKTRAstWNuYwXAGEof84l0fTLt0Y9+MRNJ2RS2C
	eUHXfHLZcuUZXCcvSgz8D1eKUJdKm5kYx3pvqdhKuRh/p1ktbJNNIS2DyfpF0UUeZSL3
	EmEA==
X-Gm-Message-State: APjAAAUDWJexA2Vr4DHZlOo+OTm+NnU58uEffzzscjw1WOeJJPCGh/+R
	t0+YFjclVNUiVaQQn20aTz9d6yu+wR0=
X-Google-Smtp-Source: APXvYqx1U8qxuNB238CCb94OgAkqQqfChEk4dg8iLz4IwPIcsI7ZrySJQx+yUeHSBVz+VWRL1oUs4g==
X-Received: by 2002:a63:c34c:: with SMTP id e12mr11742707pgd.195.1561313724900;
	Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.24
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:17 -0700
Message-Id: <20190623181518.19564-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 8/9] tpm2-totp: update to offical release v0.1.1
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:26 -0000

Clean up recipe to match actual app

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb  | 18 ++++++++++++++++++
 .../recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb  | 17 -----------------
 2 files changed, 18 insertions(+), 17 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb
new file mode 100644
index 0000000..d47b756
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.1.1.bb
@@ -0,0 +1,18 @@
+SUMMARY = "Attest the trustworthiness of a device against a human using time-based one-time passwords"
+
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=ed23833e93c95173c8d8913745e4b4e1"
+
+SECTION = "security/tpm"
+
+DEPENDS = "autoconf-archive libtss2-dev qrencode"
+
+PE = "1"
+
+SRCREV = "2807a509a9da383e14dc0f759e71fd676db04ab1"
+SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git;branch=v0.1.x \
+           file://litpm2_totp_build_fix.patch "
+
+inherit autotools-brokensep pkgconfig
+
+S = "${WORKDIR}/git"
diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb
deleted file mode 100644
index bc94ab7..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL." 
-DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
-
-LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=ed23833e93c95173c8d8913745e4b4e1"
-
-SECTION = "security/tpm"
-
-DEPENDS = "autoconf-archive libtss2-dev qrencode"
-
-SRCREV = "44fcb6819f79302d5a088b3def648616e3551d4a"
-SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git \
-           file://litpm2_totp_build_fix.patch "
-
-inherit autotools-brokensep pkgconfig
-
-S = "${WORKDIR}/git"
-- 
2.17.1


