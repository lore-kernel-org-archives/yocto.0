Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 692E2E00B93; Sun, 16 Sep 2018 08:57:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6329AE00C82
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:43 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id r1-v6so6495862pgp.11
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=1K+ocZuX+5KhhnhbcX+5AoL2MkTkZdoDwGdb2wGXkGg=;
	b=Dec6RT06xWjudaV6VVXGMIuNgzsFZR6w8+s1GgpSzz2HIxxB4Hw84hH/YwY0VAtLjY
	j9HrWPkvD2dnUIX6CKXRHQDpt8mgVY2FhvlX6mg+/gIQOVBr6RAhh+AZ/4jTsvhQZT+6
	Dd9KcIPvyKpXfTRLjjy+s9A+OPfIp4K9ATVaC/HvneA1pez4S3PlTRs4mgf7dE3GxkCj
	4WvjojmEktbfoRhouXgJH57VKMOa+UOwnI1SjqzlFIQjE60ag7YXJ17UiMtAWEDMX58z
	QnA6fJMIZ4uUNQyQo/wpCWHzaAUKKuSzR87CKg1SVvET0F6NYKdUPDuFG0xWCmMQonvl
	mMCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=1K+ocZuX+5KhhnhbcX+5AoL2MkTkZdoDwGdb2wGXkGg=;
	b=Z6ln6z+adlDSRWNxJMx99G2v5tN5e/0n+27KOyXPn6PLFh0lqvI9CDxPz1FGKMvMB4
	K+4xqTfNGMeybxgOYmxSQ3yaNrcW0Ggi/ETD4mdaGLT1HAyar3QDmEWkIQHSS7EWQIRy
	LBVAaQPCHEtwmy38NKkXpX16qPMI3G1OTrIP6IxuTJGfQI6osmRTOE7PcrfWAfRiS3za
	wC3QPpQb8qv7zrRT9oQt8oLSmLVnrMwrGbawejD5RzQpUFL2CanHx4XA5ZOrqK8Wtjq2
	6l+iPywDW5e0AJ6Uiw7n/guQI0MmZ4ORM8gCImGHe9tKwDTFJfvepQuS37T7evaVdkL5
	bOeg==
X-Gm-Message-State: APzg51DlewS7XBomq8iPjvK5cF+2tgzUpfTWEHybJ0sJcetU/xsc3oK6
	UXi2vBZo5CBRwvuCb+iC6uqNQvUe
X-Google-Smtp-Source: ANB0VdYUiSndvHcWPSP8TcjdWirf3DZTJGia6OXYKANW6nVbinS4mEzKqSLB8dcBYHXw2V2jdNctyw==
X-Received: by 2002:a65:4289:: with SMTP id
	j9-v6mr20285734pgp.284.1537113462376; 
	Sun, 16 Sep 2018 08:57:42 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.41
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:09 -0700
Message-Id: <20180916155719.9911-15-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 15/25] tpm-tools: update to latest 1.3.9.1
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:45 -0000

refresh patch
backport debian fixes
Fix additional openssl 1.1 issue

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm-tools/files/04-fix-FTBFS-clang.patch  |  56 +++++++++
 .../files/05-openssl1.1_fix_data_mgmt.patch   | 110 ++++++++++++++++++
 .../tpm-tools/files/openssl1.1_fix.patch      |  18 +++
 .../tpm-tools/files/tpm-tools-extendpcr.patch |  32 ++---
 ...{tpm-tools_git.bb => tpm-tools_1.3.9.1.bb} |   7 +-
 5 files changed, 204 insertions(+), 19 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm/tpm-tools/files/04-fix-FTBFS-clang.patch
 create mode 100644 meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch
 create mode 100644 meta-tpm/recipes-tpm/tpm-tools/files/openssl1.1_fix.patch
 rename meta-tpm/recipes-tpm/tpm-tools/{tpm-tools_git.bb => tpm-tools_1.3.9.1.bb} (84%)

diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/04-fix-FTBFS-clang.patch b/meta-tpm/recipes-tpm/tpm-tools/files/04-fix-FTBFS-clang.patch
new file mode 100644
index 0000000..5018d45
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm-tools/files/04-fix-FTBFS-clang.patch
@@ -0,0 +1,56 @@
+Title: Fix FTBFS with clang due to uninitialized values
+Date: 2015-06-28
+Author: Alexander <sanek23994@gmail.com>
+Bug-Debian: http://bugs.debian.org/753063
+
+Upstream-Status: Backport
+tpm-tools_1.3.9.1-0.1.debian.tar
+
+Signed-off-by: Armin kuster <akuster808@gmail.com>
+
+--- tpm-tools-1.3.8/src/tpm_mgmt/tpm_present.c	2012-05-17 21:49:58.000000000 +0400
++++ tpm-tools-1.3.8-my/src/tpm_mgmt/tpm_present.c	2014-06-29 01:01:11.502081468 +0400
+@@ -165,7 +165,7 @@
+ 
+ 	TSS_BOOL bCmd, bHwd;
+ 	BOOL bRc;
+-	TSS_HPOLICY hTpmPolicy;
++	TSS_HPOLICY hTpmPolicy = 0;
+ 	char *pwd = NULL;
+ 	int pswd_len;
+ 	char rsp[5];
+--- tpm-tools-1.3.8/src/tpm_mgmt/tpm_takeownership.c	2010-09-30 21:28:09.000000000 +0400
++++ tpm-tools-1.3.8-my/src/tpm_mgmt/tpm_takeownership.c	2014-06-29 01:01:51.069373655 +0400
+@@ -67,7 +67,7 @@
+ 	char *szSrkPasswd = NULL;
+ 	int tpm_len, srk_len;
+ 	TSS_HTPM hTpm;
+-	TSS_HKEY hSrk;
++	TSS_HKEY hSrk = 0;
+ 	TSS_FLAG fSrkAttrs;
+ 	TSS_HPOLICY hTpmPolicy, hSrkPolicy;
+ 	int iRc = -1;
+--- tpm-tools-1.3.8/src/tpm_mgmt/tpm_nvwrite.c	2011-08-17 16:20:35.000000000 +0400
++++ tpm-tools-1.3.8-my/src/tpm_mgmt/tpm_nvwrite.c	2014-06-29 01:02:45.836397172 +0400
+@@ -220,7 +220,7 @@
+ 		close(fd);
+ 		fd = -1;
+ 	} else if (fillvalue >= 0) {
+-		if (length < 0) {
++		if (length == 0) {
+ 			logError(_("Requiring size parameter.\n"));
+ 			return -1;
+ 		}
+--- tpm-tools-1.3.8/src/data_mgmt/data_protect.c	2012-05-17 21:49:58.000000000 +0400
++++ tpm-tools-1.3.8-my/src/data_mgmt/data_protect.c	2014-06-29 01:03:49.863254459 +0400
+@@ -432,8 +432,8 @@
+ 
+ 	char *pszPin = NULL;
+ 
+-	CK_RV              rv;
+-	CK_SESSION_HANDLE  hSession;
++	CK_RV              rv = 0;
++	CK_SESSION_HANDLE  hSession = 0;
+ 	CK_OBJECT_HANDLE   hObject;
+ 	CK_MECHANISM       tMechanism = { CKM_AES_ECB, NULL, 0 };
+ 
diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch b/meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch
new file mode 100644
index 0000000..c2a264b
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm-tools/files/05-openssl1.1_fix_data_mgmt.patch
@@ -0,0 +1,110 @@
+Author: Philipp Kern <pkern@debian.org>
+Subject: Fix openssl1.1 support in data_mgmt
+Date: Tue, 31 Jan 2017 22:40:10 +0100
+
+Upstream-Status: Backport
+tpm-tools_1.3.9.1-0.1.debian.tar
+
+Signed-off-by: Armin kuster <akuster808@gmail.com>
+
+---
+ src/data_mgmt/data_import.c |   60 ++++++++++++++++++++++++++++----------------
+ 1 file changed, 39 insertions(+), 21 deletions(-)
+
+--- a/src/data_mgmt/data_import.c
++++ b/src/data_mgmt/data_import.c
+@@ -372,7 +372,7 @@ readX509Cert( const char  *a_pszFile,
+ 		goto out;
+ 	}
+ 
+-	if ( EVP_PKEY_type( pKey->type ) != EVP_PKEY_RSA ) {
++	if ( EVP_PKEY_base_id( pKey ) != EVP_PKEY_RSA ) {
+ 		logError( TOKEN_RSA_KEY_ERROR );
+ 
+ 		X509_free( pX509 );
+@@ -691,8 +691,13 @@ createRsaPubKeyObject( RSA
+ 
+ 	int  rc = -1;
+ 
+-	int  nLen = BN_num_bytes( a_pRsa->n );
+-	int  eLen = BN_num_bytes( a_pRsa->e );
++	const BIGNUM *bn;
++	const BIGNUM *be;
++
++	RSA_get0_key( a_pRsa, &bn, &be, NULL );
++
++	int  nLen = BN_num_bytes( bn );
++	int  eLen = BN_num_bytes( be );
+ 
+ 	CK_RV  rv;
+ 
+@@ -732,8 +737,8 @@ createRsaPubKeyObject( RSA
+ 	}
+ 
+ 	// Get binary representations of the RSA key information
+-	BN_bn2bin( a_pRsa->n, n );
+-	BN_bn2bin( a_pRsa->e, e );
++	BN_bn2bin( bn, n );
++	BN_bn2bin( be, e );
+ 
+ 	// Create the RSA public key object
+ 	rv = createObject( a_hSession, tAttr, ulAttrCount, a_hObject );
+@@ -760,14 +765,27 @@ createRsaPrivKeyObject( RSA
+ 
+ 	int  rc = -1;
+ 
+-	int  nLen = BN_num_bytes( a_pRsa->n );
+-	int  eLen = BN_num_bytes( a_pRsa->e );
+-	int  dLen = BN_num_bytes( a_pRsa->d );
+-	int  pLen = BN_num_bytes( a_pRsa->p );
+-	int  qLen = BN_num_bytes( a_pRsa->q );
+-	int  dmp1Len = BN_num_bytes( a_pRsa->dmp1 );
+-	int  dmq1Len = BN_num_bytes( a_pRsa->dmq1 );
+-	int  iqmpLen = BN_num_bytes( a_pRsa->iqmp );
++	const BIGNUM *bn;
++	const BIGNUM *be;
++	const BIGNUM *bd;
++	const BIGNUM *bp;
++	const BIGNUM *bq;
++	const BIGNUM *bdmp1;
++	const BIGNUM *bdmq1;
++	const BIGNUM *biqmp;
++
++	RSA_get0_key( a_pRsa, &bn, &be, &bd);
++	RSA_get0_factors( a_pRsa, &bp, &bq);
++	RSA_get0_crt_params( a_pRsa, &bdmp1, &bdmq1, &biqmp );
++
++	int  nLen = BN_num_bytes( bn );
++	int  eLen = BN_num_bytes( be );
++	int  dLen = BN_num_bytes( bd );
++	int  pLen = BN_num_bytes( bp );
++	int  qLen = BN_num_bytes( bq );
++	int  dmp1Len = BN_num_bytes( bdmp1 );
++	int  dmq1Len = BN_num_bytes( bdmq1 );
++	int  iqmpLen = BN_num_bytes( biqmp );
+ 
+ 	CK_RV  rv;
+ 
+@@ -821,14 +839,14 @@ createRsaPrivKeyObject( RSA
+ 	}
+ 
+ 	// Get binary representations of the RSA key information
+-	BN_bn2bin( a_pRsa->n, n );
+-	BN_bn2bin( a_pRsa->e, e );
+-	BN_bn2bin( a_pRsa->d, d );
+-	BN_bn2bin( a_pRsa->p, p );
+-	BN_bn2bin( a_pRsa->q, q );
+-	BN_bn2bin( a_pRsa->dmp1, dmp1 );
+-	BN_bn2bin( a_pRsa->dmq1, dmq1 );
+-	BN_bn2bin( a_pRsa->iqmp, iqmp );
++	BN_bn2bin( bn, n );
++	BN_bn2bin( be, e );
++	BN_bn2bin( bd, d );
++	BN_bn2bin( bp, p );
++	BN_bn2bin( bq, q );
++	BN_bn2bin( bdmp1, dmp1 );
++	BN_bn2bin( bdmq1, dmq1 );
++	BN_bn2bin( biqmp, iqmp );
+ 
+ 	// Create the RSA private key object
+ 	rv = createObject( a_hSession, tAttr, ulAttrCount, a_hObject );
diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/openssl1.1_fix.patch b/meta-tpm/recipes-tpm/tpm-tools/files/openssl1.1_fix.patch
new file mode 100644
index 0000000..9ae3f72
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm-tools/files/openssl1.1_fix.patch
@@ -0,0 +1,18 @@
+Upstream-Status: Pending
+Update to build with openssl 1.1.x
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/src/cmds/tpm_extendpcr.c
+===================================================================
+--- git.orig/src/cmds/tpm_extendpcr.c
++++ git/src/cmds/tpm_extendpcr.c
+@@ -136,7 +136,7 @@ int main(int argc, char **argv)
+ 
+ 		unsigned char msg[EVP_MAX_MD_SIZE];
+ 		unsigned int msglen;
+-		EVP_MD_CTX ctx;
++		EVP_MD_CTX *ctx = EVP_MD_CTX_new();
+ 		EVP_DigestInit(&ctx, EVP_sha1());
+ 		while ((lineLen = BIO_read(bin, line, sizeof(line))) > 0)
+ 			EVP_DigestUpdate(&ctx, line, lineLen);
diff --git a/meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch b/meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
index ab5e683..40150af 100644
--- a/meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
+++ b/meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
@@ -1,8 +1,8 @@
-Index: tpm-tools-1.3.8/include/tpm_tspi.h
+Index: git/include/tpm_tspi.h
 ===================================================================
---- tpm-tools-1.3.8.orig/include/tpm_tspi.h	2011-08-17 08:20:35.000000000 -0400
-+++ tpm-tools-1.3.8/include/tpm_tspi.h	2013-01-05 23:26:31.571598217 -0500
-@@ -117,6 +117,10 @@
+--- git.orig/include/tpm_tspi.h
++++ git/include/tpm_tspi.h
+@@ -117,6 +117,10 @@ TSS_RESULT tpmPcrRead(TSS_HTPM a_hTpm, U
  			UINT32 *a_PcrSize, BYTE **a_PcrValue);
  TSS_RESULT pcrcompositeSetPcrValue(TSS_HPCRS a_hPcrs, UINT32 a_Idx,
  					UINT32 a_PcrSize, BYTE *a_PcrValue);
@@ -13,11 +13,11 @@ Index: tpm-tools-1.3.8/include/tpm_tspi.h
  #ifdef TSS_LIB_IS_12
  TSS_RESULT unloadVersionInfo(UINT64 *offset, BYTE *blob, TPM_CAP_VERSION_INFO *v);
  TSS_RESULT pcrcompositeSetPcrLocality(TSS_HPCRS a_hPcrs, UINT32 localityValue);
-Index: tpm-tools-1.3.8/lib/tpm_tspi.c
+Index: git/lib/tpm_tspi.c
 ===================================================================
---- tpm-tools-1.3.8.orig/lib/tpm_tspi.c	2011-08-17 08:20:35.000000000 -0400
-+++ tpm-tools-1.3.8/lib/tpm_tspi.c	2013-01-05 23:27:37.731593490 -0500
-@@ -594,6 +594,20 @@
+--- git.orig/lib/tpm_tspi.c
++++ git/lib/tpm_tspi.c
+@@ -594,6 +594,20 @@ pcrcompositeSetPcrValue(TSS_HPCRS a_hPcr
  	return result;
  }
  
@@ -38,10 +38,10 @@ Index: tpm-tools-1.3.8/lib/tpm_tspi.c
  #ifdef TSS_LIB_IS_12
  /*
   * These getPasswd functions will wrap calls to the other functions and check to see if the TSS
-Index: tpm-tools-1.3.8/src/cmds/Makefile.am
+Index: git/src/cmds/Makefile.am
 ===================================================================
---- tpm-tools-1.3.8.orig/src/cmds/Makefile.am	2011-08-15 13:52:08.000000000 -0400
-+++ tpm-tools-1.3.8/src/cmds/Makefile.am	2013-01-05 23:30:46.223593698 -0500
+--- git.orig/src/cmds/Makefile.am
++++ git/src/cmds/Makefile.am
 @@ -22,6 +22,7 @@
  #
  
@@ -50,16 +50,16 @@ Index: tpm-tools-1.3.8/src/cmds/Makefile.am
  			tpm_unsealdata
  
  if TSS_LIB_IS_12
-@@ -33,4 +34,5 @@
- LDADD		=	$(top_builddir)/lib/libtpm_tspi.la -ltspi $(top_builddir)/lib/libtpm_unseal.la -ltpm_unseal -lcrypto
+@@ -33,4 +34,5 @@ endif
+ LDADD		=	$(top_builddir)/lib/libtpm_tspi.la -ltspi $(top_builddir)/lib/libtpm_unseal.la -ltpm_unseal -lcrypto @INTLLIBS@
  
  tpm_sealdata_SOURCES = tpm_sealdata.c
 +tpm_extendpcr_SOURCES = tpm_extendpcr.c
  tpm_unsealdata_SOURCES = tpm_unsealdata.c
-Index: tpm-tools-1.3.8/src/cmds/tpm_extendpcr.c
+Index: git/src/cmds/tpm_extendpcr.c
 ===================================================================
---- /dev/null	1970-01-01 00:00:00.000000000 +0000
-+++ tpm-tools-1.3.8/src/cmds/tpm_extendpcr.c	2013-01-05 23:37:43.403585514 -0500
+--- /dev/null
++++ git/src/cmds/tpm_extendpcr.c
 @@ -0,0 +1,181 @@
 +/*
 + * The Initial Developer of the Original Code is International
diff --git a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_git.bb b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
similarity index 84%
rename from meta-tpm/recipes-tpm/tpm-tools/tpm-tools_git.bb
rename to meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
index f670bff..88ef19f 100644
--- a/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_git.bb
+++ b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_1.3.9.1.bb
@@ -12,14 +12,15 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 DEPENDS = "libtspi openssl"
 DEPENDS_class-native = "trousers-native"
 
-SRCREV = "5c5126bedf2da97906358adcfb8c43c86e7dd0ee"
+SRCREV = "bdf9f1bc8f63cd6fc370c2deb58d03ac55079e84"
 SRC_URI = " \
 	git://git.code.sf.net/p/trousers/tpm-tools \
 	file://tpm-tools-extendpcr.patch \
+	file://04-fix-FTBFS-clang.patch \
+	file://05-openssl1.1_fix_data_mgmt.patch \
+        file://openssl1.1_fix.patch \
 	"
 
-PV = "1.3.9.1+git${SRCPV}"
-
 inherit autotools-brokensep gettext
 
 S = "${WORKDIR}/git"
-- 
2.17.1


