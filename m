Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A302CE00DD1; Wed, 24 Jul 2019 06:03:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 395ECE00AB4
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:43 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id p17so44439418ljg.1
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 06:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=BfXttuy2oHUr9XJlbWRZUWXk1lMqZ94gp9yl41Awv68=;
	b=W632mUXnyEeLVR8qdsw7Tfxyz3QlxskTEb+HvcYOGMu+BoPCLWclTb/bAyw7IBJ6ZO
	UnOqTXSIJX1+R0YDZh7aha6Z4mOyI6Xd8mABO3sEMvfhLzvWzNjplZR3nYnamPILVCj9
	lb15ki5yk9Lezm9v6GXh8TrzUXNJ0f2LjE2aftKECh2oeC+MRrt0GZOg8LVjvHb3VV1O
	jGq0g8C7kojvz71wcrExQryFo4+JWRfTxyfY4pil7BQfsmSdTNwnAV2vF48Z0RHIsGeG
	61NPJ0I3u65kToX14GV8h3Xne33guVIINJROfmAHHpWmiBIRdPvIrYwdsLiXw1iodVYh
	PzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=BfXttuy2oHUr9XJlbWRZUWXk1lMqZ94gp9yl41Awv68=;
	b=a0QrQZIn0b0ZEGmetY7rwWIJB/3Boo66xyn238d/OlhLysM7uWGBfz27w4KV9zWqtB
	FDuROhAnkS4pjy3EjFOVCpddULJGknqonDpcGNt76MF+TPCSvVtVdd9Xme8ZA2CrIXdF
	hjarcz9TBjJVtkpkfhxdirdJwNclW/mQ5L7KncrJlf3eZcPpw0PcW0ICRyu0VEcmRqVC
	m2+MvHJT2L+wzT5/Q4md9+bAO6JkuWKA0/eHeE5/uBl0hat4GRKFmYOMML7VPZquuWC8
	Tbbt7HcNF2QOorSj/IJdr6XemoekmwTs3O/OMvjz1p9L4ikmh6i3f2rSeX8TZ8vbKJka
	JM1w==
X-Gm-Message-State: APjAAAVLFwRMIEeQ90T4DhhdpGd2DY1VEZUIFe2MeA5CZltQkzQDBZM8
	aztv7CV+yLeMgwpleHILiWlEnEK5pcw=
X-Google-Smtp-Source: APXvYqzpW/jk4wm+NfQjEBjcrTeuXGbN5zrVOneYv0XMeBDI8GfH+Hglte8vG6cgq/aG9hQ5vYsiNA==
X-Received: by 2002:a2e:8e90:: with SMTP id z16mr21086070ljk.4.1563973421465; 
	Wed, 24 Jul 2019 06:03:41 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id 2sm8557038lji.94.2019.07.24.06.03.40
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 06:03:40 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 16:03:33 +0300
Message-Id: <20190724130337.24454-2-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724130337.24454-1-dbaryshkov@gmail.com>
References: <20190724130337.24454-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][PATCH v2 2/6] tpm2-tss: fix compilation when using updated AX_CODE_COVERAGE macro
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
X-List-Received-Date: Wed, 24 Jul 2019 13:03:46 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

New autoconf-archive comes with updated AX_CODE_COVERAGE macro, which is
not compatible with current tpm2-tss source base. Apply upstream patch
to fix this incompatibility.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 ...-ax_code_coverage.m4-version-2019.01.patch | 84 +++++++++++++++++++
 .../recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb   |  3 +-
 2 files changed, 86 insertions(+), 1 deletion(-)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch
new file mode 100644
index 000000000000..86b2cb6dd7d3
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss/0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch
@@ -0,0 +1,84 @@
+From ec08ab41495ac40641475707c46e844503ada5b3 Mon Sep 17 00:00:00 2001
+From: Jonas Witschel <diabonas@gmx.de>
+Date: Mon, 7 Jan 2019 22:15:06 +0100
+Subject: [PATCH] build: update for ax_code_coverage.m4 version 2019.01.06
+
+@CODE_COVERAGE_RULES@ doesn't exist any more and needs to be replaced.
+Also includes a compatibility switch for older versions of the file.
+
+Signed-off-by: Jonas Witschel <diabonas@gmx.de>
+---
+ .gitignore   |  1 +
+ .travis.yml  | 10 +++++-----
+ Makefile.am  |  6 ++++++
+ configure.ac |  3 +++
+ 4 files changed, 15 insertions(+), 5 deletions(-)
+
+diff --git a/.gitignore b/.gitignore
+index 7c6a7b62e6c1..aa1a7efdff71 100644
+--- a/.gitignore
++++ b/.gitignore
+@@ -26,6 +26,7 @@
+ AUTHORS
+ tags
+ aclocal.m4
++aminclude_static.am
+ autom4te.cache/
+ [Bb]uild/
+ [Dd]ebug/
+diff --git a/.travis.yml b/.travis.yml
+index 55f88e22999b..a668e2953dc2 100644
+--- a/.travis.yml
++++ b/.travis.yml
+@@ -44,11 +44,11 @@ addons:
+ 
+ install:
+ # Autoconf archive
+-  - wget https://download.01.org/tpm2/autoconf-archive-2017.09.28.tar.xz
+-  - sha256sum autoconf-archive-2017.09.28.tar.xz | grep -q 5c9fb5845b38b28982a3ef12836f76b35f46799ef4a2e46b48e2bd3c6182fa01 || travis_terminate 1
+-  - tar xJf autoconf-archive-2017.09.28.tar.xz
+-  - cp autoconf-archive-2017.09.28/m4/ax_code_coverage.m4 m4/
+-  - cp autoconf-archive-2017.09.28/m4/ax_prog_doxygen.m4 m4/
++  - wget http://ftpmirror.gnu.org/autoconf-archive/autoconf-archive-2019.01.06.tar.xz
++  - sha256sum autoconf-archive-2019.01.06.tar.xz | grep -q 17195c833098da79de5778ee90948f4c5d90ed1a0cf8391b4ab348e2ec511e3f || travis_terminate 1
++  - tar xJf autoconf-archive-2019.01.06.tar.xz
++  - cp autoconf-archive-2019.01.06/m4/ax_code_coverage.m4 m4/
++  - cp autoconf-archive-2019.01.06/m4/ax_prog_doxygen.m4 m4/
+ # IBM-TPM
+   - wget https://download.01.org/tpm2/ibmtpm974.tar.gz
+ # OpenSSL 1.0.2
+diff --git a/Makefile.am b/Makefile.am
+index 1b792d89a392..8e62e9c77c7d 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -19,7 +19,13 @@ noinst_PROGRAMS =
+ 
+ ### Add ax_* rules ###
+ # ax_code_coverage
++if AUTOCONF_CODE_COVERAGE_2019_01_06
++include $(top_srcdir)/aminclude_static.am
++clean-local: code-coverage-clean
++dist-clean-local: code-coverage-dist-clean
++else
+ @CODE_COVERAGE_RULES@
++endif
+ 
+ # ax_doxygen
+ @DX_RULES@
+diff --git a/configure.ac b/configure.ac
+index 6c7b0fd96399..22b79c50c015 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -312,6 +312,9 @@ AS_IF([test "x$enable_doxygen_doc" != xno],
+       [ERROR_IF_NO_PROG([doxygen])])
+ 
+ AX_CODE_COVERAGE
++m4_ifdef([_AX_CODE_COVERAGE_RULES],
++         [AM_CONDITIONAL(AUTOCONF_CODE_COVERAGE_2019_01_06, [true])],
++         [AM_CONDITIONAL(AUTOCONF_CODE_COVERAGE_2019_01_06, [false])])
+ 
+ AC_OUTPUT
+ 
+-- 
+2.20.1
+
diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
index cf93159ce40f..ffbd3f4e4eff 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.2.3.bb
@@ -8,7 +8,8 @@ DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
 SRCREV = "36b1539c82bf675265d6f6a6cd808a189b6971f4"
 
-SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.2.x"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.2.x \
+    file://0001-build-update-for-ax_code_coverage.m4-version-2019.01.patch"
 
 inherit autotools-brokensep pkgconfig systemd
 
-- 
2.20.1


