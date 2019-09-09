Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EEB8E00DDC; Sun,  8 Sep 2019 21:16:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6664E00DCE
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 21:16:32 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id p9so1230191plk.5
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2019 21:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=e4hHaMD8tzA4od5Q/kO389tblxo0/N70JUVFzOb8SfA=;
	b=QOj/5OeV8Gwl+sMeItygg/lpIKeiyTvEFRgWLEcR3f5GGvOs/aqwlto8QJhU0H+7/o
	XHYDdKy8T9C4fW/FbjkMLIPxdhk6FxIyTNAqLzMAglZ3jlRWHmgv0T5XIPa2q9nG6xfr
	tvAyOp7r7JJpfHe6ou1Nhyw5JQ0vGngwWidp28SbFqrCb3jUAIbSnQJ7ZpdZSJHbe8k8
	9Xa4/+vI4gIgZ9lqDiTSMi+MWn+72hIqcKgLNZhfc7vFq5tbNmK/psL8XzpXqOJZ2ZX2
	lHSajRlhJAQzTuJKGTLQ4+oGcotlAaZSEuEk1kSmXAd4dANcQQYJD4odw081QfOWhQRP
	KmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=e4hHaMD8tzA4od5Q/kO389tblxo0/N70JUVFzOb8SfA=;
	b=mAK9DnqVPGVfi8pPUCZR00oNSbcmcWfN/e/nL6Qk0zN4mVmd+RiAVnN/8IarU6OzHq
	owU19S7nS/EcixpeK2pRoIK/SWz7vB8B77Im8EKCpNesjVaACuyTs3NrtyLcQ4ezRdO/
	/H7GdxQ/j2BKPQQsFMmkOPNLO9tItHqAjmbVmTBHfTNa/Vy5k0G55MelqOMLIalymxem
	0uCqGVw0hy7Q5bM2U8+6CHNsfpFSJwXEaq1RTFjDEtzrZCQbnpyO0I4LPZ4eLlL+Xn/9
	9b0m3cJYQVSC04LMY3DATLK3YQowpn+2c/u0NxH/eOaFDMulkNAFhZQCsP9qoll+Rjtx
	y+Ww==
X-Gm-Message-State: APjAAAVpb0yG8Tmywu17ym8zlOG+8vADvzOWAOUZu3xfEYf0dIU892zN
	h6uRy6yG8EWcHwldv5hVKcnyePlH
X-Google-Smtp-Source: APXvYqzeIaNp5y/Iw0pLr3RLH+Qvn8uh9QNn2bICLGYMijXPThgHI0lLRybRjWYc62xaB2F/yCw2UA==
X-Received: by 2002:a17:902:7781:: with SMTP id
	o1mr22548976pll.238.1568002591928; 
	Sun, 08 Sep 2019 21:16:31 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5616457pfm.113.2019.09.08.21.16.31 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 08 Sep 2019 21:16:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  8 Sep 2019 21:16:24 -0700
Message-Id: <20190909041628.7934-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909041628.7934-1-akuster808@gmail.com>
References: <20190909041628.7934-1-akuster808@gmail.com>
Subject: [PATCH 4/8] tpm2-tss: update to 2.3.0
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
X-List-Received-Date: Mon, 09 Sep 2019 04:16:36 -0000

drop patch already in update

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...-ax_code_coverage.m4-version-2019.01.patch | 84 -------------------
 .../{tpm2-tss_2.2.3.bb => tpm2-tss_2.3.1.bb}  |  5 +-
 2 files changed, 2 insertions(+), 87 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_2.2.3.bb => tpm2-tss_2.3.1.bb} (93%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch
deleted file mode 100644
index 86b2cb6..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch
+++ /dev/null
@@ -1,84 +0,0 @@
-From ec08ab41495ac40641475707c46e844503ada5b3 Mon Sep 17 00:00:00 2001
-From: Jonas Witschel <diabonas@gmx.de>
-Date: Mon, 7 Jan 2019 22:15:06 +0100
-Subject: [PATCH] build: update for ax_code_coverage.m4 version 2019.01.06
-
-@CODE_COVERAGE_RULES@ doesn't exist any more and needs to be replaced.
-Also includes a compatibility switch for older versions of the file.
-
-Signed-off-by: Jonas Witschel <diabonas@gmx.de>
----
- .gitignore   |  1 +
- .travis.yml  | 10 +++++-----
- Makefile.am  |  6 ++++++
- configure.ac |  3 +++
- 4 files changed, 15 insertions(+), 5 deletions(-)
-
-diff --git a/.gitignore b/.gitignore
-index 7c6a7b62e6c1..aa1a7efdff71 100644
---- a/.gitignore
-+++ b/.gitignore
-@@ -26,6 +26,7 @@
- AUTHORS
- tags
- aclocal.m4
-+aminclude_static.am
- autom4te.cache/
- [Bb]uild/
- [Dd]ebug/
-diff --git a/.travis.yml b/.travis.yml
-index 55f88e22999b..a668e2953dc2 100644
---- a/.travis.yml
-+++ b/.travis.yml
-@@ -44,11 +44,11 @@ addons:
- 
- install:
- # Autoconf archive
--  - wget https://download.01.org/tpm2/autoconf-archive-2017.09.28.tar.xz
--  - sha256sum autoconf-archive-2017.09.28.tar.xz | grep -q 5c9fb5845b38b28982a3ef12836f76b35f46799ef4a2e46b48e2bd3c6182fa01 || travis_terminate 1
--  - tar xJf autoconf-archive-2017.09.28.tar.xz
--  - cp autoconf-archive-2017.09.28/m4/ax_code_coverage.m4 m4/
--  - cp autoconf-archive-2017.09.28/m4/ax_prog_doxygen.m4 m4/
-+  - wget http://ftpmirror.gnu.org/autoconf-archive/autoconf-archive-2019.01.06.tar.xz
-+  - sha256sum autoconf-archive-2019.01.06.tar.xz | grep -q 17195c833098da79de5778ee90948f4c5d90ed1a0cf8391b4ab348e2ec511e3f || travis_terminate 1
-+  - tar xJf autoconf-archive-2019.01.06.tar.xz
-+  - cp autoconf-archive-2019.01.06/m4/ax_code_coverage.m4 m4/
-+  - cp autoconf-archive-2019.01.06/m4/ax_prog_doxygen.m4 m4/
- # IBM-TPM
-   - wget https://download.01.org/tpm2/ibmtpm974.tar.gz
- # OpenSSL 1.0.2
-diff --git a/Makefile.am b/Makefile.am
-index 1b792d89a392..8e62e9c77c7d 100644
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -19,7 +19,13 @@ noinst_PROGRAMS =
- 
- ### Add ax_* rules ###
- # ax_code_coverage
-+if AUTOCONF_CODE_COVERAGE_2019_01_06
-+include $(top_srcdir)/aminclude_static.am
-+clean-local: code-coverage-clean
-+dist-clean-local: code-coverage-dist-clean
-+else
- @CODE_COVERAGE_RULES@
-+endif
- 
- # ax_doxygen
- @DX_RULES@
-diff --git a/configure.ac b/configure.ac
-index 6c7b0fd96399..22b79c50c015 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -312,6 +312,9 @@ AS_IF([test "x$enable_doxygen_doc" != xno],
-       [ERROR_IF_NO_PROG([doxygen])])
- 
- AX_CODE_COVERAGE
-+m4_ifdef([_AX_CODE_COVERAGE_RULES],
-+         [AM_CONDITIONAL(AUTOCONF_CODE_COVERAGE_2019_01_06, [true])],
-+         [AM_CONDITIONAL(AUTOCONF_CODE_COVERAGE_2019_01_06, [false])])
- 
- AC_OUTPUT
- 
--- 
-2.20.1
-
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
similarity index 93%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
index ffbd3f4..3e77f71 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
@@ -6,10 +6,9 @@ SECTION = "tpm"
 
 DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
-SRCREV = "36b1539c82bf675265d6f6a6cd808a189b6971f4"
+SRCREV = "a99e733ba66c359502689a9c42fd5e02ed1dd7d6"
 
-SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.2.x \
-    file://0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.3.x"
 
 inherit autotools-brokensep pkgconfig systemd
 
-- 
2.17.1


