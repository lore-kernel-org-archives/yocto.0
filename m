Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 408EFE008D3; Sun, 28 Jul 2019 08:31:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9BACE008D3
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:31:55 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id z15so35995763lfh.13
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=VjKUNwQQHFk6t6OFUTtSTxqtfbWiepX3P70Ec/QmmOw=;
	b=g20uKiQAVh3xuOz0995VwTtf83nFKXQLuiVwyox9M7qqrhc9zcOMg/Sf278QZwkCW7
	n2P5VQlwSuBp6CNOKWTXXe1v/2g9B0qyG6vTXG9TCy1+bSufz2mkt9yT1TcfdVrNT3ik
	Stkv18t0qmt5Kys9bmNYcOKHBnmjNuyp6RR/rD8E/Ox+MYFxB3bWjPWlnNMAsgF05Jv3
	AoyHpu51rdFDHfIYcgi4az02d9J2sQ8CFDkRUD0/WJsMwSDprd5VSAEiadK3KGud+Msh
	t7O4UfcbOgwulu7g4JEU9KWEtMNw9xBJ4xchNPfYQ51bJ5u6/ypvkhdD3drL5QdsFKbD
	Yqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=VjKUNwQQHFk6t6OFUTtSTxqtfbWiepX3P70Ec/QmmOw=;
	b=coIYkElj72VM1ai0nFbdy8/vACO5dLS4mT8Jpoezn64TWo3Q60IjfAIkFs3CKgMztA
	jBNs6FmwRJkRSuOfFJwvIu9KUJjQiCB+9j1o16H6G6lkVxL98572Y3wiUEQK1NoLnM/Z
	PpMMOup78KRttXFLKaJ+yBGzH86z2YloE/21dBSQUnBL4f6vQ2igEu0445TbhLjv3zk/
	iw5g640AHZWC5gigzYcHXk2ApD91iASWVk0z4W1FIY6sauJUh2sca1To6zCbH85mzkmP
	zvgnCHYfdsl3ieWrGr1Ubk9xZBeHvKkfCtj2n0R9YRGfGBe5YNUr3CCJ5R/2PkbvJ4/a
	l+iQ==
X-Gm-Message-State: APjAAAWEwLa6zGQUve6f108hLlXK2CgBA0sjDAjDg4S/jgGSz5FRDRQu
	yNtNRF7AbdcADRgqDy3Njz72qru/rm4=
X-Google-Smtp-Source: APXvYqxzzi+5UDl16QaUzkjyTQYGj1/HXfkm0V1ucgEFNsWIGCptNPZfdC329+WddmPGuTCdATA5kQ==
X-Received: by 2002:a05:6512:c1:: with SMTP id
	c1mr27213825lfp.35.1564327914289; 
	Sun, 28 Jul 2019 08:31:54 -0700 (PDT)
Received: from localhost.localdomain ([94.25.228.134])
	by smtp.gmail.com with ESMTPSA id
	j7sm13520555lji.27.2019.07.28.08.31.53 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 28 Jul 2019 08:31:53 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Jul 2019 18:31:48 +0300
Message-Id: <20190728153150.9438-1-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-security 1/3] meta-integrity: rename IMA_EVM_BASE to INTEGRITY_BASE
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
X-List-Received-Date: Sun, 28 Jul 2019 15:31:57 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

data/debug-keys will be reused for demo modsign keys, so rename
IMA_EVM_BASE to more generic INTEGRITY_BASE.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 meta-integrity/README.md                             | 12 ++++++------
 meta-integrity/classes/ima-evm-rootfs.bbclass        |  2 +-
 meta-integrity/conf/layer.conf                       |  6 +++---
 .../recipes-core/images/integrity-image-minimal.bb   |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
index 5bef76e8dcd4..4607948781e2 100644
--- a/meta-integrity/README.md
+++ b/meta-integrity/README.md
@@ -74,7 +74,7 @@ compilation of the Linux kernel. To also activate it when building
 the image, enable image signing in the local.conf like this:
 
     INHERIT += "ima-evm-rootfs"
-    IMA_EVM_KEY_DIR = "${IMA_EVM_BASE}/data/debug-keys"
+    IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
 
 This uses the default keys provided in the "data" directory of the layer.
 Because everyone has access to these private keys, such an image
@@ -96,7 +96,7 @@ for that are included in the layer. This is also how the
     # In that shell, create the keys. Several options exist:
 
     # 1. Self-signed keys.
-    $IMA_EVM_BASE/scripts/ima-gen-self-signed.sh
+    $INTEGRITY_BASE/scripts/ima-gen-self-signed.sh
 
     # 2. Keys signed by a new CA.
     # When asked for a PEM passphrase, that will be for the root CA.
@@ -104,11 +104,11 @@ for that are included in the layer. This is also how the
     # only creating new certificates does. Most likely the default
     # attributes for these certificates need to be adapted; modify
     # the scripts as needed.
-    # $IMA_EVM_BASE/scripts/ima-gen-local-ca.sh
-    # $IMA_EVM_BASE/scripts/ima-gen-CA-signed.sh
+    # $INTEGRITY_BASE/scripts/ima-gen-local-ca.sh
+    # $INTEGRITY_BASE/scripts/ima-gen-CA-signed.sh
 
     # 3. Keys signed by an existing CA.
-    # $IMA_EVM_BASE/scripts/ima-gen-CA-signed.sh <CA.pem> <CA.priv>
+    # $INTEGRITY_BASE/scripts/ima-gen-CA-signed.sh <CA.pem> <CA.priv>
     exit
 
 When using ``ima-self-signed.sh`` as described above, self-signed keys
@@ -169,7 +169,7 @@ IMA policy loading became broken in systemd 2.18. The modified systemd
 changes. To activate policy loading via systemd, place a policy file
 in `/etc/ima/ima-policy`, for example with:
 
-    IMA_EVM_POLICY_SYSTEMD = "${IMA_EVM_BASE}/data/ima_policy_simple"
+    IMA_EVM_POLICY_SYSTEMD = "${INTEGRITY_BASE}/data/ima_policy_simple"
 
 To check that measuring works, look at `/sys/kernel/security/ima/ascii_runtime_measurements`
 
diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
index 8aec388dffed..d6ade3bf914f 100644
--- a/meta-integrity/classes/ima-evm-rootfs.bbclass
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -1,7 +1,7 @@
 # No default! Either this or IMA_EVM_PRIVKEY/IMA_EVM_X509 have to be
 # set explicitly in a local.conf before activating ima-evm-rootfs.
 # To use the insecure (because public) example keys, use
-# IMA_EVM_KEY_DIR = "${IMA_EVM_BASE}/data/debug-keys"
+# IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
 IMA_EVM_KEY_DIR ?= "IMA_EVM_KEY_DIR_NOT_SET"
 
 # Private key for IMA signing. The default is okay when
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 917aa86e11d7..1d31edd9b151 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -13,13 +13,13 @@ BBFILE_PRIORITY_integrity = "6"
 # Set a variable to get to the top of the metadata location. Needed
 # for finding scripts (when following the README.md instructions) and
 # default debug keys (in ima-evm-rootfs.bbclass).
-IMA_EVM_BASE := '${LAYERDIR}'
+INTEGRITY_BASE := '${LAYERDIR}'
 
 # We must not export this path to all shell scripts (as in "export
-# IMA_EVM_BASE"), because that causes problems with sstate (becames
+# INTEGRITY_BASE"), because that causes problems with sstate (becames
 # dependent on location of the layer). Exporting it to just the
 # interactive shell is enough.
-OE_TERMINAL_EXPORTS += "IMA_EVM_BASE"
+OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
 LAYERSERIES_COMPAT_integrity = "warrior"
 # ima-evm-utils depends on keyutils from meta-security
diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index 6ed724df2267..e1bc6ffa0ed7 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -17,6 +17,6 @@ inherit core-image
 export IMAGE_BASENAME = "integrity-image-minimal"
 
 INHERIT += "ima-evm-rootfs"
-IMA_EVM_KEY_DIR = "${IMA_EVM_BASE}/data/debug-keys"
+IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
 
 QB_KERNEL_CMDLINE_APPEND_append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
-- 
2.20.1


