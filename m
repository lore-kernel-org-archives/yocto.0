Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B139BE00D23; Sun,  8 Oct 2017 10:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4244EE00CC1
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 10:28:43 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id v78so10298542pgb.5
	for <yocto@yoctoproject.org>; Sun, 08 Oct 2017 10:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=PPavvLqFq1Pw8blS+TfuMl/oKawCofCV8iPOj7Twc6Y=;
	b=VeZM8vVQ5f0AZaUkjP/1FFndolGPWjzqB8x3RSGYPbZOjYQPIRFIYOm2kTDbZEJ5U+
	/+PPXXuAgA6gtiZTPhImDnZJKxKZt19FXwj5KXSg9WxuNce1O3/9x6MrtBWSi5HgF0IU
	ZmzG0QsZYrNPgfgG2Yd3uVC2+Dc3DEkLYkLWDU4alDMMzhycVaiafbLUgMDO2WP04wVZ
	tz+uYvN3XAF09fAWhJeeJZ0BK/eWAQLWIr79xSpJQ+Iw+50wWt4S8LNE1IXOlycvsiDU
	hZspV0TFUxm3KWjzpt4zYR//W0zI7O4ik8kwBgkhC6XSBuF62lm6WVPvKfL2IaOZm4bL
	QdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=PPavvLqFq1Pw8blS+TfuMl/oKawCofCV8iPOj7Twc6Y=;
	b=IDJwNGK7f6gLBz/v506tSaj4P0T3ScCNEWgy8JMoXAkPBmhnLMuv5ZyUDLP/I8Pe0d
	hNSWysxv80oqaMeQz+wdoX8Tk56P//fVs9uJ3lglhHdyVqm3XaRXgOvPFoOPV+gjfBOD
	C4fLUpFKgsfJ0sVMcJoLA/F7xbs26e0LYq3di1C0UOeRj9RCJHWhY6BN5KUxN3O9wLM0
	iXxNZiT+ksRUKSTWXXCDBys3guG03D4F5KIOqIbGrn8mcb1AvCoOr5QPkCCieXXz3DUx
	HM2+K/lvsvprd6t4lvhBi3OuRBkd1OLpS7DYLZ88WiVIv+SDO+rT94GUH/47lueKEuCY
	rSqw==
X-Gm-Message-State: AMCzsaVswulFe7gijKvnjTWU6BIxF1TecvG/0V83FEkF/GBuMwQc4X/l
	c+DpN0WZ8ftg8JhRtmmervU=
X-Google-Smtp-Source: AOwi7QD8HIhQWXvGOMSgc68rw1GosDbaAlHwCEsG277oBguhTCjhzVKt5EJFdrjw/1E0x8qH1Y9zGQ==
X-Received: by 10.98.162.26 with SMTP id m26mr2450600pff.0.1507483723170;
	Sun, 08 Oct 2017 10:28:43 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:b4af:95f:9afa:62fc])
	by smtp.gmail.com with ESMTPSA id
	a81sm10563350pfe.32.2017.10.08.10.28.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 08 Oct 2017 10:28:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  8 Oct 2017 10:28:38 -0700
Message-Id: <1507483718-5452-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
References: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 4/4] openssl-tpm-engine: add package
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
X-List-Received-Date: Sun, 08 Oct 2017 17:28:47 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...ate-tpm-key-support-well-known-key-option.patch |  99 ++++++++
 .../files/0002-libtpm-support-env-TPM_SRK_PW.patch |  80 +++++++
 .../files/0003-Fix-not-building-libtpm.la.patch    |  25 ++
 ...-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch | 254 +++++++++++++++++++++
 ...-tpm-engine-change-variable-c-type-from-c.patch |  34 +++
 .../openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb |  78 +++++++
 6 files changed, 570 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb

diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
new file mode 100644
index 0000000..67071b6
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
@@ -0,0 +1,99 @@
+commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
+Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
+Date:   Wed Jun 19 18:57:13 2013 +0800
+
+support well-known password in openssl-tpm-engine.
+
+Add "-z" option to select well known password in create_tpm_key tool.
+
+Signed-off-by: Junxian.Xiao <Junxian.Xiao@windriver.com>
+
+diff --git a/create_tpm_key.c b/create_tpm_key.c
+index fee917f..7b94d62 100644
+--- a/create_tpm_key.c
++++ b/create_tpm_key.c
+@@ -46,6 +46,8 @@
+ #include <trousers/tss.h>
+ #include <trousers/trousers.h>
+ 
++#define TPM_WELL_KNOWN_KEY_LEN 20   /*well know key length is 20 bytes zero*/
++
+ #define print_error(a,b) \
+ 	fprintf(stderr, "%s:%d %s result: 0x%x (%s)\n", __FILE__, __LINE__, \
+ 		a, b, Trspi_Error_String(b))
+@@ -70,6 +72,7 @@ usage(char *argv0)
+ 		"\t\t-e|--enc-scheme  encryption scheme to use [PKCSV15] or OAEP\n"
+ 		"\t\t-q|--sig-scheme  signature scheme to use [DER] or SHA1\n"
+ 		"\t\t-s|--key-size    key size in bits [2048]\n"
++		"\t\t-z|--zerokey     use well known 20 bytes zero as SRK password.\n"
+ 		"\t\t-a|--auth        require a password for the key [NO]\n"
+ 		"\t\t-p|--popup       use TSS GUI popup dialogs to get the password "
+ 		"for the\n\t\t\t\t key [NO] (implies --auth)\n"
+@@ -147,6 +150,7 @@ int main(int argc, char **argv)
+ 	int		asn1_len;
+ 	char		*filename, c, *openssl_key = NULL;
+ 	int		option_index, auth = 0, popup = 0, wrap = 0;
++	int		wellknownkey = 0;
+ 	UINT32		enc_scheme = TSS_ES_RSAESPKCSV15;
+ 	UINT32		sig_scheme = TSS_SS_RSASSAPKCS1V15_DER;
+ 	UINT32		key_size = 2048;
+@@ -154,12 +158,15 @@ int main(int argc, char **argv)
+ 
+ 	while (1) {
+ 		option_index = 0;
+-		c = getopt_long(argc, argv, "pe:q:s:ahw:",
++		c = getopt_long(argc, argv, "pe:q:s:zahw:",
+ 				long_options, &option_index);
+ 		if (c == -1)
+ 			break;
+ 
+ 		switch (c) {
++			case 'z':
++				wellknownkey = 1;
++				break;
+ 			case 'a':
+ 				initFlags |= TSS_KEY_AUTHORIZATION;
+ 				auth = 1;
+@@ -293,6 +300,8 @@ int main(int argc, char **argv)
+ 
+ 	if (srk_authusage) {
+ 		char *authdata = calloc(1, 128);
++		TSS_FLAG secretMode = TSS_SECRET_MODE_PLAIN;
++		int authlen = 0;
+ 
+ 		if (!authdata) {
+ 			fprintf(stderr, "malloc failed.\n");
+@@ -309,17 +318,26 @@ int main(int argc, char **argv)
+ 			exit(result);
+ 		}
+ 
+-		if (EVP_read_pw_string(authdata, 128, "SRK Password: ", 0)) {
+-			Tspi_Context_CloseObject(hContext, hKey);
+-			Tspi_Context_Close(hContext);
+-			free(authdata);
+-			exit(result);
++		if (wellknownkey) {
++			memset(authdata, 0, TPM_WELL_KNOWN_KEY_LEN);
++			secretMode = TSS_SECRET_MODE_SHA1;
++			authlen = TPM_WELL_KNOWN_KEY_LEN;
++		}
++		else {
++			if (EVP_read_pw_string(authdata, 128, "SRK Password: ", 0)) {
++				Tspi_Context_CloseObject(hContext, hKey);
++				Tspi_Context_Close(hContext);
++				free(authdata);
++				exit(result);
++			}
++			secretMode = TSS_SECRET_MODE_PLAIN;
++			authlen = strlen(authdata);
+ 		}
+ 
+ 		//Set Secret
+ 		if ((result = Tspi_Policy_SetSecret(srkUsagePolicy,
+-						    TSS_SECRET_MODE_PLAIN,
+-						    strlen(authdata),
++						    secretMode,
++						    authlen,
+ 						    (BYTE *)authdata))) {
+ 			print_error("Tspi_Policy_SetSecret", result);
+ 			free(authdata);
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
new file mode 100644
index 0000000..f718f2e
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
@@ -0,0 +1,80 @@
+commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
+Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
+Date:   Wed Jun 19 18:57:13 2013 +0800
+
+support reading SRK password from env TPM_SRK_PW
+
+Add "env TPM_SRK_PW=xxxx" to set password for libtpm.so. Specially,
+use "env TPM_SRK_PW=#WELLKNOWN#" to set well known password.
+
+Signed-off-by: Junxian.Xiao <Junxian.Xiao@windriver.com>
+
+diff --git a/e_tpm.c b/e_tpm.c
+index f3e8bcf..7dcb75a 100644
+--- a/e_tpm.c
++++ b/e_tpm.c
+@@ -38,6 +38,8 @@
+ 
+ #include "e_tpm.h"
+ 
++#define TPM_WELL_KNOWN_KEY_LEN 20   /*well know key length is 20 bytes zero*/
++
+ //#define DLOPEN_TSPI
+ 
+ #ifndef OPENSSL_NO_HW
+@@ -248,6 +250,10 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+ 	TSS_RESULT result;
+ 	UINT32 authusage;
+ 	BYTE *auth;
++	char *srkPasswd = NULL;
++	TSS_FLAG secretMode = secret_mode;
++	int authlen = 0;
++
+ 
+ 	if (hSRK != NULL_HKEY) {
+ 		DBGFN("SRK is already loaded.");
+@@ -299,18 +305,36 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+ 		return 0;
+ 	}
+ 
+-	if (!tpm_engine_get_auth(ui, (char *)auth, 128, "SRK authorization: ",
+-				cb_data)) {
+-		Tspi_Context_CloseObject(hContext, hSRK);
+-		free(auth);
+-		TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
+-		return 0;
++	srkPasswd = getenv("TPM_SRK_PW");
++	if (NULL != srkPasswd) {
++		if (0 == strcmp(srkPasswd, "#WELLKNOWN#")) {
++			memset(auth, 0, TPM_WELL_KNOWN_KEY_LEN);
++			secretMode = TSS_SECRET_MODE_SHA1;
++			authlen = TPM_WELL_KNOWN_KEY_LEN;
++		} else {
++			int authbuflen = 128;
++			memset(auth, 0, authbuflen);
++			strncpy(auth, srkPasswd, authbuflen-1);
++			secretMode = TSS_SECRET_MODE_PLAIN;
++			authlen = strlen(auth);
++		}
++	}
++	else {
++		if (!tpm_engine_get_auth(ui, (char *)auth, 128,
++				"SRK authorization: ", cb_data)) {
++			Tspi_Context_CloseObject(hContext, hSRK);
++			free(auth);
++			TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
++			return 0;
++		}
++		secretMode = secret_mode;
++		authlen = strlen(auth);
+ 	}
+ 
+ 	/* secret_mode is a global that may be set by engine ctrl
+ 	 * commands.  By default, its set to TSS_SECRET_MODE_PLAIN */
+-	if ((result = Tspi_Policy_SetSecret(hSRKPolicy, secret_mode,
+-					      strlen((char *)auth), auth))) {
++	if ((result = Tspi_Policy_SetSecret(hSRKPolicy, secretMode,
++					      authlen, auth))) {
+ 		Tspi_Context_CloseObject(hContext, hSRK);
+ 		free(auth);
+ 		TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch
new file mode 100644
index 0000000..d24a150
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch
@@ -0,0 +1,25 @@
+From 7848445a1f4c750ef73bf96f5e89d402f87a1756 Mon Sep 17 00:00:00 2001
+From: Lans Zhang <jia.zhang@windriver.com>
+Date: Mon, 19 Jun 2017 14:54:28 +0800
+Subject: [PATCH] Fix not building libtpm.la
+
+Signed-off-by: Lans Zhang <jia.zhang@windriver.com>
+---
+ Makefile.am | 4 +++-
+ 1 file changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 6695656..634a7e6 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -10,4 +10,6 @@ libtpm_la_LIBADD=-lcrypto -lc -ltspi
+ libtpm_la_SOURCES=e_tpm.c e_tpm.h e_tpm_err.c
+ 
+ create_tpm_key_SOURCES=create_tpm_key.c
+-create_tpm_key_LDADD=-ltspi
++create_tpm_key_LDFLAGS=-ltspi
++
++LDADD=libtpm.la
+-- 
+2.7.5
+
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
new file mode 100644
index 0000000..a88148f
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
@@ -0,0 +1,254 @@
+From eb28ad92a2722fd30f8114840cf2b1ade26b80ee Mon Sep 17 00:00:00 2001
+From: Limeng <Meng.Li@windriver.com>
+Date: Fri, 23 Jun 2017 11:39:04 +0800
+Subject: [PATCH] tpm:openssl-tpm-engine:parse an encrypted tpm SRK password 
+ from env
+
+Before, we support reading SRK password from env TPM_SRK_PW,
+but it is a plain password and not secure.
+So, we improve it and support to get an encrypted (AES algorithm)
+SRK password from env, and then parse it. The default decrypting
+AES password and salt is set in bb file.
+When we initialize TPM, and set a SRK pw, and then we need to
+encrypt it with the same AES password and salt by AES algorithm.
+At last, we set a env as below:
+export TPM_SRK_ENC_PW=xxxxxxxx
+"xxxxxxxx" is the encrypted SRK password for libtpm.so.
+
+Signed-off-by: Meng Li <Meng.Li@windriver.com>
+---
+ e_tpm.c     | 157 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
+ e_tpm.h     |   4 ++
+ e_tpm_err.c |   4 ++
+ 3 files changed, 164 insertions(+), 1 deletion(-)
+
+diff --git a/e_tpm.c b/e_tpm.c
+index 7dcb75a..11bf74b 100644
+--- a/e_tpm.c
++++ b/e_tpm.c
+@@ -245,6 +245,118 @@ void ENGINE_load_tpm(void)
+ 	ERR_clear_error();
+ }
+ 
++static int tpm_decode_base64(unsigned char *indata,
++				int in_len,
++				unsigned char *outdata,
++				int *out_len)
++{
++	int total_len, len, ret;
++	EVP_ENCODE_CTX dctx;
++
++	EVP_DecodeInit(&dctx);
++
++	total_len = 0;
++	ret = EVP_DecodeUpdate(&dctx, outdata, &len, indata, in_len);
++	if (ret < 0) {
++		TSSerr(TPM_F_TPM_DECODE_BASE64, TPM_R_DECODE_BASE64_FAILED);
++		return 1;
++	}
++
++	total_len += len;
++	ret = EVP_DecodeFinal(&dctx, outdata, &len);
++	if (ret < 0) {
++		TSSerr(TPM_F_TPM_DECODE_BASE64, TPM_R_DECODE_BASE64_FAILED);
++		return 1;
++	}
++	total_len += len;
++
++	*out_len = total_len;
++
++	return 0;
++}
++
++static int tpm_decrypt_srk_pw(unsigned char *indata, int in_len,
++				unsigned char *outdata,
++				int *out_len)
++{
++	int dec_data_len, dec_data_lenfinal;
++	unsigned char dec_data[256];
++	unsigned char *aes_pw;
++	unsigned char aes_salt[PKCS5_SALT_LEN];
++	unsigned char key[EVP_MAX_KEY_LENGTH], iv[EVP_MAX_IV_LENGTH];
++	const EVP_CIPHER *cipher = NULL;
++	const EVP_MD *dgst = NULL;
++	EVP_CIPHER_CTX *ctx = NULL;
++
++	if (sizeof(SRK_DEC_SALT) - 1 > PKCS5_SALT_LEN) {
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		return 1;
++	}
++
++	aes_pw = malloc(sizeof(SRK_DEC_PW) - 1);
++	if (aes_pw == NULL) {
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		return 1;
++	}
++
++	memset(aes_salt, 0x00, sizeof(aes_salt));
++	memcpy(aes_pw, SRK_DEC_PW, sizeof(SRK_DEC_PW) - 1);
++	memcpy(aes_salt, SRK_DEC_SALT, sizeof(SRK_DEC_SALT) - 1);
++
++	cipher = EVP_get_cipherbyname("aes-128-cbc");
++	if (cipher == NULL) {
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		free(aes_pw);
++		return 1;
++	}
++	dgst = EVP_sha256();
++
++	EVP_BytesToKey(cipher, dgst, aes_salt, (unsigned char *)aes_pw, sizeof(SRK_DEC_PW) - 1, 1, key, iv);
++
++	ctx = EVP_CIPHER_CTX_new();
++	/* Don't set key or IV right away; we want to check lengths */
++	if (!EVP_CipherInit_ex(ctx, cipher, NULL, NULL, NULL, 0)) {
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		free(aes_pw);
++		return 1;
++	}
++
++	OPENSSL_assert(EVP_CIPHER_CTX_key_length(ctx) == 16);
++	OPENSSL_assert(EVP_CIPHER_CTX_iv_length(ctx) == 16);
++
++	if (!EVP_CipherInit_ex(ctx, NULL, NULL, key, iv, 0)) {
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		free(aes_pw);
++		return 1;
++	}
++
++	if (!EVP_CipherUpdate(ctx, dec_data, &dec_data_len, indata, in_len)) {
++		/* Error */
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		free(aes_pw);
++		EVP_CIPHER_CTX_free(ctx);
++		return 1;
++	}
++
++	if (!EVP_CipherFinal_ex(ctx, dec_data + dec_data_len, &dec_data_lenfinal)) {
++		/* Error */
++		TSSerr(TPM_F_TPM_DECRYPT_SRK_PW, TPM_R_DECRYPT_SRK_PW_FAILED);
++		free(aes_pw);
++		EVP_CIPHER_CTX_free(ctx);
++		return 1;
++	}
++
++	dec_data_len = dec_data_len + dec_data_lenfinal;
++
++	memcpy(outdata, dec_data, dec_data_len);
++	*out_len = dec_data_len;
++
++	free(aes_pw);
++	EVP_CIPHER_CTX_free(ctx);
++
++	return 0;
++}
++
+ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+ {
+ 	TSS_RESULT result;
+@@ -305,8 +417,50 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+ 		return 0;
+ 	}
+ 
+-	srkPasswd = getenv("TPM_SRK_PW");
++	srkPasswd = getenv("TPM_SRK_ENC_PW");
+ 	if (NULL != srkPasswd) {
++		int in_len = strlen(srkPasswd);
++		int out_len;
++		unsigned char *out_buf;
++
++		if (!in_len || in_len % 4) {
++			Tspi_Context_CloseObject(hContext, hSRK);
++			free(auth);
++			TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
++			return 0;
++		}
++
++		out_len = in_len * 3 / 4;
++		out_buf = malloc(out_len);
++		if (NULL == out_buf) {
++			Tspi_Context_CloseObject(hContext, hSRK);
++			free(auth);
++			TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
++			return 0;
++		}
++
++		if (tpm_decode_base64(srkPasswd, strlen(srkPasswd),
++					out_buf, &out_len)) {
++			Tspi_Context_CloseObject(hContext, hSRK);
++			free(auth);
++			free(out_buf);
++			TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
++			return 0;
++		}
++
++		if (tpm_decrypt_srk_pw(out_buf, out_len,
++							auth, &authlen)) {
++			Tspi_Context_CloseObject(hContext, hSRK);
++			free(auth);
++			free(out_buf);
++			TSSerr(TPM_F_TPM_LOAD_SRK, TPM_R_REQUEST_FAILED);
++			return 0;
++		}
++		secretMode = TSS_SECRET_MODE_PLAIN;
++		free(out_buf);
++	}
++#ifdef TPM_SRK_PLAIN_PW
++	else if (NULL != (srkPasswd = getenv("TPM_SRK_PW")) {
+ 		if (0 == strcmp(srkPasswd, "#WELLKNOWN#")) {
+ 			memset(auth, 0, TPM_WELL_KNOWN_KEY_LEN);
+ 			secretMode = TSS_SECRET_MODE_SHA1;
+@@ -319,6 +473,7 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+ 			authlen = strlen(auth);
+ 		}
+ 	}
++#endif
+ 	else {
+ 		if (!tpm_engine_get_auth(ui, (char *)auth, 128,
+ 				"SRK authorization: ", cb_data)) {
+diff --git a/e_tpm.h b/e_tpm.h
+index 6316e0b..56ff202 100644
+--- a/e_tpm.h
++++ b/e_tpm.h
+@@ -66,6 +66,8 @@ void ERR_TSS_error(int function, int reason, char *file, int line);
+ #define TPM_F_TPM_FILL_RSA_OBJECT		116
+ #define TPM_F_TPM_ENGINE_GET_AUTH		117
+ #define TPM_F_TPM_CREATE_SRK_POLICY		118
++#define TPM_F_TPM_DECODE_BASE64			119
++#define TPM_F_TPM_DECRYPT_SRK_PW		120
+ 
+ /* Reason codes. */
+ #define TPM_R_ALREADY_LOADED			100
+@@ -96,6 +98,8 @@ void ERR_TSS_error(int function, int reason, char *file, int line);
+ #define TPM_R_ID_INVALID			125
+ #define TPM_R_UI_METHOD_FAILED			126
+ #define TPM_R_UNKNOWN_SECRET_MODE		127
++#define TPM_R_DECODE_BASE64_FAILED		128
++#define TPM_R_DECRYPT_SRK_PW_FAILED		129
+ 
+ /* structure pointed to by the RSA object's app_data pointer */
+ struct rsa_app_data
+diff --git a/e_tpm_err.c b/e_tpm_err.c
+index 25a5d0f..439e267 100644
+--- a/e_tpm_err.c
++++ b/e_tpm_err.c
+@@ -235,6 +235,8 @@ static ERR_STRING_DATA TPM_str_functs[] = {
+ 	{ERR_PACK(0, TPM_F_TPM_BIND_FN, 0), "TPM_BIND_FN"},
+ 	{ERR_PACK(0, TPM_F_TPM_FILL_RSA_OBJECT, 0), "TPM_FILL_RSA_OBJECT"},
+ 	{ERR_PACK(0, TPM_F_TPM_ENGINE_GET_AUTH, 0), "TPM_ENGINE_GET_AUTH"},
++	{ERR_PACK(0, TPM_F_TPM_DECODE_BASE64, 0), "TPM_DECODE_BASE64"},
++	{ERR_PACK(0, TPM_F_TPM_DECRYPT_SRK_PW, 0), "TPM_DECRYPT_SRK_PW"},
+ 	{0, NULL}
+ };
+ 
+@@ -265,6 +267,8 @@ static ERR_STRING_DATA TPM_str_reasons[] = {
+ 	{TPM_R_FILE_READ_FAILED, "failed reading the key file"},
+ 	{TPM_R_ID_INVALID, "engine id doesn't match"},
+ 	{TPM_R_UI_METHOD_FAILED, "ui function failed"},
++	{TPM_R_DECODE_BASE64_FAILED, "decode base64 failed"},
++	{TPM_R_DECRYPT_SRK_PW_FAILED, "decrypt srk password failed"},
+ 	{0, NULL}
+ };
+ 
+-- 
+2.9.3
+
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
new file mode 100644
index 0000000..076704d
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
@@ -0,0 +1,34 @@
+From fb44e2814fd819c086f9a4c925427f89c0e8cec6 Mon Sep 17 00:00:00 2001
+From: Limeng <Meng.Li@windriver.com>
+Date: Fri, 21 Jul 2017 16:32:02 +0800
+Subject: [PATCH] tpm:openssl-tpm-engine: change variable c type from char
+ into int
+
+refer to getopt_long() function definition, its return value type is
+int. So, change variable c type from char into int.
+On arm platform, when getopt_long() calling fails, if we define c as
+char type, its value will be 255, not -1. This will cause code enter
+wrong case.
+
+Signed-off-by: Meng Li <Meng.Li@windriver.com>
+---
+ create_tpm_key.c |    3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/create_tpm_key.c b/create_tpm_key.c
+index 7b94d62..f30af90 100644
+--- a/create_tpm_key.c
++++ b/create_tpm_key.c
+@@ -148,7 +148,8 @@ int main(int argc, char **argv)
+ 	ASN1_OCTET_STRING *blob_str;
+ 	unsigned char	*blob_asn1 = NULL;
+ 	int		asn1_len;
+-	char		*filename, c, *openssl_key = NULL;
++	char		*filename, *openssl_key = NULL;
++	int		c;
+ 	int		option_index, auth = 0, popup = 0, wrap = 0;
+ 	int		wellknownkey = 0;
+ 	UINT32		enc_scheme = TSS_ES_RSAESPKCSV15;
+-- 
+1.7.9.5
+
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb
new file mode 100644
index 0000000..4854f70
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb
@@ -0,0 +1,78 @@
+DESCRIPTION = "OpenSSL secure engine based on TPM hardware"
+HOMEPAGE = "https://sourceforge.net/projects/trousers/"
+SECTION = "security/tpm"
+
+LICENSE = "openssl"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=11f0ee3af475c85b907426e285c9bb52"
+
+DEPENDS += "openssl trousers"
+
+SRC_URI = "\
+    git://git.code.sf.net/p/trousers/openssl_tpm_engine \
+    file://0001-create-tpm-key-support-well-known-key-option.patch \
+    file://0002-libtpm-support-env-TPM_SRK_PW.patch \
+    file://0003-Fix-not-building-libtpm.la.patch \
+    file://0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch \
+    file://0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch \
+"
+SRCREV = "bbc2b1af809f20686e0d3553a62f0175742c0d60"
+
+S = "${WORKDIR}/git"
+
+inherit autotools-brokensep
+
+# The definitions below are used to decrypt the srk password.
+# It is allowed to define the values in 3 forms: string, hex number and
+# the hybrid, e.g,
+# srk_dec_pw = "incendia"
+# srk_dec_pw = "\x69\x6e\x63\x65\x6e\x64\x69\x61"
+# srk_dec_pw = "\x1""nc""\x3""nd""\x1""a"
+#
+# Due to the limit of escape character, the hybrid must be written in
+# above style. The actual values defined below in C code style are:
+# srk_dec_pw[] = { 0x01, 'n', 'c', 0x03, 'n', 'd', 0x01, 'a' };
+# srk_dec_salt[] = { 'r', 0x00, 0x00, 't' };
+srk_dec_pw ?= "\\"\\\x1\\"\\"nc\\"\\"\\\x3\\"\\"nd\\"\\"\\\x1\\"\\"a\\""
+srk_dec_salt ?= "\\"r\\"\\"\\\x00\\\x00\\"\\"t\\""
+
+CFLAGS_append += "-DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
+
+# Uncomment below line if using the plain srk password for development
+#CFLAGS_append += "-DTPM_SRK_PLAIN_PW"
+
+do_configure_prepend() {
+    cd "${S}"
+    cp LICENSE COPYING
+    touch NEWS AUTHORS ChangeLog
+}
+
+do_install_append() {
+    install -m 0755 -d "${D}${libdir}/engines"
+    install -m 0755 -d "${D}${prefix}/local/ssl/lib/engines"
+    install -m 0755 -d "${D}${libdir}/ssl/engines"
+
+    cp -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${libdir}/libtpm.so.0"
+    cp -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${libdir}/engines/libtpm.so"
+    cp -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${prefix}/local/ssl/lib/engines/libtpm.so"
+    mv -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${libdir}/ssl/engines/libtpm.so"
+    mv -f "${D}${libdir}/openssl/engines/libtpm.la" "${D}${libdir}/ssl/engines/libtpm.la"
+    rm -rf "${D}${libdir}/openssl"
+}
+
+FILES_${PN}-staticdev += "${libdir}/ssl/engines/libtpm.la"
+FILES_${PN}-dbg += "\
+    ${libdir}/ssl/engines/.debug \
+    ${libdir}/engines/.debug \
+    ${prefix}/local/ssl/lib/engines/.debug \
+"
+FILES_${PN} += "\
+    ${libdir}/ssl/engines/libtpm.so* \
+    ${libdir}/engines/libtpm.so* \
+    ${libdir}/libtpm.so* \
+    ${prefix}/local/ssl/lib/engines/libtpm.so* \
+"
+
+RDEPENDS_${PN} += "libcrypto libtspi"
+
+INSANE_SKIP_${PN} = "libdir"
+INSANE_SKIP_${PN}-dbg = "libdir"
-- 
2.7.4


