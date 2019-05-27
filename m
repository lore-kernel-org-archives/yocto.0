Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FE8AE00D11; Sun, 26 May 2019 21:56:48 -0700 (PDT)
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
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C753E00CD5
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:47 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id q17so3997626pfq.8
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=gCGvAzzIicRt7zvnJoVcYNWpWSE11KFnb1X5a9TK3S8=;
	b=PESZzHD1nMxZgBgivZqxK73/pPde9HeTWtj3XZTS3iZFmiCO2ySTl0dFuJZ1QUHECP
	ySWfWJwXQp4KNsiX0y4BI9vbpWZi1i4Qu3FuM0ukE9zDtXaV5Zt+16gPyYtXQdcF6r5w
	DsVR7O/vS+v1oNYZtHkLab0bXofAqEiJE9zXb4di5+Lak3LwESh52jR8NuyMKOAbKjXo
	1Wvoz3c5ngtA3ZQW189VzikVe9/PoM6c6s2JfVYWwxO4261Zau8YF4+ReXoKFt5nxTkF
	msjMRj25KRoOAAhl7TdQnp+89XF/HjVXsB96W/z6nQwJR5pmtqVcx3v+UbZUN4iQuKIn
	vqMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=gCGvAzzIicRt7zvnJoVcYNWpWSE11KFnb1X5a9TK3S8=;
	b=pAwMIshnlAqyG7n+CcUJm6fR0CLAJFwYFj1DC8uD7VV4u2jqhtogSk9AgvqI8tAPxL
	iPZO9mIZh7sf1KOGm7UdjTInVh3PmFj3R1GkM+cWdXCUap9/hrad9P7HzRBoZ9Chr/zZ
	YbtYDhRGzPQ0rJj2oIHSj0RSU/OLN3q0r+mU0YN7iLtqKGEAmMXOKgEI8VnrxUxRQNhy
	kMF5CCrIZTHG/CF3CYbT2uBd15dsz7iRiE2IZIyYwcG/espK6ba4RPRNRcUuuA+qbVPk
	nhezGQU9rebpHUgvn6c9pX4X1abroEiOVqiSmIiO+dz87kusYm+opK3BRcmMxjDF0HSx
	8Zsg==
X-Gm-Message-State: APjAAAVcCSqO0YmcBxh948YxcN3NORXCaHzkEmyVs9kfbimePJchQ7EZ
	TNiCbOa2spyOaYQOkyBVJz1kYqWC
X-Google-Smtp-Source: APXvYqxJS1viLifVrc0qqo7OUaEvMRYH5hVCowpY45OxYGWQmb76Obm3HrZOuUTskjnBwbtSEa+5AQ==
X-Received: by 2002:a17:90a:17cb:: with SMTP id
	q69mr28227588pja.106.1558933007468; 
	Sun, 26 May 2019 21:56:47 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:32 -0700
Message-Id: <20190527045641.18884-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/14] ima.cfg: update to 5.0 kernel
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
X-List-Received-Date: Mon, 27 May 2019 04:56:48 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux/ima.cfg        | 28 ++++++++++---------
 .../linux/linux/ima_evm_root_ca.cfg           |  6 ++--
 2 files changed, 18 insertions(+), 16 deletions(-)

diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.cfg b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
index 02381aa..b3e47ba 100644
--- a/meta-integrity/recipes-kernel/linux/linux/ima.cfg
+++ b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
@@ -1,16 +1,18 @@
-# Enable bare minimum IMA measurement and appraisal as needed by this layer.
-
-CONFIG_SECURITY=y
-CONFIG_INTEGRITY=y
-
-# measurement
 CONFIG_IMA=y
-
-# appraisal
+CONFIG_IMA_MEASURE_PCR_IDX=10
+CONFIG_IMA_NG_TEMPLATE=y
+CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
+CONFIG_IMA_DEFAULT_HASH_SHA1=y
+CONFIG_IMA_DEFAULT_HASH="sha1"
 CONFIG_IMA_APPRAISE=y
-CONFIG_INTEGRITY_SIGNATURE=y
-CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
-
-# Kernel will get built with embedded X.509 root CA key and all keys
-# need to be signed with that.
+CONFIG_IMA_APPRAISE_BOOTPARAM=y
 CONFIG_IMA_TRUSTED_KEYRING=y
+CONFIG_SIGNATURE=y
+CONFIG_IMA_WRITE_POLICY=y
+CONFIG_IMA_READ_POLICY=y
+CONFIG_IMA_LOAD_X509=y
+CONFIG_IMA_X509_PATH="/etc/keys/x509_ima.der"
+
+#CONFIG_INTEGRITY_SIGNATURE=y
+#CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
+#CONFIG_INTEGRITY_TRUSTED_KEYRING=y
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg b/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
index 7338232..9a45425 100644
--- a/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
+++ b/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
@@ -1,3 +1,3 @@
-CONFIG_KEYS=y
-CONFIG_SYSTEM_TRUSTED_KEYRING=y
-CONFIG_SYSTEM_TRUSTED_KEYS=""
+# CONFIG_IMA_APPRAISE_SIGNED_INIT is not set
+CONFIG_EVM_LOAD_X509=y
+CONFIG_EVM_X509_PATH="/etc/keys/x509_evm.der"
-- 
2.17.1


