Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 481E4E00D2B; Thu, 21 Mar 2019 08:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,URI_NOVOWEL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA805E00D21
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 08:48:10 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id 10so4564968pfo.5
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2019 08:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=xHbkJCBXTbYmqUcJZ3tkeKi4TvOVtSfHWreXR5u1siw=;
	b=hPxO+Eol6zOSLgcpveWFdYzwMwIW+CwWadgBOSSMjOaurWKGME+L4UuJ9Oe8f4K1QR
	J/QLi2jL0lfe8vNVQoXOL0aK3/Sz4OnIqMEW0+uN+TpgMBTnxaOWM3oN4WInT5475oQz
	9WhTcLReSB1E0IOAg7M1LsqvOC8Zz2qPhPLWOSSeqYUh0v604JCQWyHUgLs0uf4obcvY
	BqSe9bR++aTHzcN5ftjzBV1mGmMOtbFJpkeMVzdfyXOt3w6pMGgr4FhBpQaumcqRuWPG
	VBJbxvVRSCDH0kjjgchDhq1u1clZEVMdJUWSVWH6W0y6v17NHEqHV/0QUg2lPpzpqGTq
	cAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=xHbkJCBXTbYmqUcJZ3tkeKi4TvOVtSfHWreXR5u1siw=;
	b=Dq6GqaU7BnyUffrOSrLt5gIkTnk2yQSYTS9Jc5E8wlq+mGMZZGfIgyB9wnTskHWDcY
	pZ5MoUthdBOcI+pYGIwEH7ewAKiQQrF/+DKruPVqvRfqVHJR7aeQl6Pfv42fMvBUDBtF
	vHkbpKQc4LYw19QL3e/I47R61tlVWIfxucyzFalgylCLPnFw6UeYh70qVeffTfurEFAM
	n0AMahuo/GaDP/BFcEKGaur9RYfJ7fTn2UEklW4SzNSH2OSU2D4S2pw6UwQXRpP7QJ8z
	UDoZPsJ/C+bmNMpAsMBaIUcelLBakztBJ+09mkf+z9ImHIiMUA6OQ7Jf9vWLwoYafT6U
	f+nA==
X-Gm-Message-State: APjAAAWCxZMd+R5BJpXL6BF2CsktBdZ6j06vTThu88FL5dREC32UO/EJ
	6rAThfKnLPy/oe/udFazgETeS4JV
X-Google-Smtp-Source: APXvYqy7plD4HRD2xGf4T4+AI4Dl1QTRxKuT/JLuEv9PgzRo8B7sBzdaX5R4ZnxpLQlLc8nzRhCPgA==
X-Received: by 2002:aa7:9090:: with SMTP id i16mr3870748pfa.85.1553183289849; 
	Thu, 21 Mar 2019 08:48:09 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	i79sm11899316pfj.28.2019.03.21.08.48.08 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Mar 2019 08:48:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Mar 2019 08:48:07 -0700
Message-Id: <20190321154807.12277-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] ibmswtpm2: Add new recipe
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
X-List-Received-Date: Thu, 21 Mar 2019 15:48:11 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
new file mode 100644
index 0000000..a6068e6
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
@@ -0,0 +1,24 @@
+SUMMARY = "IBM's Software TPM 2.0"
+
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+
+SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm1332.tar.gz"
+SRC_URI[md5sum] = "0ab34a655b4e09812d7ada19746af4f9"
+SRC_URI[sha256sum] = "8e8193af3d11d9ff6a951dda8cd1f4693cb01934a8ad7876b84e92c6148ab0fd"
+
+DEPENDS = "openssl"
+
+S = "${WORKDIR}/src"
+
+LDFLAGS = "${LDFALGS}"
+
+do_compile () {
+   make CC='${CC}'
+}
+
+do_install () {
+   install -d ${D}/${bindir}
+   install -m 0755 tpm_server  ${D}/${bindir}
+}
-- 
2.17.1


