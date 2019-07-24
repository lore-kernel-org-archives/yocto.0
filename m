Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 031F6E00DD1; Wed, 24 Jul 2019 05:38:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6758E00E02
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:43 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id x25so44405992ljh.2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 05:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=+oxBVsARUIugqnuASlXqjdejQRmogsK5c+EwKDNmMHQ=;
	b=ReuN0HGMSQKjX5C6tCNuTLzbZFga36HY6wPIVqOqFuVX3/suayf5QHJiEglUpXKM3l
	9EMqzkj3uxggsK7fz3hj52LA56Glym8Qipu9we6UWpACfeGQzc3+heK7YBbt3v4kDqO4
	uIsQ2XhFoFZKSjQmGLXyNof54mRuaE17GKqwrU+sPhBvFu0GiJUykJJ24t06jf86TXLh
	4Per3whUnrJ2s258pq16ovGqBZIpdFDfWo8CzFlM/+jwiOBZFhqzbGyVPkTSSGRKBN7P
	RAfdMEnAmdQmBoH1fqkXwpkkLro0j+U9/miXMBg2KVb+qUu5lhk+qQcwMVtdPc9B/qaf
	OUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=+oxBVsARUIugqnuASlXqjdejQRmogsK5c+EwKDNmMHQ=;
	b=FodnABbA+9Ojk3eqb/pZSjCxeJXwXtTwRn9+dhOhbHuECMcZmjnioOsLWcCvTJIhQG
	yc3jCzd0E/VhMAb6iBsIuAcgJ4I2Fyhx8X9+qyMYdbO3g0UyZ+p8rG2mJprUGsrn8a22
	Vvg4msq7KuWfOfyR7GDuyyzsbwLwcny5pk3WajB09vmToAfDfVS+UmecZDdu9hMEnxW8
	2DPjDRYBDxImcMI3PpGWQM7u+UiH9OXiC7pK2A8I8cG+YPUmjhK3qkasSPaz/yc5qFLF
	SQ0hBk9AOJguk8AD9oYlNWQtVSXArZe6X+urVs/wCQYzYvSCKRoJ1CVHlE/OXV/HPR7d
	KE8Q==
X-Gm-Message-State: APjAAAVaqiKmUPQUZfT9jWllLpCVFGNYaHwiVz/erqkDacv+SjOZ2/J9
	5qvL6NsJZ88vhNDGsAh7T36NPcBpDmA=
X-Google-Smtp-Source: APXvYqxz79GT1TH5484NfKoDfopDCJr83U5Xz+pI9cBHUmX8IqRbS4MpT96pqFTx7UaTGcoKf3RX4Q==
X-Received: by 2002:a2e:7604:: with SMTP id r4mr20450213ljc.225.1563971922391; 
	Wed, 24 Jul 2019 05:38:42 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id
	p15sm8694423lji.80.2019.07.24.05.38.41
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 05:38:41 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 15:38:31 +0300
Message-Id: <20190724123832.17417-5-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724123832.17417-1-dbaryshkov@gmail.com>
References: <20190724123832.17417-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH 5/6] tpm2-tcti-uefi: stop inserting host directories into build path
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
X-List-Received-Date: Wed, 24 Jul 2019 12:38:47 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Do not insert /usr/lib and /usr/lib64 into LDFLAGS.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 ...p-inserting-host-directories-into-co.patch | 30 +++++++++++++++++++
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
new file mode 100644
index 000000000000..bf9f8ff4a12a
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi/0001-configure.ac-stop-inserting-host-directories-into-co.patch
@@ -0,0 +1,30 @@
+From b74837184cfdefb45e48f3fdc974fc67691fc861 Mon Sep 17 00:00:00 2001
+From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
+Date: Wed, 3 Jul 2019 19:16:35 +0300
+Subject: [PATCH] configure.ac: stop inserting host directories into compile
+ path
+
+Do not insert /usr/lib and /usr/lib64 into library search path.
+
+Upstream-Status: OE specific
+Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
+---
+ configure.ac | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index 4e94f1eda363..54a1f39c019b 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -84,7 +84,7 @@ AC_ARG_WITH([efi-lds],
+ AC_CHECK_FILE(["${with_efi_lds}"],
+               [],
+               [AC_MSG_ERROR([Missing file: ${with_efi_lds}.])])
+-EXTRA_LDFLAGS="-L /usr/lib -L /usr/lib64 -Wl,--script=${with_efi_lds}"
++EXTRA_LDFLAGS="-Wl,--script=${with_efi_lds}"
+ 
+ # path to object file from gnu-efi
+ AC_ARG_WITH([efi-crt0],
+-- 
+2.20.1
+
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index ed9b7e1ddc8e..78392289d7d9 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -5,6 +5,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 DEPENDS = "libtss2-dev gnu-efi-native gnu-efi pkgconfig autoconf-archive-native"
 
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
+	   file://0001-configure.ac-stop-inserting-host-directories-into-co.patch \
           "
 SRCREV = "7baf1eebfeb56a896bdd5d677fb24377d619eb9d"
 
-- 
2.20.1


