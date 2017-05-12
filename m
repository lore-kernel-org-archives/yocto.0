Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEDCFE00B7A; Fri, 12 May 2017 05:55:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE, RCVD_IN_SBL_CSS,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 3.3 RCVD_IN_SBL_CSS RBL: Received via a relay in Spamhaus
	SBL-CSS *      [111.93.218.67 listed in zen.spamhaus.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [111.93.218.67 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C23FDE00961
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 05:55:11 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id n23so24966542pfb.2
	for <yocto@yoctoproject.org>; Fri, 12 May 2017 05:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=w/sTSk63YMJcFUxnAU7S2vAW8b/cP3yj7As2mg8beLg=;
	b=RheqPOA3VOcXfRFKjaPZZ5+mM3L+mqHbhejKxYah+rZfiXGcGSsHppwrf1pK0LlAbw
	5AOUBT3ywPwbESQc60TLGVx0yb45Oq8pOdB9S2942IvWHaMcAoH04v8+CGpqNys+NgeD
	L0e89G2tI+8MU4z4OXMyS/qzSWqqFlKDvm1ibIoYwOTZF8MBFxpUPEm8//r+ltoUSIOY
	f63vMmcua64MOWPCKwuLRKLcafPY8SVo/EQqVrki0R28kT2bp83RYL4YRPIfOZQoFKS2
	WqJASOsTJsoAiTH+8C/nPHse/O0YO/0yVOsyVaBEmPo9e2L4mMX3uzSCyRCJvmYzYoRc
	qdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=w/sTSk63YMJcFUxnAU7S2vAW8b/cP3yj7As2mg8beLg=;
	b=SSvAsVPMNCx7Y0XekFZDXIiB60C8im0KV2QcUVa9xFkoBsn1IRQNoNt7ljSaGDD9xT
	EjfXG3VjjAqHdusbw62HidmR6wM9HcF/0oHZ8viEKL2q+DIVHXKu4HPQB+pxaAjLgY8z
	Bk8EvvoUsKUdz9aTTX5UOd5SR+Ue/oYMKa4C3Y2rScRNpmWfRYTzQQosPHJQfwKMWYrh
	nJLnIDlUpglS9f7rbgKGk+or34CnGkF6HOal3czabZm5pHTOP5mhOND/bHgzM2hA7tUN
	jL5lnzp+enMkRk/QUQCpne6QH4PCBZXBGd8wv4SUZPTkyvgrfiKtMqZV5eOoECyn6zhk
	Wb7w==
X-Gm-Message-State: AODbwcBCsY1Xw5c8b7hKLvPR1QgW4y/FsPk2CgCJPlCyTvjuy3cSNm0H
	xG9Cjlau9a5lYCZn
X-Received: by 10.99.101.135 with SMTP id z129mr4256080pgb.66.1494593711377;
	Fri, 12 May 2017 05:55:11 -0700 (PDT)
Received: from jkrishnanjanappa-desktop.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id
	b77sm6316606pfe.39.2017.05.12.05.55.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 12 May 2017 05:55:10 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Fri, 12 May 2017 18:24:51 +0530
Message-Id: <1494593691-14182-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.6.4
Subject: [meta-security][morty][PATCH] tpm2.0-tss: Fix build issue with tpm2-abrmd recipe
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
X-List-Received-Date: Fri, 12 May 2017 12:55:16 -0000

It solves tpm2-abrmd recipe build failure (as mentioned below) as
none of the tpm2.0-tss header files define MAX_LOADED_OBJECTS1 macro.
The macro name should be MAX_LOADED_OBJECTS.
-- snip --
|                  from ../tpm2-abrmd/src/include/tabrmd.h:31,
|                  from ../tpm2-abrmd/src/access-broker.c:31:
| ../tpm2-abrmd/src/access-broker.c: In function 'access_broker_get_trans_object_count':
| ../tpm2-abrmd/src/access-broker.c:549:34: error: 'MAX_LOADED_OBJECTS1' undeclared (first use in this function)
-- snip --

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 ...2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch | 29 ++++++++++++++++++++++
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb           |  3 ++-
 2 files changed, 31 insertions(+), 1 deletion(-)
 create mode 100644 recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch
new file mode 100644
index 0000000..74f82be
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch
@@ -0,0 +1,29 @@
+From 92a0830306c2eb3081b5ac3329f7504cd58d670b Mon Sep 17 00:00:00 2001
+From: Philip Tricca <philip.b.tricca@intel.com>
+Date: Thu, 12 Jan 2017 11:55:52 -0800
+Subject: [PATCH] tss2_tpm2_types.h: Fix broken TRANSIENT_LAST macro.
+
+Upstream-Status: Backport
+
+Signed-off-by: Philip Tricca <philip.b.tricca@intel.com>
+Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
+---
+ include/sapi/tss2_tpm2_types.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/include/sapi/tss2_tpm2_types.h b/include/sapi/tss2_tpm2_types.h
+index 48cc1dc..aa41c06 100644
+--- a/include/sapi/tss2_tpm2_types.h
++++ b/include/sapi/tss2_tpm2_types.h
+@@ -452,7 +452,7 @@ typedef	TPM_HANDLE TPM_HC;
+ #define	TRANSIENT_FIRST	(HR_TRANSIENT + 0 )	 /* first transient object  */
+ #define	ACTIVE_SESSION_FIRST	(POLICY_SESSION_FIRST )	 /* used in GetCapability  */
+ #define	ACTIVE_SESSION_LAST	(POLICY_SESSION_LAST )	 /* used in GetCapability  */
+-#define	TRANSIENT_LAST	(TRANSIENT_FIRST+MAX_LOADED_OBJECTS1 )	 /* last transient object  */
++#define	TRANSIENT_LAST	(TRANSIENT_FIRST + MAX_LOADED_OBJECTS - 1 )	 /* last transient object  */
+ #define	PERSISTENT_FIRST	(HR_PERSISTENT + 0 )	 /* first persistent object  */
+ #define	PERSISTENT_LAST	(PERSISTENT_FIRST + 0x00FFFFFF )	 /* last persistent object  */
+ #define	PLATFORM_PERSISTENT	(PERSISTENT_FIRST + 0x00800000 )	 /* first platform persistent object  */
+-- 
+2.6.4
+
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index c4b5c8c..2910741 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -7,7 +7,8 @@ SECTION = "tpm"
 SRCREV = "8e25d0cbb287d30c93b2b77e99bc761dc67e31a9"
 SRC_URI = " \
     git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
-    file://ax_pthread.m4"
+    file://ax_pthread.m4 \
+    file://0001-tss2_tpm2_types.h-Fix-broken-TRANSIENT_LAST-macro.patch"
 
 inherit autotools pkgconfig
 
-- 
2.6.4


