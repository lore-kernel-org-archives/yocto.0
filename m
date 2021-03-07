Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web08.23805.1615136444632412242
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 09:00:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bdThlcct;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso1771331pjb.3
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 09:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=skZR661cDXTyxcr507f6mFFTCEAPC/itIhrmZeZhFg4=;
        b=bdThlcctHmNdpDvQRiNIWnSQN/3TaZjjjYH6xfM7PzVdjnASInZod8jVKa7MQB8QlY
         um02O5dEV+0/+UgsJJ59fGqFtCpnGOxD+EaizJZ1U7MRDXCmmcVLLX6bVqKKBFL1FI96
         5jWANT7eaGuIUn78EQjj52DmJQ+DG3srxtExA+ciTawe8z0uu7kXIFWyH5RXTd4+6Hq/
         /ZjgZr8Xr7uXTH0FnDIYCIvNqQ5KDuk3JZ+JJpS73Zeovxi5Oa/nFi3REdqy8aSJ5TP8
         qe8lcHWyUlRIGbWh3FqlY5sZV8+wPVgeMVL5wzrG/nej504tuZf4TrR9qF4EwJhJiqXA
         7pZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=skZR661cDXTyxcr507f6mFFTCEAPC/itIhrmZeZhFg4=;
        b=B2sushavomI63CrzcCzOtVzoHH6AoEWgF0x0wnanCni2OBFhudlDN37veu8JFeOqIu
         g6Lur4lNF9jhluo0/EHNrqoZz+aJq46xZIaLXWKJ3qQXki3zFd18cERfGeGP4S8caMEF
         ysvBdJfUMkZKjuYqEQwGGKhtJxLhQte3fYLlyDeeF+SIVzxZUetpIIENY/AmVKPzwcs2
         tL8fU2EkMMli5CchT0UcRW5cLcviSfTUS+GQaMSbKCq4D5bcswqUFOLqNuCUw5C2YO5E
         TO0yI1JJQnVkYpk+G4yIhVQwxY3/0qb8pvNy5bsXOZqQ/5PgOiKKuy6FUfSow9IrUc55
         /7ng==
X-Gm-Message-State: AOAM530fIDHZ52+I5ECaBrI+X/pyYNDLzrzqshNnits3SjvG3kI0b5Vh
	zrcKKyjERyXDctjsnwjY7kd0XQ0UU1Y=
X-Google-Smtp-Source: ABdhPJwgXviGJaL5LLmGIu/nnU/26hfq8mGNPiWvIA4XPsJ8y8fmh+eXP4tnTVOPcuBzwCsb04uSPA==
X-Received: by 2002:a17:90a:bd16:: with SMTP id y22mr16852527pjr.46.1615136443481;
        Sun, 07 Mar 2021 09:00:43 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id w27sm8068305pfq.105.2021.03.07.09.00.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 09:00:43 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm-tools: update to 1.3.9.1
Date: Sun,  7 Mar 2021 17:00:42 +0000
Message-Id: <20210307170042.3917017-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

drop patch included in update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/05-openssl1.1_fix_data_mgmt.patch   | 110 ------------------
 ...-tools_1.3.9.1.bb => tpm-tools_1.3.9.2.bb} |   3 +-
 2 files changed, 1 insertion(+), 112 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch
 rename meta-tpm/recipes-tpm/tpm-tools/{tpm-tools_1.3.9.1.bb => tpm-tools_1.3.9.2.bb} (91%)

diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch b/meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch
deleted file mode 100644
index c2a264b..0000000
--- a/meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch
+++ /dev/null
@@ -1,110 +0,0 @@
-Author: Philipp Kern <pkern@debian.org>
-Subject: Fix openssl1.1 support in data_mgmt
-Date: Tue, 31 Jan 2017 22:40:10 +0100
-
-Upstream-Status: Backport
-tpm-tools_1.3.9.1-0.1.debian.tar
-
-Signed-off-by: Armin kuster <akuster808@gmail.com>
-
----
- src/data_mgmt/data_import.c |   60 ++++++++++++++++++++++++++++----------------
- 1 file changed, 39 insertions(+), 21 deletions(-)
-
---- a/src/data_mgmt/data_import.c
-+++ b/src/data_mgmt/data_import.c
-@@ -372,7 +372,7 @@ readX509Cert( const char  *a_pszFile,
- 		goto out;
- 	}
- 
--	if ( EVP_PKEY_type( pKey->type ) != EVP_PKEY_RSA ) {
-+	if ( EVP_PKEY_base_id( pKey ) != EVP_PKEY_RSA ) {
- 		logError( TOKEN_RSA_KEY_ERROR );
- 
- 		X509_free( pX509 );
-@@ -691,8 +691,13 @@ createRsaPubKeyObject( RSA
- 
- 	int  rc = -1;
- 
--	int  nLen = BN_num_bytes( a_pRsa->n );
--	int  eLen = BN_num_bytes( a_pRsa->e );
-+	const BIGNUM *bn;
-+	const BIGNUM *be;
-+
-+	RSA_get0_key( a_pRsa, &bn, &be, NULL );
-+
-+	int  nLen = BN_num_bytes( bn );
-+	int  eLen = BN_num_bytes( be );
- 
- 	CK_RV  rv;
- 
-@@ -732,8 +737,8 @@ createRsaPubKeyObject( RSA
- 	}
- 
- 	// Get binary representations of the RSA key information
--	BN_bn2bin( a_pRsa->n, n );
--	BN_bn2bin( a_pRsa->e, e );
-+	BN_bn2bin( bn, n );
-+	BN_bn2bin( be, e );
- 
- 	// Create the RSA public key object
- 	rv = createObject( a_hSession, tAttr, ulAttrCount, a_hObject );
-@@ -760,14 +765,27 @@ createRsaPrivKeyObject( RSA
- 
- 	int  rc = -1;
- 
--	int  nLen = BN_num_bytes( a_pRsa->n );
--	int  eLen = BN_num_bytes( a_pRsa->e );
--	int  dLen = BN_num_bytes( a_pRsa->d );
--	int  pLen = BN_num_bytes( a_pRsa->p );
--	int  qLen = BN_num_bytes( a_pRsa->q );
--	int  dmp1Len = BN_num_bytes( a_pRsa->dmp1 );
--	int  dmq1Len = BN_num_bytes( a_pRsa->dmq1 );
--	int  iqmpLen = BN_num_bytes( a_pRsa->iqmp );
-+	const BIGNUM *bn;
-+	const BIGNUM *be;
-+	const BIGNUM *bd;
-+	const BIGNUM *bp;
-+	const BIGNUM *bq;
-+	const BIGNUM *bdmp1;
-+	const BIGNUM *bdmq1;
-+	const BIGNUM *biqmp;
-+
-+	RSA_get0_key( a_pRsa, &bn, &be, &bd);
-+	RSA_get0_factors( a_pRsa, &bp, &bq);
-+	RSA_get0_crt_params( a_pRsa, &bdmp1, &bdmq1, &biqmp );
-+
-+	int  nLen = BN_num_bytes( bn );
-+	int  eLen = BN_num_bytes( be );
-+	int  dLen = BN_num_bytes( bd );
-+	int  pLen = BN_num_bytes( bp );
-+	int  qLen = BN_num_bytes( bq );
-+	int  dmp1Len = BN_num_bytes( bdmp1 );
-+	int  dmq1Len = BN_num_bytes( bdmq1 );
-+	int  iqmpLen = BN_num_bytes( biqmp );
- 
- 	CK_RV  rv;
- 
-@@ -821,14 +839,14 @@ createRsaPrivKeyObject( RSA
- 	}
- 
- 	// Get binary representations of the RSA key information
--	BN_bn2bin( a_pRsa->n, n );
--	BN_bn2bin( a_pRsa->e, e );
--	BN_bn2bin( a_pRsa->d, d );
--	BN_bn2bin( a_pRsa->p, p );
--	BN_bn2bin( a_pRsa->q, q );
--	BN_bn2bin( a_pRsa->dmp1, dmp1 );
--	BN_bn2bin( a_pRsa->dmq1, dmq1 );
--	BN_bn2bin( a_pRsa->iqmp, iqmp );
-+	BN_bn2bin( bn, n );
-+	BN_bn2bin( be, e );
-+	BN_bn2bin( bd, d );
-+	BN_bn2bin( bp, p );
-+	BN_bn2bin( bq, q );
-+	BN_bn2bin( bdmp1, dmp1 );
-+	BN_bn2bin( bdmq1, dmq1 );
-+	BN_bn2bin( biqmp, iqmp );
- 
- 	// Create the RSA private key object
- 	rv = createObject( a_hSession, tAttr, ulAttrCount, a_hObject );
diff --git a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
similarity index 91%
rename from meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
rename to meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
index 88ef19f..8aeb8ac 100644
--- a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
+++ b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.2.bb
@@ -12,12 +12,11 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 DEPENDS = "libtspi openssl"
 DEPENDS_class-native = "trousers-native"
 
-SRCREV = "bdf9f1bc8f63cd6fc370c2deb58d03ac55079e84"
+SRCREV = "bf43837575c5f7d31865562dce7778eae970052e"
 SRC_URI = " \
 	git://git.code.sf.net/p/trousers/tpm-tools \
 	file://tpm-tools-extendpcr.patch \
 	file://04-fix-FTBFS-clang.patch \
-	file://05-openssl1.1_fix_data_mgmt.patch \
         file://openssl1.1_fix.patch \
 	"
 
-- 
2.25.1

