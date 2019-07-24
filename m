Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 620F8E00E27; Wed, 24 Jul 2019 05:38:46 -0700 (PDT)
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
	*      [209.85.208.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBFFEE00DA7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:42 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id z28so44428888ljn.4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=9gIBw980opKuJYILyZdS1GRmg0nlpvEk/ndGcXFtzLc=;
	b=ePI0Qde6XA2iPUS6uCMmRf3cHcmirtWVLYmCZB0CiYLZ7Kl8YSUFHUmARPsFLoMGGM
	7egHS8Sg4H0YV1JjII2AtprgBOFKFsNA1lGzr/dliOiHTCkcliErzeozFbNYmg5GnLMJ
	K1/B2WoS3ZZAiclnq0eN7YXh/9fDUvzz6FLSu7H7tFgBbnL+D1aIorjSZ+g5eudLS3Ik
	tZ9bTxeVI3Wr6RO+XbneTeM6eFiOxMDWJyl4WLtZMfJ5Oa4+IPGEBH6odlYH1N+S+w8m
	pUiEcKu83NvSk6oMJebmIxxOPnS1rK7Roe1htdQ91dcRzX90sfWykQNGdBlIAq5dtn/C
	YMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=9gIBw980opKuJYILyZdS1GRmg0nlpvEk/ndGcXFtzLc=;
	b=TVnU/O7dS1QYOqjzqsEKyyMsDqS/65ICvcJIxsxExVXsLqo77c1m4LTEQXi5NqJhPi
	i5QmqxttyRzEnK8+gv0SA8V3qqIgD0OO6cK3L95Y0TRRtMv9lDPwqlqP4DND9q1HULK1
	Vx8MGZMzvSRpOcvMoCW9c6z4X25MrjGzL/TuQiDC6EFp/PjhM4nFDqS4N028ErhjI1Sc
	ADu0wjWcZm6xpBuwEhtcj1acib/sIF6hltbV3+ik6dhCNJrYtwWrYFL0YO0fE8bw/xDn
	sV8Y2tWYB+6loEta9FZGZAIpfNfbYXH1yJLc3lREEoX2zNhhxc+E6VbLlt0I43+5P3c6
	EUpQ==
X-Gm-Message-State: APjAAAVaDoZRbMQTHmU2OUfTdDK7r8YgBc8M3veM8WKaH3u5TAT325SJ
	/42Zcj+WAh3WwcmG2GcPBJJ9d9wsuOk=
X-Google-Smtp-Source: APXvYqzxhP6CCJhE6tNXO0MoMsf/RYj+rxNuCEHqE+CxjQ9Q4PbJoW8XVo2BX0+XeanTgf/5Kn9fuQ==
X-Received: by 2002:a2e:9003:: with SMTP id h3mr40619640ljg.194.1563971921196; 
	Wed, 24 Jul 2019 05:38:41 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id
	p15sm8694423lji.80.2019.07.24.05.38.38
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 05:38:40 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 15:38:30 +0300
Message-Id: <20190724123832.17417-4-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724123832.17417-1-dbaryshkov@gmail.com>
References: <20190724123832.17417-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>,
	Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][PATCH 4/6] tpm2-tcti-uefi: fix configure arguments
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
X-List-Received-Date: Wed, 24 Jul 2019 12:38:46 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Pass correct location of EFI's crt0 and ld script thus removing the need
to patch configure.ac.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../files/configure_oe_fixup.patch            | 27 -------------------
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    | 10 +++++--
 2 files changed, 8 insertions(+), 29 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
deleted file mode 100644
index 8a216cd45eff..000000000000
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/configure_oe_fixup.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-Upstream-Status: OE specific
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/configure.ac
-===================================================================
---- git.orig/configure.ac
-+++ git/configure.ac
-@@ -84,9 +84,6 @@ AC_ARG_WITH([efi-lds],
-             AS_HELP_STRING([--with-efi-lds=LDS_PATH],[Path to gnu-efi lds file.]),
-             [],
-             [with_efi_lds="/usr/lib/elf_${ARCH}_efi.lds"])
--AC_CHECK_FILE(["${with_efi_lds}"],
--              [],
--              [AC_MSG_ERROR([Missing file: ${with_efi_lds}.])])
- EXTRA_LDFLAGS="-L /usr/lib -L /usr/lib64 -Wl,--script=${with_efi_lds}"
- 
- # path to object file from gnu-efi
-@@ -94,9 +91,6 @@ AC_ARG_WITH([efi-crt0],
-             AS_HELP_STRING([--with-efi-crt0=OBJ_PATH],[Path to gnu-efi crt0 object file.]),
-             [],
-             [with_efi_crt0="/usr/lib/crt0-efi-${ARCH}.o"])
--AC_CHECK_FILE(["${with_efi_crt0}"],
--              [],
--              [AC_MSG_ERROR([Missing ${with_efi_crt0} file.])])
- EXTRA_LDLIBS="${with_efi_crt0}"
- 
- # check for efi and gnuefi libraries
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 983f72ebeb68..ed9b7e1ddc8e 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -5,7 +5,6 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
-           file://configure_oe_fixup.patch \
           "
 SRCREV = "7baf1eebfeb56a896bdd5d677fb24377d619eb9d"
 
@@ -13,6 +12,13 @@ S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
 
+EFI_ARCH_x86 = "ia32"
+EFI_ARCH_x86-64 = "x86_64"
+
 COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
-EXTRA_OECONF_append = " --with-efi-includedir=${STAGING_INCDIR}/efi --with-efi-lds=${STAGING_LIBDIR_NATIVE}/"
+EXTRA_OECONF_append = "\
+    --with-efi-includedir=${STAGING_INCDIR}/efi \
+    --with-efi-crt0=${STAGING_LIBDIR_NATIVE}/crt0-efi-${EFI_ARCH}.o \
+    --with-efi-lds=${STAGING_LIBDIR_NATIVE}/elf_${EFI_ARCH}_efi.lds \
+"
 RDEPENDS_${PN} = "gnu-efi"
-- 
2.20.1


