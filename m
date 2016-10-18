Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53859E00BFF; Mon, 17 Oct 2016 17:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CE2FE00ABE
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:34 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id 128so13669508pfz.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=SilW6z1N64VnfC/S5Mkmsq39G6Qkq9FYQ2SiySAJw0w=;
	b=ZC0lKrS49b/XgbJ8RsM+LJ2y1JFaBz5kBzXzDv6RGWMWVpvkbsgRoBwjJse7wqoZSy
	8SUTZj9+TPRi9Zl06lYdelZqs8AFYEBI4W9yyoGxafeHN3bw0WecTMlts58jeX2qkhaQ
	/iQFh0H+ZgWTcZJHKZyvadRathzNHDaxPUZP/FvwkL8P7GwkCvktthwqv9X5I8xn1mBu
	/AvEROopktsNCFZUFBJNqOtugB3przug+LIXzqcrDc3ykkNgcdKNnHKROezecE/qz6Id
	mbZ7hbXQdD6NxRIePNo7yJ0wWUSRrPmrrUkb5YXUPkumHLyl2CtTghe7MMry2n7Gx5hS
	MV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=SilW6z1N64VnfC/S5Mkmsq39G6Qkq9FYQ2SiySAJw0w=;
	b=PoOJzChOpAQXZGoF+NKIziJg4+ZdkNeR+3eJ0jL1kX1jNaVqedcJOIlPFKGt6ikP/C
	lr/PS/IL6XauBoEfR2LwKOWQqhhJAIzFAT2z78Qmn97NNjhwDRvO/bAGs6OZWoF31npJ
	FHKfr9p5ysZmikqU3RTczQ0pJ39l+rk7rOUoOKLovBQY/3PF4iYAh4xruJlRXgxtIlEi
	63jd8HWnNk2WsJhY0HnOmkKMzfygk/RLDHzxWTvAxqBU+gcfyBPAt2JRBDO5tu2QyFKF
	CJu31yVj7lyefCFf76brmTCymGv5B68qSFlGjEMJeEwUoVa0Zn4cGtxB5CjS8kTkZDHZ
	9/4w==
X-Gm-Message-State: AA6/9Rkp5AImvoqTnfSST0MzjrHRpyH1Io/b/bDOSiKz7tK8xjZrCEWbGw90P+6qWe7FBw==
X-Received: by 10.99.184.25 with SMTP id p25mr145340pge.120.1476748953984;
	Mon, 17 Oct 2016 17:02:33 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:16 -0700
Message-Id: <1476748950-21342-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 03/17] libtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:38 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/libtpm/libtpm_1.0.bb | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 recipes-tpm/libtpm/libtpm_1.0.bb

diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/recipes-tpm/libtpm/libtpm_1.0.bb
new file mode 100644
index 0000000..61c1d7c
--- /dev/null
+++ b/recipes-tpm/libtpm/libtpm_1.0.bb
@@ -0,0 +1,13 @@
+SUMMARY = "LIBPM - Software TPM Library"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=97e5eea8d700d76b3ddfd35c4c96485f"
+SRCREV = "e5dc628043e981c9f8d7711ddfe5812c8f4e38cc"
+SRC_URI = "git://github.com/stefanberger/libtpms.git"
+
+S = "${WORKDIR}/git"
+inherit autotools-brokensep pkgconfig
+
+PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


