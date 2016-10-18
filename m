Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8424BE00C75; Mon, 17 Oct 2016 17:02:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32002E00C6A
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:51 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id fn2so8806020pad.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=DfH1gtTLgdjUOBQ/905zL6ue16xyuY/kNQY4lcJgF4s=;
	b=AcEZuow0+ZuBnNEOdL7H19dEbL0zbTEwPtGEcFmnNQEeebFMbtArNFznq4+g7J/UrA
	eojJ5JtlN4vbdxFFtpYkZJwuUemnXijI1WmaTEdivu9HrXgUnjgMRckTVkyKkDPxeOI1
	KwAz7Gwu5AIItw0mgobHVf/8N45gBzqT+OUYHX1EgMUkqXYBaSOZEOfY2iTW0AntXyEq
	eRiSu03QvXuxJFwM9LZJfIHXkd0bgOSVqysb17+a5datdD+u1MMlEHdd+wlI69nyHwcI
	QMcv8CaJ3yvrbSSVoTSpeekSztxC8EZcn6xkK5zAbp1h2wlKhrd2eaOFgrenklkPZ1dA
	Pe9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=DfH1gtTLgdjUOBQ/905zL6ue16xyuY/kNQY4lcJgF4s=;
	b=GgyJJWDTzA0xcGVBb5mRu200/nAIoEwuUmI58Aw4lxFOxF5fBDmBM2ygdmnxjMPJ+q
	PzD5xPC/t2zxBAB4BFOB+ob1HC07RuZMtCpD7p/gN6FDaxd+VY6oq9tITMy+s+Zq8EUW
	i9chhjhaBBSbamOxU91TBVVKg9wyW86ACXVmLzasr+RxAG1NWr8jpu8OH7s92JuMNBOg
	9Qz9zh4Mgx/YiUtNUEpMY/WM8JWEtep626UEdUroaVmJf8RDjUVyqLWwn1uM1kyCGmeD
	PVeJxDvb99DwMV5zbUtsSHBrpTRIQNRS/lqUFQlgzgCB6ZHY4sBTurxwjhKjDQs/inLS
	+VdQ==
X-Gm-Message-State: AA6/9Rn7LpH3v9OUQ2vq6QXL1tEvmHEapoRycaBVGMd6JuSW9HWsNYeNZGQHkeVIlrbxqw==
X-Received: by 10.66.50.234 with SMTP id f10mr170141pao.30.1476748970708;
	Mon, 17 Oct 2016 17:02:50 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:50 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:30 -0700
Message-Id: <1476748950-21342-17-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 17/17] python-pycrypto: simplify to use pypi class
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:52 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-devtools/python/python-pycrypto_2.6.1.bb | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/recipes-devtools/python/python-pycrypto_2.6.1.bb b/recipes-devtools/python/python-pycrypto_2.6.1.bb
index 8036158..51f9272 100644
--- a/recipes-devtools/python/python-pycrypto_2.6.1.bb
+++ b/recipes-devtools/python/python-pycrypto_2.6.1.bb
@@ -1,29 +1,18 @@
 DESCRIPTION = "Cryptographic modules for Python."
 HOMEPAGE = "http://www.pycrypto.org/"
-SECTION = "devel/python"
 LICENSE = "PSFv2"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=35f354d199e8cb7667b059a23578e63d"
 
-SRCNAME = "pycrypto"
+DEPENDS += " gmp"
 
-SRC_URI = "https://pypi.python.org/packages/source/p/${SRCNAME}/${SRCNAME}-${PV}.tar.gz \
-           file://cross-compiling.patch"
+SRC_URI = "file://cross-compiling.patch"
 
 SRC_URI[md5sum] = "55a61a054aa66812daf5161a0d5d7eda"
 SRC_URI[sha256sum] = "f2ce1e989b272cfcb677616763e0a2e7ec659effa67a88aa92b3a65528f60a3c"
 
-S = "${WORKDIR}/${SRCNAME}-${PV}"
-
-inherit setuptools
-
-export STAGING_INCDIR
-export STAGING_LIBDIR
-export BUILD_SYS
-export HOST_SYS
+PYPI_PACKAGE = "pycrypto"
 
-inherit autotools autotools-brokensep distutils
-
-DEPENDS += " gmp"
+inherit pypi autotools-brokensep distutils
 
 do_compile[noexec] = "1"
 
@@ -31,5 +20,6 @@ do_compile[noexec] = "1"
 # *don't* want the autotools install to run, since this package doesn't
 # provide a "make install" target.
 do_install() {
-	distutils_do_install
+       distutils_do_install
 }
+
-- 
2.7.4


