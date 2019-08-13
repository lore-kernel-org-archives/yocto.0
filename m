Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D0BFE00DA4; Tue, 13 Aug 2019 16:54:44 -0700 (PDT)
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
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFA88E0049C
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id z3so3110366pln.6
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=23itQII7oNFJMWd3vBNvGR/tPpAZR/PT7NertW0G5cw=;
	b=RaDmvhCBJ7NTqipHOOr4Sb8+zCt3u3H9pXygMcGohkkoS27I/rtRPXi84Ju60NkxjE
	q/LYqQp9MqsU4nvyFuV4CIxb6fa1/spBMO0YjUu6zb4nG6GELMyh5aDw5RbDWvhmmvlz
	43C7DpXyQG4dw98cHHDjSGvg//OjEZfsZxNupsVPINawdrEsuar9G4f6X/XcrruK1Ank
	EXbhMknw5KyJGpbIRm+KR86hxaM7HEZdsjebNFFWPZhLmaQeFLd3neASE6J21F74E/ci
	CD5reWd0cdEWSw3hCKubDML+9TxoL3o3pF1egKSdeqRAKvpbbXtK0e3jMPTs74+dmhu7
	bBxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=23itQII7oNFJMWd3vBNvGR/tPpAZR/PT7NertW0G5cw=;
	b=oybFNPFrcf0/1UvVdBOAoWShkf56IYM8qZ0BnfCEB7c61s0H2mfcOmJhKaUHxEvqg6
	n0f+shRmHyMfo2M+w1eJv5+v+YQmU504LGbJOCX+Inhpct3WkU3od0VAtfCPGnwsmsMh
	T3THc3x8Pn5glnjqUy+NSdaQVgZ82QxzQT+44dnkJVl1zDpu89cNc9J4lbxAxorc8Qep
	wXRUS8tVt4E4N2xbS8/AYuGnF4OZLytr+tMWtJ0q+P7W2USTAuGKlniUIAldXuUoIKo+
	6Av1dpZvZ8FigO6SWzeWNN9m/d3ztnienPYageAGdHSrzz4d8nuUc8Nt73ShRBAvDdcs
	eGLg==
X-Gm-Message-State: APjAAAWscE7lJeMuVD5Em0hJ6M5u0vXwYaWBMRE3RzxtHoVROzC4Szzm
	7ApgwhH5aTQ00/0AxV1uUflXvbSD
X-Google-Smtp-Source: APXvYqwi37koU16NuEooMlUp+LKDIRecb0tTx45djADVZ2N168tPiYaHQXs1zNq3WdZ/uaDM3AVBFg==
X-Received: by 2002:a17:902:8649:: with SMTP id
	y9mr12200961plt.252.1565740483267; 
	Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	s16sm2496441pjp.10.2019.08.13.16.54.42 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 13 Aug 2019 16:54:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Aug 2019 16:54:39 -0700
Message-Id: <20190813235440.16385-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813235440.16385-1-akuster808@gmail.com>
References: <20190813235440.16385-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] meta-integrity: remove kernel fragments now in cache
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
X-List-Received-Date: Tue, 13 Aug 2019 23:54:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-%.bbappend      |  5 ++---
 .../recipes-kernel/linux/linux/ima.cfg         | 18 ------------------
 .../linux/linux/ima_evm_root_ca.cfg            |  3 ---
 .../recipes-kernel/linux/linux/modsign.cfg     |  5 -----
 .../recipes-kernel/linux/linux/modsign.scc     |  4 ----
 5 files changed, 2 insertions(+), 33 deletions(-)
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/modsign.cfg
 delete mode 100644 meta-integrity/recipes-kernel/linux/linux/modsign.scc

diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
index ca96c8d..f9a48cd 100644
--- a/meta-integrity/recipes-kernel/linux/linux-%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
@@ -1,6 +1,5 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux:"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "ima", " features/ima/ima.scc", "" ,d)}"
 
-SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' file://ima.cfg', '', d)}"
-SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' file://modsign.scc file://modsign.cfg', '', d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', ' features/ima/modsign.scc', '', d)}"
 
 inherit ${@bb.utils.contains('DISTRO_FEATURES', 'modsign', 'kernel-modsign', '', d)}
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.cfg b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
deleted file mode 100644
index b3e47ba..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/ima.cfg
+++ /dev/null
@@ -1,18 +0,0 @@
-CONFIG_IMA=y
-CONFIG_IMA_MEASURE_PCR_IDX=10
-CONFIG_IMA_NG_TEMPLATE=y
-CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
-CONFIG_IMA_DEFAULT_HASH_SHA1=y
-CONFIG_IMA_DEFAULT_HASH="sha1"
-CONFIG_IMA_APPRAISE=y
-CONFIG_IMA_APPRAISE_BOOTPARAM=y
-CONFIG_IMA_TRUSTED_KEYRING=y
-CONFIG_SIGNATURE=y
-CONFIG_IMA_WRITE_POLICY=y
-CONFIG_IMA_READ_POLICY=y
-CONFIG_IMA_LOAD_X509=y
-CONFIG_IMA_X509_PATH="/etc/keys/x509_ima.der"
-
-#CONFIG_INTEGRITY_SIGNATURE=y
-#CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
-#CONFIG_INTEGRITY_TRUSTED_KEYRING=y
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg b/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
deleted file mode 100644
index 9a45425..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
+++ /dev/null
@@ -1,3 +0,0 @@
-# CONFIG_IMA_APPRAISE_SIGNED_INIT is not set
-CONFIG_EVM_LOAD_X509=y
-CONFIG_EVM_X509_PATH="/etc/keys/x509_evm.der"
diff --git a/meta-integrity/recipes-kernel/linux/linux/modsign.cfg b/meta-integrity/recipes-kernel/linux/linux/modsign.cfg
deleted file mode 100644
index c0c4ebc..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/modsign.cfg
+++ /dev/null
@@ -1,5 +0,0 @@
-CONFIG_MODULE_SIG=y
-CONFIG_MODULE_SIG_FORCE=y
-CONFIG_MODULE_SIG_SHA256=y
-CONFIG_MODULE_SIG_HASH="sha256"
-CONFIG_MODULE_SIG_KEY="modsign_key.pem"
diff --git a/meta-integrity/recipes-kernel/linux/linux/modsign.scc b/meta-integrity/recipes-kernel/linux/linux/modsign.scc
deleted file mode 100644
index bce78ae..0000000
--- a/meta-integrity/recipes-kernel/linux/linux/modsign.scc
+++ /dev/null
@@ -1,4 +0,0 @@
-define KFEATURE_DESCRIPTION "Kernel Module Signing (modsign) enablement"
-define KFEATURE_COMPATIBILITY all
-
-kconf non-hardware modsign.cfg
-- 
2.17.1


