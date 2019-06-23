Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1476AE00B8D; Sun, 23 Jun 2019 11:15:24 -0700 (PDT)
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
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92EFDE00B1A
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:22 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id g4so5549789plb.5
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=QqruKJWC663s2l5ZEo4CbViZqAiz7a6Y8AtNMxCV4ns=;
	b=pEm8wWHqEJw79scOhxI6/HGqbqkNFd8uPcxU75u442O8cZamNA25IEENT0yI3Rgmni
	5PJksb9aDVNtdpGMPyBshRxC09BdUfsq0j7G4t4HI66/YL6zBR5/SqYjSv5D2KLzxgQ1
	5D6FDgdwjRLvjyL8l+RgA2WzuuJ2Gb5lOOU18djvou2UJ2MJxJKmOZB3Ofw3YL0SvGLK
	m3Av0FoW6cDTDEMpluDgundH4KgNaSQ8k+HifBcDSMdTCp5AZTfsgnrY8gLyCRD/l5KE
	GUt7b8neCtXKWE/ONgiWT4xbz91lGxzFfFW1mPBcal0aKJrvzoYrYMf78Asj6mmxi2d2
	apOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=QqruKJWC663s2l5ZEo4CbViZqAiz7a6Y8AtNMxCV4ns=;
	b=IQlm8T5XA4PtQOaezu9pnjtiTHfeAV4RpgAfpbJPOf3dXnFa5S04UMiqJfP7HyXwP6
	sSZ1JUvMPQ8ICXD4cb0WbX2YS9P3R2JTU0Ev/HJ2eXGHkKOuvM+VrA9KMpzLRU1vMEdx
	RNEHSjN2WZwB7dAR/QjWhexhtC/5w4t7n3L5q2ZalrivcoFhNAqKTJ+K1sGnneiBba6s
	U3WbF8ZsN0tfvll0PgjELdNcBP3OTJu2E2yC7tIXPdNFbv88wBdaok0T81GJQ+MH6TVo
	tqFwW2Yap9fkER5PxsBJDsKUnjN82pE63xy5M7b/OdlLZHD72UnPETGsTczJQhcoth6X
	fRng==
X-Gm-Message-State: APjAAAWdkbq2PzjRCOP9hU8RGO0KpsVnsCUPSPCR+mDZ4yuLZdCupLtj
	jVk165fxw5y6y8OWiMjQ+qqO0LiVkPM=
X-Google-Smtp-Source: APXvYqxSoY+tyYlj4Y4UpzHrC5M6NRBkFTr8anZNzUaUrNxxuSTu3RiX/MKM7FhGkfTOelpirBvjtA==
X-Received: by 2002:a17:902:4a:: with SMTP id
	68mr144387622pla.235.1561313722214; 
	Sun, 23 Jun 2019 11:15:22 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.21
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:13 -0700
Message-Id: <20190623181518.19564-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190623181518.19564-1-akuster808@gmail.com>
References: <20190623181518.19564-1-akuster808@gmail.com>
Subject: [meta-security][meta-tpm][PATCH 4/9] tpm2-pkcs11/tpm2-pkcs11: update to tip
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:24 -0000

license-check-sum: Add SPDX format

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
index 9031e63..222bb6d 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
@@ -2,7 +2,7 @@ SUMMARY = "A PKCS#11 interface for TPM2 hardware"
 DESCRIPTION = "PKCS #11 is a Public-Key Cryptography Standard that defines a standard method to access cryptographic services from tokens/ devices such as hardware security modules (HSM), smart cards, etc. In this project we intend to use a TPM2 device as the cryptographic token."
 SECTION = "security/tpm"
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=b748af41ef1300c98e105b3b7ec4ecc1"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=93645981214b60a02688745c14f93c95"
 
 DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2-tools"
 
@@ -10,7 +10,7 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
            file://bootstrap_fixup.patch \
           "
 
-SRCREV = "3107d89b406ecd9c007884613733c9a344ef6d39"
+SRCREV = "9eed9df823a960da481327468a73d477241befdb"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


