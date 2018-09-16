Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA4BEE00C15; Sun, 16 Sep 2018 08:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2469FE00C0B
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id s13-v6so6407397pfi.7
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=XGj6RS+B/pgXendj1ZnGnX3LwcRxLMI5NbIX4j3qjDQ=;
	b=hGPUpAZAYkGuNBN7dBL99dSWKcD0fKiFOZqjgx51d8Fj2CyOTHAUcD0rPRKEf9qmao
	BFZXX/jVTAy8JGIx+0s5Di4y0dm1Fy9ArECODn9nC3GVmWwhXccy5hVEj5UeB90Ze66n
	g/ktb8BbAFKZhfjcXsywEuIDEbPsq+a+8oysTIaKbZ6JJAHiMTGiMP9eAz5ymEoaZ358
	WN+iQHN7foQH2/fvae3oerJOHlQifBnxgroF1Ah0cvBzWbDNVAl3XbuFIL/qpip56hBo
	pmHmnrJaYtWmo/5c+s+U8taYvIvZdPWuOvSH76hIuPSnlS+LdBqMlxBCuomCD+qEgVD0
	c0Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=XGj6RS+B/pgXendj1ZnGnX3LwcRxLMI5NbIX4j3qjDQ=;
	b=phCdN3PyIHaM3D2Jsv+CG0gUC7lkcL8gvb4D2peRpoC1lDKgrihMrWrLxegc1Jg+6q
	i3iHV/U+ewnfu/pn77uKaIyWUrnYMAVlbgYXk+gRIQ7DdmzPbT+TYlum78lRvKZczccQ
	IYdvQ+Vc4D4dO9coJ2LZpoiwqsR+oLR/5KMdkOp54uIlF6My/BVZyeNly702FqjfbDXi
	y6Bm4N3FW4r5UYOSwBZUdRFViFknhAgLPt8/qI0nt/NQD1F174LMrkXJPEILTt5rYnBH
	QqGl/ui9SVfaYaTpt2cG0H3DlkRsBfp46/WwWm3d640daU/aPACraWMnNUNA5bU9b8wu
	1T3w==
X-Gm-Message-State: APzg51CH4pQ9lGHtijVKbN9J5EL2FVmsdhB9cOXQXMVI8Xzq+FIAwA01
	wCwLxRSPOtQbJkSYrZo3SQxltQ/I
X-Google-Smtp-Source: ANB0VdbkVqx/KjljVzLvTamTzNgq359fHsuRqNAWnI7DyubatYzqaro5hpdVFI7lfvVu1xbuwuUo7A==
X-Received: by 2002:a62:5cc1:: with SMTP id
	q184-v6mr22484749pfb.241.1537113467204; 
	Sun, 16 Sep 2018 08:57:47 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.46
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:14 -0700
Message-Id: <20180916155719.9911-20-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 20/25] openssl-tpm-engine: update SRC_URI and update to 0.5.0
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:49 -0000

change to a fork that is being maintained and that enabled openssl 1.1
Refresh patches
Drop one no longer needed

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...pm-key-support-well-known-key-option.patch | 24 +++++------
 .../0002-libtpm-support-env-TPM_SRK_PW.patch  | 14 +++----
 .../0003-Fix-not-building-libtpm.la.patch     | 25 -----------
 ...engine-parse-an-encrypted-tpm-SRK-pa.patch | 41 +++++++++----------
 ...engine-change-variable-c-type-from-c.patch | 13 +++---
 .../files/openssl11_build_fix.patch           | 34 +++++++++++++++
 ...e_0.4.2.bb => openssl-tpm-engine_0.5.0.bb} | 41 +++++++------------
 7 files changed, 91 insertions(+), 101 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch
 create mode 100644 meta-tpm/recipes-tpm/openssl-tpm-engine/files/openssl11_build_fix.patch
 rename meta-tpm/recipes-tpm/openssl-tpm-engine/{openssl-tpm-engine_0.4.2.bb => openssl-tpm-engine_0.5.0.bb} (55%)

diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
index 67071b6..bed8b92 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch
@@ -8,20 +8,20 @@ Add "-z" option to select well known password in create_tpm_key tool.
 
 Signed-off-by: Junxian.Xiao <Junxian.Xiao@windriver.com>
 
-diff --git a/create_tpm_key.c b/create_tpm_key.c
-index fee917f..7b94d62 100644
---- a/create_tpm_key.c
-+++ b/create_tpm_key.c
-@@ -46,6 +46,8 @@
- #include <trousers/tss.h>
- #include <trousers/trousers.h>
+Index: git/src/create_tpm_key.c
+===================================================================
+--- git.orig/src/create_tpm_key.c
++++ git/src/create_tpm_key.c
+@@ -48,6 +48,8 @@
+ 
+ #include "ssl_compat.h"
  
 +#define TPM_WELL_KNOWN_KEY_LEN 20   /*well know key length is 20 bytes zero*/
 +
  #define print_error(a,b) \
  	fprintf(stderr, "%s:%d %s result: 0x%x (%s)\n", __FILE__, __LINE__, \
  		a, b, Trspi_Error_String(b))
-@@ -70,6 +72,7 @@ usage(char *argv0)
+@@ -72,6 +74,7 @@ usage(char *argv0)
  		"\t\t-e|--enc-scheme  encryption scheme to use [PKCSV15] or OAEP\n"
  		"\t\t-q|--sig-scheme  signature scheme to use [DER] or SHA1\n"
  		"\t\t-s|--key-size    key size in bits [2048]\n"
@@ -29,7 +29,7 @@ index fee917f..7b94d62 100644
  		"\t\t-a|--auth        require a password for the key [NO]\n"
  		"\t\t-p|--popup       use TSS GUI popup dialogs to get the password "
  		"for the\n\t\t\t\t key [NO] (implies --auth)\n"
-@@ -147,6 +150,7 @@ int main(int argc, char **argv)
+@@ -154,6 +157,7 @@ int main(int argc, char **argv)
  	int		asn1_len;
  	char		*filename, c, *openssl_key = NULL;
  	int		option_index, auth = 0, popup = 0, wrap = 0;
@@ -37,7 +37,7 @@ index fee917f..7b94d62 100644
  	UINT32		enc_scheme = TSS_ES_RSAESPKCSV15;
  	UINT32		sig_scheme = TSS_SS_RSASSAPKCS1V15_DER;
  	UINT32		key_size = 2048;
-@@ -154,12 +158,15 @@ int main(int argc, char **argv)
+@@ -161,12 +165,15 @@ int main(int argc, char **argv)
  
  	while (1) {
  		option_index = 0;
@@ -54,7 +54,7 @@ index fee917f..7b94d62 100644
  			case 'a':
  				initFlags |= TSS_KEY_AUTHORIZATION;
  				auth = 1;
-@@ -293,6 +300,8 @@ int main(int argc, char **argv)
+@@ -300,6 +307,8 @@ int main(int argc, char **argv)
  
  	if (srk_authusage) {
  		char *authdata = calloc(1, 128);
@@ -63,7 +63,7 @@ index fee917f..7b94d62 100644
  
  		if (!authdata) {
  			fprintf(stderr, "malloc failed.\n");
-@@ -309,17 +318,26 @@ int main(int argc, char **argv)
+@@ -316,17 +325,26 @@ int main(int argc, char **argv)
  			exit(result);
  		}
  
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
index f718f2e..2caaaf0 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0002-libtpm-support-env-TPM_SRK_PW.patch
@@ -9,20 +9,20 @@ use "env TPM_SRK_PW=#WELLKNOWN#" to set well known password.
 
 Signed-off-by: Junxian.Xiao <Junxian.Xiao@windriver.com>
 
-diff --git a/e_tpm.c b/e_tpm.c
-index f3e8bcf..7dcb75a 100644
---- a/e_tpm.c
-+++ b/e_tpm.c
+Index: git/src/e_tpm.c
+===================================================================
+--- git.orig/src/e_tpm.c
++++ git/src/e_tpm.c
 @@ -38,6 +38,8 @@
- 
  #include "e_tpm.h"
+ #include "ssl_compat.h"
  
 +#define TPM_WELL_KNOWN_KEY_LEN 20   /*well know key length is 20 bytes zero*/
 +
  //#define DLOPEN_TSPI
  
  #ifndef OPENSSL_NO_HW
-@@ -248,6 +250,10 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+@@ -262,6 +264,10 @@ int tpm_load_srk(UI_METHOD *ui, void *cb
  	TSS_RESULT result;
  	UINT32 authusage;
  	BYTE *auth;
@@ -33,7 +33,7 @@ index f3e8bcf..7dcb75a 100644
  
  	if (hSRK != NULL_HKEY) {
  		DBGFN("SRK is already loaded.");
-@@ -299,18 +305,36 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+@@ -313,18 +319,36 @@ int tpm_load_srk(UI_METHOD *ui, void *cb
  		return 0;
  	}
  
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch
deleted file mode 100644
index d24a150..0000000
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-Fix-not-building-libtpm.la.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 7848445a1f4c750ef73bf96f5e89d402f87a1756 Mon Sep 17 00:00:00 2001
-From: Lans Zhang <jia.zhang@windriver.com>
-Date: Mon, 19 Jun 2017 14:54:28 +0800
-Subject: [PATCH] Fix not building libtpm.la
-
-Signed-off-by: Lans Zhang <jia.zhang@windriver.com>
----
- Makefile.am | 4 +++-
- 1 file changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/Makefile.am b/Makefile.am
-index 6695656..634a7e6 100644
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -10,4 +10,6 @@ libtpm_la_LIBADD=-lcrypto -lc -ltspi
- libtpm_la_SOURCES=e_tpm.c e_tpm.h e_tpm_err.c
- 
- create_tpm_key_SOURCES=create_tpm_key.c
--create_tpm_key_LDADD=-ltspi
-+create_tpm_key_LDFLAGS=-ltspi
-+
-+LDADD=libtpm.la
--- 
-2.7.5
-
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
index a88148f..cc8772d 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch
@@ -22,11 +22,11 @@ Signed-off-by: Meng Li <Meng.Li@windriver.com>
  e_tpm_err.c |   4 ++
  3 files changed, 164 insertions(+), 1 deletion(-)
 
-diff --git a/e_tpm.c b/e_tpm.c
-index 7dcb75a..11bf74b 100644
---- a/e_tpm.c
-+++ b/e_tpm.c
-@@ -245,6 +245,118 @@ void ENGINE_load_tpm(void)
+Index: git/src/e_tpm.c
+===================================================================
+--- git.orig/src/e_tpm.c
++++ git/src/e_tpm.c
+@@ -259,6 +259,118 @@ void ENGINE_load_tpm(void)
  	ERR_clear_error();
  }
  
@@ -145,7 +145,7 @@ index 7dcb75a..11bf74b 100644
  int tpm_load_srk(UI_METHOD *ui, void *cb_data)
  {
  	TSS_RESULT result;
-@@ -305,8 +417,50 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+@@ -319,8 +431,50 @@ int tpm_load_srk(UI_METHOD *ui, void *cb
  		return 0;
  	}
  
@@ -197,7 +197,7 @@ index 7dcb75a..11bf74b 100644
  		if (0 == strcmp(srkPasswd, "#WELLKNOWN#")) {
  			memset(auth, 0, TPM_WELL_KNOWN_KEY_LEN);
  			secretMode = TSS_SECRET_MODE_SHA1;
-@@ -319,6 +473,7 @@ int tpm_load_srk(UI_METHOD *ui, void *cb_data)
+@@ -333,6 +487,7 @@ int tpm_load_srk(UI_METHOD *ui, void *cb
  			authlen = strlen(auth);
  		}
  	}
@@ -205,11 +205,11 @@ index 7dcb75a..11bf74b 100644
  	else {
  		if (!tpm_engine_get_auth(ui, (char *)auth, 128,
  				"SRK authorization: ", cb_data)) {
-diff --git a/e_tpm.h b/e_tpm.h
-index 6316e0b..56ff202 100644
---- a/e_tpm.h
-+++ b/e_tpm.h
-@@ -66,6 +66,8 @@ void ERR_TSS_error(int function, int reason, char *file, int line);
+Index: git/src/e_tpm.h
+===================================================================
+--- git.orig/src/e_tpm.h
++++ git/src/e_tpm.h
+@@ -66,6 +66,8 @@ void ERR_TSS_error(int function, int rea
  #define TPM_F_TPM_FILL_RSA_OBJECT		116
  #define TPM_F_TPM_ENGINE_GET_AUTH		117
  #define TPM_F_TPM_CREATE_SRK_POLICY		118
@@ -218,7 +218,7 @@ index 6316e0b..56ff202 100644
  
  /* Reason codes. */
  #define TPM_R_ALREADY_LOADED			100
-@@ -96,6 +98,8 @@ void ERR_TSS_error(int function, int reason, char *file, int line);
+@@ -96,6 +98,8 @@ void ERR_TSS_error(int function, int rea
  #define TPM_R_ID_INVALID			125
  #define TPM_R_UI_METHOD_FAILED			126
  #define TPM_R_UNKNOWN_SECRET_MODE		127
@@ -227,11 +227,11 @@ index 6316e0b..56ff202 100644
  
  /* structure pointed to by the RSA object's app_data pointer */
  struct rsa_app_data
-diff --git a/e_tpm_err.c b/e_tpm_err.c
-index 25a5d0f..439e267 100644
---- a/e_tpm_err.c
-+++ b/e_tpm_err.c
-@@ -235,6 +235,8 @@ static ERR_STRING_DATA TPM_str_functs[] = {
+Index: git/src/e_tpm_err.c
+===================================================================
+--- git.orig/src/e_tpm_err.c
++++ git/src/e_tpm_err.c
+@@ -234,6 +234,8 @@ static ERR_STRING_DATA TPM_str_functs[]
  	{ERR_PACK(0, TPM_F_TPM_BIND_FN, 0), "TPM_BIND_FN"},
  	{ERR_PACK(0, TPM_F_TPM_FILL_RSA_OBJECT, 0), "TPM_FILL_RSA_OBJECT"},
  	{ERR_PACK(0, TPM_F_TPM_ENGINE_GET_AUTH, 0), "TPM_ENGINE_GET_AUTH"},
@@ -240,7 +240,7 @@ index 25a5d0f..439e267 100644
  	{0, NULL}
  };
  
-@@ -265,6 +267,8 @@ static ERR_STRING_DATA TPM_str_reasons[] = {
+@@ -264,6 +266,8 @@ static ERR_STRING_DATA TPM_str_reasons[]
  	{TPM_R_FILE_READ_FAILED, "failed reading the key file"},
  	{TPM_R_ID_INVALID, "engine id doesn't match"},
  	{TPM_R_UI_METHOD_FAILED, "ui function failed"},
@@ -249,6 +249,3 @@ index 25a5d0f..439e267 100644
  	{0, NULL}
  };
  
--- 
-2.9.3
-
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
index 076704d..535472a 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch
@@ -15,11 +15,11 @@ Signed-off-by: Meng Li <Meng.Li@windriver.com>
  create_tpm_key.c |    3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)
 
-diff --git a/create_tpm_key.c b/create_tpm_key.c
-index 7b94d62..f30af90 100644
---- a/create_tpm_key.c
-+++ b/create_tpm_key.c
-@@ -148,7 +148,8 @@ int main(int argc, char **argv)
+Index: git/src/create_tpm_key.c
+===================================================================
+--- git.orig/src/create_tpm_key.c
++++ git/src/create_tpm_key.c
+@@ -155,7 +155,8 @@ int main(int argc, char **argv)
  	ASN1_OCTET_STRING *blob_str;
  	unsigned char	*blob_asn1 = NULL;
  	int		asn1_len;
@@ -29,6 +29,3 @@ index 7b94d62..f30af90 100644
  	int		option_index, auth = 0, popup = 0, wrap = 0;
  	int		wellknownkey = 0;
  	UINT32		enc_scheme = TSS_ES_RSAESPKCSV15;
--- 
-1.7.9.5
-
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/files/openssl11_build_fix.patch b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/openssl11_build_fix.patch
new file mode 100644
index 0000000..2f8eb81
--- /dev/null
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/files/openssl11_build_fix.patch
@@ -0,0 +1,34 @@
+Fix compiling for openssl 1.1
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/src/e_tpm.c
+===================================================================
+--- git.orig/src/e_tpm.c
++++ git/src/e_tpm.c
+@@ -265,19 +265,20 @@ static int tpm_decode_base64(unsigned ch
+ 				int *out_len)
+ {
+ 	int total_len, len, ret;
+-	EVP_ENCODE_CTX dctx;
++	EVP_ENCODE_CTX *dctx;
+ 
+-	EVP_DecodeInit(&dctx);
++	dctx = EVP_ENCODE_CTX_new();
++	EVP_DecodeInit(dctx);
+ 
+ 	total_len = 0;
+-	ret = EVP_DecodeUpdate(&dctx, outdata, &len, indata, in_len);
++	ret = EVP_DecodeUpdate(dctx, outdata, &len, indata, in_len);
+ 	if (ret < 0) {
+ 		TSSerr(TPM_F_TPM_DECODE_BASE64, TPM_R_DECODE_BASE64_FAILED);
+ 		return 1;
+ 	}
+ 
+ 	total_len += len;
+-	ret = EVP_DecodeFinal(&dctx, outdata, &len);
++	ret = EVP_DecodeFinal(dctx, outdata, &len);
+ 	if (ret < 0) {
+ 		TSSerr(TPM_F_TPM_DECODE_BASE64, TPM_R_DECODE_BASE64_FAILED);
+ 		return 1;
diff --git a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
similarity index 55%
rename from meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb
rename to meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
index 4854f70..0f98b79 100644
--- a/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.4.2.bb
+++ b/meta-tpm/recipes-tpm/openssl-tpm-engine/openssl-tpm-engine_0.5.0.bb
@@ -1,5 +1,5 @@
 DESCRIPTION = "OpenSSL secure engine based on TPM hardware"
-HOMEPAGE = "https://sourceforge.net/projects/trousers/"
+HOMEPAGE = "https://github.com/mgerstner/openssl_tpm_engine"
 SECTION = "security/tpm"
 
 LICENSE = "openssl"
@@ -8,18 +8,18 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=11f0ee3af475c85b907426e285c9bb52"
 DEPENDS += "openssl trousers"
 
 SRC_URI = "\
-    git://git.code.sf.net/p/trousers/openssl_tpm_engine \
+    git://github.com/mgerstner/openssl_tpm_engine.git \
     file://0001-create-tpm-key-support-well-known-key-option.patch \
     file://0002-libtpm-support-env-TPM_SRK_PW.patch \
-    file://0003-Fix-not-building-libtpm.la.patch \
     file://0003-tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch \
     file://0004-tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch \
+    file://openssl11_build_fix.patch \
 "
-SRCREV = "bbc2b1af809f20686e0d3553a62f0175742c0d60"
+SRCREV = "b28de5065e6eb9aa5d5afe2276904f7624c2cbaf"
 
 S = "${WORKDIR}/git"
 
-inherit autotools-brokensep
+inherit autotools-brokensep pkgconfig
 
 # The definitions below are used to decrypt the srk password.
 # It is allowed to define the values in 3 forms: string, hex number and
@@ -41,35 +41,22 @@ CFLAGS_append += "-DSRK_DEC_PW=${srk_dec_pw} -DSRK_DEC_SALT=${srk_dec_salt}"
 #CFLAGS_append += "-DTPM_SRK_PLAIN_PW"
 
 do_configure_prepend() {
-    cd "${S}"
+    cd ${B}
     cp LICENSE COPYING
-    touch NEWS AUTHORS ChangeLog
+    touch NEWS AUTHORS ChangeLog README
 }
 
-do_install_append() {
-    install -m 0755 -d "${D}${libdir}/engines"
-    install -m 0755 -d "${D}${prefix}/local/ssl/lib/engines"
-    install -m 0755 -d "${D}${libdir}/ssl/engines"
-
-    cp -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${libdir}/libtpm.so.0"
-    cp -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${libdir}/engines/libtpm.so"
-    cp -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${prefix}/local/ssl/lib/engines/libtpm.so"
-    mv -f "${D}${libdir}/openssl/engines/libtpm.so.0.0.0" "${D}${libdir}/ssl/engines/libtpm.so"
-    mv -f "${D}${libdir}/openssl/engines/libtpm.la" "${D}${libdir}/ssl/engines/libtpm.la"
-    rm -rf "${D}${libdir}/openssl"
-}
-
-FILES_${PN}-staticdev += "${libdir}/ssl/engines/libtpm.la"
+FILES_${PN}-staticdev += "${libdir}/ssl/engines-1.1/tpm.la"
 FILES_${PN}-dbg += "\
-    ${libdir}/ssl/engines/.debug \
-    ${libdir}/engines/.debug \
-    ${prefix}/local/ssl/lib/engines/.debug \
+    ${libdir}/ssl/engines-1.1/.debug \
+    ${libdir}/engines-1.1/.debug \
+    ${prefix}/local/ssl/lib/engines-1.1/.debug \
 "
 FILES_${PN} += "\
-    ${libdir}/ssl/engines/libtpm.so* \
-    ${libdir}/engines/libtpm.so* \
+    ${libdir}/ssl/engines-1.1/tpm.so* \
+    ${libdir}/engines-1.1/tpm.so* \
     ${libdir}/libtpm.so* \
-    ${prefix}/local/ssl/lib/engines/libtpm.so* \
+    ${prefix}/local/ssl/lib/engines-1.1/tpm.so* \
 "
 
 RDEPENDS_${PN} += "libcrypto libtspi"
-- 
2.17.1


