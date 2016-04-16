Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C581E00CC3; Fri, 15 Apr 2016 18:43:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5E6E00AD8
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:43:29 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id hb4so10966626pac.1
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 18:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=59loW1XbR5Nf7W/Ui1qIjqFrDn7lIma4MA5rjhV4vE4=;
	b=F1A+y1EFHW4qkYeZ0qtAhVoncvJ+P8lpu2MPGJnxwmaXDwepVXBu/poDgjD8Q/OiCy
	HeVhGCP3XMYk0uAJy1Ayl4fsaez1ASwqScVb1zyQEX5q/xvFe2ionf5n/ezz0tyrWc05
	vpUuDl7WeXKlbIBf88+mpjE/Rtj/N4tnvQtW8aps6vRKzk6Puf8U3IMZmgp72bI9V9Rn
	94rtKhzNY8gHqqxuOfc96TqlVjNc+mJ1rDee6BoFFBe/9eWcjBTheDTugrAz8heOMkYU
	BCdJayLss6NUW1tCdAnzmh3Ylrh12Rcxxtd7FCRlVWtkfsbfrYCr6ACxftcuEEzQOYJO
	BRCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=59loW1XbR5Nf7W/Ui1qIjqFrDn7lIma4MA5rjhV4vE4=;
	b=JSKYDgzfrb+yyVAq8pwp1GkoYhHqqlcd5R/UaAAdl/BK1i7SRAqsnAf4zPP5uc72L2
	SY0xifDqtM6l/h8G3tZMx+av1+PjlWT86nYH2SkaIREMulSAg+PtHlT21yBQ7Zl7GR+J
	xN3HY404alQmx072tkpcRW2EbHt3i79YhX8IylSkUYEK4+bADS3diFLr0oRVRdrFdQVI
	QDFZRtq5vvS9C+FS4x7Vn3ZqXkj3dJoywV918cz4HrtooypDSJ2i1KUMHkQenOq4Sf2f
	eHasJQBXPcoYU2rwEOvaqwfE8rUqZbF5goR2E3QY5dvx+MkacaMnFlxcmsXGVcnZDM5R
	cK6w==
X-Gm-Message-State: AOPr4FUB/nhIBRaveldvbxLnv6Bzx69hXeonN4ikLjJnfdO6CQIMy8YCe2HUcPxMbgb0bw==
X-Received: by 10.67.3.234 with SMTP id bz10mr33747101pad.96.1460771008717;
	Fri, 15 Apr 2016 18:43:28 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	xa4sm67520518pab.26.2016.04.15.18.43.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Apr 2016 18:43:27 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Apr 2016 18:43:22 -0700
Message-Id: <1460771002-6782-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1460771002-6782-1-git-send-email-akuster808@gmail.com>
References: <1460771002-6782-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] tpm-tools: add package
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
X-List-Received-Date: Sat, 16 Apr 2016 01:43:31 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../03-fix-bool-error-parseStringWithValues.patch  |  30 +++
 .../tpm-tools-1.3.8/tpm-tools-extendpcr.patch      | 244 +++++++++++++++++++++
 recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb           |  22 ++
 3 files changed, 296 insertions(+)
 create mode 100644 recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch
 create mode 100644 recipes-tpm/tpm-tools/tpm-tools-1.3.8/tpm-tools-extendpcr.patch
 create mode 100644 recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb

diff --git a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch
new file mode 100644
index 0000000..9497e89
--- /dev/null
+++ b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/03-fix-bool-error-parseStringWithValues.patch
@@ -0,0 +1,30 @@
+Title: Fix boolean comparison error (and FTBFS with gcc-5)
+Date: 2015-06-28
+Author: Pierre Chifflier <pollux@debian.org>
+Bug-Debian: http://bugs.debian.org/778147
+Index: tpm-tools/src/tpm_mgmt/tpm_nvcommon.c
+===================================================================
+--- tpm-tools.orig/src/tpm_mgmt/tpm_nvcommon.c
++++ tpm-tools/src/tpm_mgmt/tpm_nvcommon.c
+@@ -140,8 +140,8 @@ int parseStringWithValues(const char *aA
+ 						 aArg);
+ 					return -1;
+ 				}
+-				if (!aArg[offset+numbytes] == '|' &&
+-				    !aArg[offset+numbytes] == 0) {
++				if (!(aArg[offset+numbytes] == '|' ||
++				      aArg[offset+numbytes] == 0)) {
+ 					logError(_("Illegal character following "
+                                                    "hexadecimal number in %s\n"),
+ 						 aArg + offset);
+@@ -164,8 +164,8 @@ int parseStringWithValues(const char *aA
+ 				return -1;
+ 			}
+ 
+-			if (!aArg[offset+numbytes] == '|' &&
+-			    !aArg[offset+numbytes] == 0) {
++			if (!(aArg[offset+numbytes] == '|' ||
++			      aArg[offset+numbytes] == 0)) {
+ 				logError(_("Illegal character following decimal "
+ 				           "number in %s\n"),
+ 					 aArg + offset);
diff --git a/recipes-tpm/tpm-tools/tpm-tools-1.3.8/tpm-tools-extendpcr.patch b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/tpm-tools-extendpcr.patch
new file mode 100644
index 0000000..ab5e683
--- /dev/null
+++ b/recipes-tpm/tpm-tools/tpm-tools-1.3.8/tpm-tools-extendpcr.patch
@@ -0,0 +1,244 @@
+Index: tpm-tools-1.3.8/include/tpm_tspi.h
+===================================================================
+--- tpm-tools-1.3.8.orig/include/tpm_tspi.h	2011-08-17 08:20:35.000000000 -0400
++++ tpm-tools-1.3.8/include/tpm_tspi.h	2013-01-05 23:26:31.571598217 -0500
+@@ -117,6 +117,10 @@
+ 			UINT32 *a_PcrSize, BYTE **a_PcrValue);
+ TSS_RESULT pcrcompositeSetPcrValue(TSS_HPCRS a_hPcrs, UINT32 a_Idx,
+ 					UINT32 a_PcrSize, BYTE *a_PcrValue);
++TSS_RESULT tpmPcrExtend(TSS_HTPM a_hTpm, UINT32 a_Idx,
++			UINT32 a_DataSize, BYTE *a_Data,
++			TSS_PCR_EVENT *a_Event,
++			UINT32 *a_PcrSize, BYTE **a_PcrValue);
+ #ifdef TSS_LIB_IS_12
+ TSS_RESULT unloadVersionInfo(UINT64 *offset, BYTE *blob, TPM_CAP_VERSION_INFO *v);
+ TSS_RESULT pcrcompositeSetPcrLocality(TSS_HPCRS a_hPcrs, UINT32 localityValue);
+Index: tpm-tools-1.3.8/lib/tpm_tspi.c
+===================================================================
+--- tpm-tools-1.3.8.orig/lib/tpm_tspi.c	2011-08-17 08:20:35.000000000 -0400
++++ tpm-tools-1.3.8/lib/tpm_tspi.c	2013-01-05 23:27:37.731593490 -0500
+@@ -594,6 +594,20 @@
+ 	return result;
+ }
+ 
++TSS_RESULT
++tpmPcrExtend(TSS_HTPM a_hTpm, UINT32 a_Idx,
++		UINT32 a_DataSize, BYTE *a_Data,
++		TSS_PCR_EVENT *a_Event,
++		UINT32 *a_PcrSize, BYTE **a_PcrValue)
++{
++	TSS_RESULT result =
++		Tspi_TPM_PcrExtend(a_hTpm, a_Idx, a_DataSize, a_Data, a_Event,
++				   a_PcrSize, a_PcrValue);
++	tspiResult("Tspi_TPM_PcrExtend", result);
++
++	return result;
++}
++
+ #ifdef TSS_LIB_IS_12
+ /*
+  * These getPasswd functions will wrap calls to the other functions and check to see if the TSS
+Index: tpm-tools-1.3.8/src/cmds/Makefile.am
+===================================================================
+--- tpm-tools-1.3.8.orig/src/cmds/Makefile.am	2011-08-15 13:52:08.000000000 -0400
++++ tpm-tools-1.3.8/src/cmds/Makefile.am	2013-01-05 23:30:46.223593698 -0500
+@@ -22,6 +22,7 @@
+ #
+ 
+ bin_PROGRAMS 	=	tpm_sealdata \
++			tpm_extendpcr \
+ 			tpm_unsealdata
+ 
+ if TSS_LIB_IS_12
+@@ -33,4 +34,5 @@
+ LDADD		=	$(top_builddir)/lib/libtpm_tspi.la -ltspi $(top_builddir)/lib/libtpm_unseal.la -ltpm_unseal -lcrypto
+ 
+ tpm_sealdata_SOURCES = tpm_sealdata.c
++tpm_extendpcr_SOURCES = tpm_extendpcr.c
+ tpm_unsealdata_SOURCES = tpm_unsealdata.c
+Index: tpm-tools-1.3.8/src/cmds/tpm_extendpcr.c
+===================================================================
+--- /dev/null	1970-01-01 00:00:00.000000000 +0000
++++ tpm-tools-1.3.8/src/cmds/tpm_extendpcr.c	2013-01-05 23:37:43.403585514 -0500
+@@ -0,0 +1,181 @@
++/*
++ * The Initial Developer of the Original Code is International
++ * Business Machines Corporation. Portions created by IBM
++ * Corporation are Copyright (C) 2005, 2006 International Business
++ * Machines Corporation. All Rights Reserved.
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the Common Public License as published by
++ * IBM Corporation; either version 1 of the License, or (at your option)
++ * any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * Common Public License for more details.
++ *
++ * You should have received a copy of the Common Public License
++ * along with this program; if not, a copy can be viewed at
++ * http://www.opensource.org/licenses/cpl1.0.php.
++ */
++#include <openssl/evp.h>
++#include <openssl/sha.h>
++#include <limits.h>
++#include "tpm_tspi.h"
++#include "tpm_utils.h"
++#include "tpm_seal.h"
++
++// #define TPM_EXTENDPCR_DEBUG
++
++static void help(const char *aCmd)
++{
++	logCmdHelp(aCmd);
++	logCmdOption("-i, --infile FILE",
++		     _
++		     ("Filename containing data to extend PCRs with. Default is STDIN."));
++	logCmdOption("-p, --pcr NUMBER",
++		     _("PCR to extend."));
++
++}
++
++static char in_filename[PATH_MAX] = "";
++static TSS_HPCRS hPcrs = NULL_HPCRS;
++static TSS_HTPM hTpm;
++static UINT32 selectedPcrs[24];
++static UINT32 selectedPcrsLen = 0;
++TSS_HCONTEXT hContext = 0;
++
++static int parse(const int aOpt, const char *aArg)
++{
++	int rc = -1;
++
++	switch (aOpt) {
++	case 'i':
++		if (aArg) {
++			strncpy(in_filename, aArg, PATH_MAX);
++			rc = 0;
++		}
++		break;
++	case 'p':
++		if (aArg) {
++			selectedPcrs[selectedPcrsLen++] = atoi(aArg);
++			rc = 0;
++		}
++		break;
++	default:
++		break;
++	}
++	return rc;
++
++}
++
++int main(int argc, char **argv)
++{
++
++	int iRc = -1;
++	struct option opts[] = {
++		{"infile", required_argument, NULL, 'i'},
++		{"pcr", required_argument, NULL, 'p'},
++	};
++	unsigned char line[EVP_MD_block_size(EVP_sha1()) * 16];
++	int lineLen;
++	UINT32 i;
++
++	BIO *bin = NULL;
++
++	initIntlSys();
++
++	if (genericOptHandler(argc, argv, "i:p:", opts,
++			      sizeof(opts) / sizeof(struct option), parse,
++			      help) != 0)
++		goto out;
++
++	if (contextCreate(&hContext) != TSS_SUCCESS)
++		goto out;
++
++	if (contextConnect(hContext) != TSS_SUCCESS)
++		goto out_close;
++
++	if (contextGetTpm(hContext, &hTpm) != TSS_SUCCESS)
++		goto out_close;
++
++	/* Create a BIO for the input file */
++	if ((bin = BIO_new(BIO_s_file())) == NULL) {
++		logError(_("Unable to open input BIO\n"));
++		goto out_close;
++	}
++
++	/* Assign the input file to the BIO */
++	if (strlen(in_filename) == 0) 
++		BIO_set_fp(bin, stdin, BIO_NOCLOSE);
++	else if (!BIO_read_filename(bin, in_filename)) {
++		logError(_("Unable to open input file: %s\n"),
++			 in_filename);
++		goto out_close;
++	}
++
++	/* Create the PCRs object. If any PCRs above 15 are selected, this will need to be
++	 * a 1.2 TSS/TPM */
++	if (selectedPcrsLen) {
++		TSS_FLAG initFlag = 0;
++		UINT32 pcrSize;
++		BYTE *pcrValue;
++
++		for (i = 0; i < selectedPcrsLen; i++) {
++			if (selectedPcrs[i] > 15) {
++#ifdef TSS_LIB_IS_12
++				initFlag |= TSS_PCRS_STRUCT_INFO_LONG;
++#else
++				logError(_("This version of %s was compiled for a v1.1 TSS, which "
++					 "can only seal\n data to PCRs 0-15. PCR %u is out of range"
++					 "\n"), argv[0], selectedPcrs[i]);
++				goto out_close;
++#endif
++			}
++		}
++
++		unsigned char msg[EVP_MAX_MD_SIZE];
++		unsigned int msglen;
++		EVP_MD_CTX ctx;
++		EVP_DigestInit(&ctx, EVP_sha1());
++		while ((lineLen = BIO_read(bin, line, sizeof(line))) > 0)
++			EVP_DigestUpdate(&ctx, line, lineLen);
++		EVP_DigestFinal(&ctx, msg, &msglen);
++
++		if (contextCreateObject(hContext, TSS_OBJECT_TYPE_PCRS, initFlag,
++					&hPcrs) != TSS_SUCCESS)
++			goto out_close;
++
++		for (i = 0; i < selectedPcrsLen; i++) {
++#ifdef TPM_EXTENDPCR_DEBUG
++			if (tpmPcrRead(hTpm, selectedPcrs[i], &pcrSize, &pcrValue) != TSS_SUCCESS)
++				goto out_close;
++
++			unsigned int j;
++			for (j = 0; j < pcrSize; j++)
++			  printf("%02X ", pcrValue[j]);
++			printf("\n");
++#endif
++			
++			if (tpmPcrExtend(hTpm, selectedPcrs[i], msglen, msg, NULL, &pcrSize, &pcrValue) != TSS_SUCCESS)
++			  goto out_close;
++
++#ifdef TPM_EXTENDPCR_DEBUG
++			for (j = 0; j < pcrSize; j++)
++			  printf("%02X ", pcrValue[j]);
++			printf("\n");
++#endif
++		}
++	}
++
++	iRc = 0;
++	logSuccess(argv[0]);
++
++out_close:
++	contextClose(hContext);
++
++out:
++	if (bin)
++		BIO_free(bin);
++	return iRc;
++}
diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
new file mode 100644
index 0000000..5645976
--- /dev/null
+++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
@@ -0,0 +1,22 @@
+SUMMARY = "The tpm-tools package contains commands to allow the platform administrator the ability to manage and diagnose the platform's TPM."
+DESCRIPTION = " \
+  The tpm-tools package contains commands to allow the platform administrator \
+  the ability to manage and diagnose the platform's TPM.  Additionally, the \
+  package contains commands to utilize some of the capabilities available \
+  in the TPM PKCS#11 interface implemented in the openCryptoki project. \
+  "
+SECTION = "tpm"
+LICENSE = "CPL-1.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
+DEPENDS = "libtspi openssl"
+
+SRC_URI += " \
+    http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.gz \
+    file://tpm-tools-extendpcr.patch \
+    file://03-fix-bool-error-parseStringWithValues.patch \
+"
+
+SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
+SRC_URI[sha256sum] = "66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
+
+inherit autotools gettext
-- 
2.3.5


