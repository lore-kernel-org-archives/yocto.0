Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A262E00CAF; Sat, 16 Mar 2019 21:51:18 -0700 (PDT)
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
	*      [209.85.215.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8934E00AA9
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 21:51:17 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id r124so9138023pgr.3
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 21:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=REM2Caz2rECN+tntjAKQDZQGd3dEcSBpj/NWpqD8HF0=;
	b=a9eWcehBidTYYWisChJFq2f2H5Z8A1Oo5HsI4P/UtrY+RKhlfl0WzD3cb8dHePjnX2
	CKhoFYf0lEkmqX/f6HGWQOMaAsAnhhEM8cytTienu0cKkDYUpB9gt5NQq7NkdR09wf5X
	wbpjydva1otUYrdRGQdP1nIRSqMYFlebClFOktu1R4duB6pO1YnlUQqm7iAKF2oWQ/iJ
	NnCUPzfMq0pXwbQXiwdlmlHx04GlTcoa0xMoSMcWSEhKpo9Ey7eExQhAURaTUB8pBpTg
	16qF2ScANHMMHmgzy5iQ+33CP7yn2KWid2+MKnZIJWhqjJ1UiNtPyg1zp8uluUdlbA50
	iQnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=REM2Caz2rECN+tntjAKQDZQGd3dEcSBpj/NWpqD8HF0=;
	b=QzyoTr9dwG9lZDvMKBNXOseby6wnAgZ4CfeUs7dEMw4lO28KJw26sK1MCZs6ryhH/g
	Y2x3esmRKMiVgP+Os21A7vOgUNBYFXQVH1bCowiR0fz1dDEJEP9svSE3qS5mniuB8wOG
	OFxwe1AhmAGrDECf3CEESeR7MUozp/J9gVlT2Hk8yRv1qlN018xC+n95KYQeDd/9HaRY
	jlTZLS+LKc6T7r8nutG6yyoxUo2xXxhh1mBX7mJrDUHxuCWa7useJVjs/h9VCu2TGP7i
	fmeDBcT8TT/4WXTbMoYpfp8uzsVJwTl82m4G5utNst8cJVtCslPLUT1buuWTVBXn/8/v
	negw==
X-Gm-Message-State: APjAAAV3y7SqAbK9o8xo249KQF9gmbhWfAxD1h7lPCAzGkXpdyLtZqNS
	K4a3rkvyMW3iWWUAFeHnQcf+9+Qb
X-Google-Smtp-Source: APXvYqwvk5Kr3Zi531eOpbno2II9PVQ6AA9WliZAKqvGTMibmkLcsR3r9lReNW2hKlYcpTG6SDahVw==
X-Received: by 2002:aa7:8b96:: with SMTP id r22mr12433610pfd.223.1552798277331;
	Sat, 16 Mar 2019 21:51:17 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	k72sm14082342pfb.122.2019.03.16.21.51.16 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 Mar 2019 21:51:16 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Mar 2019 21:51:15 -0700
Message-Id: <20190317045115.24766-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] tpm2-pkcs11: add new package
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
X-List-Received-Date: Sun, 17 Mar 2019 04:51:18 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-pkcs11/files/bootstrap_fixup.patch   | 12 +++++++++++
 .../tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb          | 21 +++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/files/bootstrap_fixup.patch
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/bootstrap_fixup.patch b/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/bootstrap_fixup.patch
new file mode 100644
index 0000000..d38e237
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/files/bootstrap_fixup.patch
@@ -0,0 +1,12 @@
+Upstream-Status: OE specific
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/bootstrap
+===================================================================
+--- git.orig/bootstrap
++++ git/bootstrap
+@@ -27,4 +27,3 @@ echo "Generating file lists: ${VARS_FILE
+ ) > ${VARS_FILE}
+ 
+ mkdir -p m4
+-${AUTORECONF} --install --sym $@
diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
new file mode 100644
index 0000000..c24fd8f
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_0.9.9.bb
@@ -0,0 +1,21 @@
+SUMMARY = "A PKCS#11 interface for TPM2 hardware"
+DESCRIPTION = "PKCS #11 is a Public-Key Cryptography Standard that defines a standard method to access cryptographic services from tokens/ devices such as hardware security modules (HSM), smart cards, etc. In this project we intend to use a TPM2 device as the cryptographic token."
+SECTION = "security/tpm"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=b748af41ef1300c98e105b3b7ec4ecc1"
+
+DEPENDS = "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-dev tpm2.0-tools"
+
+SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git \
+           file://bootstrap_fixup.patch \
+          "
+
+SRCREV = "3107d89b406ecd9c007884613733c9a344ef6d39"
+
+S = "${WORKDIR}/git"
+
+inherit autotools-brokensep pkgconfig
+
+do_configure_prepend () {
+    ${S}/bootstrap
+}
-- 
2.17.1


