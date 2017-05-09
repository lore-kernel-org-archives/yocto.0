Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CF57E00B3F; Tue,  9 May 2017 07:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B60F4E00B3E
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:12 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id u187so197442pgb.1
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=UGcKNS9f9m+4tkwGwoFh1FSc+ZWCjRqxN+eOt+b7UF0=;
	b=WkmX9JgfQiCnFbuVcVI3/W+ZGI3H+rXjSL//KTg+S4mOx1XuhzbIycR2/3SBDKuSq0
	nyJm89zY+wEMm2lDwad/y6jCvYHWlZf7z0M21CDDx5C0iJdn5n5FMqvkHgwcnXvou2gq
	zaUhmN9z8wL7flMqxQYfK8CVaFIWp32l+bPY5WFfNapJadeN7fPtlVJSN9KUS1Vtc6zX
	D/77bzOVGQOJ9HBoY1/aTltm7kxc1/LF1kjNoHGN0IezHeuR57HB7Ged+JbQmpFK79YE
	UQxpCVSMzrh79IwwyaD7wzBvL8IERXyEP52jxBAyIdwSq9KVkQwdkP0kgoL5ORxQx0/5
	xWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=UGcKNS9f9m+4tkwGwoFh1FSc+ZWCjRqxN+eOt+b7UF0=;
	b=VubsX5NW7GjC9QZ8WYvx/lh5/666Cc+UwOKjiFvP5IsjCKCIooxL5xjJP3yCP+95xd
	lhqo/66Fp283shRTQSsEApNdZx9t+rYpqBNby4LiWlWNMq56LW0K3zGn+e0n6J+ySmng
	uFMhhjHAmu2/MT4bJ3wd9C2iZOTS8HOW4IljVNwSBzY1cD3t/7som+83LEHuh3gYl32a
	kgMFuJwCXKmOZ4y15dqPiB+wPIa4lBpQBbBP17XMjtUU9kDs0nnOne8gaVgMeFH8WBNm
	ryttVEjG3UiqgSQL3NkPiVCqRz/JT5Pxvo8olppMTAUctFhXaWC8sH2O/KA+o11qmg8P
	IHZg==
X-Gm-Message-State: AODbwcCHLes71o5KVDTxjslKvIYrTQxka2hlVAp05mvUWsouM7pMchQW
	YEboVTjVBJLRDA==
X-Received: by 10.98.214.90 with SMTP id r87mr309274pfg.204.1494341232403;
	Tue, 09 May 2017 07:47:12 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:12 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:47:01 -0700
Message-Id: <1494341221-17621-11-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 10/10] tpm2: package groups fixes
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
X-List-Received-Date: Tue, 09 May 2017 14:47:19 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-security-tpm-i2c.bb         |  2 ++
 .../packagegroup/packagegroup-security-tpm.bb             | 15 +++++++++++++++
 .../packagegroup/packagegroup-security-tpm2.bb            |  2 +-
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
index d4c3bb7..d3d9ebc 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
@@ -9,6 +9,8 @@ PACKAGES = "packagegroup-security-tpm-i2c"
 
 SUMMARY_packagegroup-security-tpm-i2c = "Security TPM i2c support"
 RDEPENDS_packagegroup-security-tpm-i2c = " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'packagegroup-security-tpm', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'packagegroup-security-tpm2, '', d)} \
     kernel-module-tpm-i2c-atmel \
     kernel-module-tpm-i2c-infineon \
     kernel-module-tpm-i2c-nuvoton \
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index 2412348..2db8521 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -11,4 +11,19 @@ SUMMARY_packagegroup-security-tpm = "Security TPM support"
 RDEPENDS_packagegroup-security-tpm = " \
     tpm-tools \
     trousers \
+    ${X86_TPM_MODULES} \
+    "
+
+X86_TPM_MODULES ?= ""
+
+X86_TPM_MODULES_x86 = " \
+    kernel-module-tpm-atmel \
+    kernel-module-tpm-infineon \
+    kernel-module-tpm-nsc \
+    "
+
+X86_TPM_MODULES_x86-64 = " \
+    kernel-module-tpm-atmel \
+    kernel-module-tpm-infineon \
+    kernel-module-tpm-nsc \
     "
diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 1c96cbe..57b0722 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -10,9 +10,9 @@ PACKAGES = "packagegroup-security-tpm2"
 SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
 RDEPENDS_packagegroup-security-tpm2 = " \
     tpm2.0-tools \
+    trousers \
     libtss2 \
     libtctidevice \
     libtctisocket \
     resourcemgr \
-    kernel-module-tpm-crb \
     "
-- 
2.7.4


