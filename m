Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2F61E00CB6; Sun,  1 Oct 2017 09:43:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75EDDE00B87
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:41 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id i195so1899338pgd.9
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=ozhN7xrSfz4od6y46BfCX84lfTbox0/boxBM3Q/LKyA=;
	b=tkXlC9NHdYpnJBkwdvYRP5u+RLkY3JO5grsNFi7Jy3wzdwzKoxGx64EQrAOoEoRCz5
	sSwqOLxJhd2vHbcaB+deBW3xxQptOhRKsCLZ57qmcJT/Jj9Dt+n/KfaFPAS59z7UJSWG
	G5Tz+Q02iq3K8OcORDgEps8a5K6a+BlQbqXyUgmihbbA76IqdAexBRSntLl4vZPY+CKb
	0XvLScv35wjcdvO8GCMZffTv2CAGhbPlDlcUTmRUJ9rCXQsg1cZ9pNt15mcwJqcgzGHy
	Ol9V3MbA3XlThu9nX4NCzE8lS7dvmAmPyeaZhlc7hHmMejsvG4uvONh6JgpaM5vWJRH4
	r4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ozhN7xrSfz4od6y46BfCX84lfTbox0/boxBM3Q/LKyA=;
	b=Tc7LNf5GaSPkU6mDkr4ZCOkwnDHdWQ8F8ceEGLlGZD8ANDwwLiuo4g9Wlt3Df2M9z/
	dlv5sbR6bm+Epg/y+uL3nj9P59fwXfZBxGC478GsWWejyEFt8BYo7LnEkQVNA0W1EiR/
	JKny3zCNXjPjyMAa/yHNRyyf/9WVLmHeSlizoNi3JCGVtE4ORXluJOG38CNZqjzFt9mT
	BMEriih0PoZEUshPVnzPa5VTz7aoU3ZkWwT5B1ixYpY4c/AI7YeYd5XoAqiZqvJrwCRf
	171r17RYeADC6S6A/WFv8zQxN0J+Vk/VTdiXaHon/bKYg5AIr+yGjwIktagmz/IuKI/p
	xzAw==
X-Gm-Message-State: AHPjjUiEbcemYqFtk9HqJghhYNzNeh8UA8oo8zKvi4/u0mTBWAUax/Rp
	DLVQmty3EiYTUw4uE8VvjkNaig==
X-Google-Smtp-Source: AOwi7QA8hubR4NfRDELer/Azy26eM6uj9ykPRlkLdPuDkp40Ld8kaECAg/YMZ+QfFgC8w39/6fGSeA==
X-Received: by 10.84.136.34 with SMTP id 31mr9769350plk.174.1506876221705;
	Sun, 01 Oct 2017 09:43:41 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:31 -0700
Message-Id: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 01/10] libewf: fix build issue
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:44 -0000

ERROR: gettext-native required but not in DEPENDS for file /build/build_artifacts/master/tmp-glibc/work/i586-oe-linux/libewf/20140608-r0/libewf-20140608/configure.ac.
Missing inherit gettext?

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-forensic/libewf/libewf_20140608.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-forensic/libewf/libewf_20140608.bb b/recipes-forensic/libewf/libewf_20140608.bb
index 9d2b7df..f7dce12 100644
--- a/recipes-forensic/libewf/libewf_20140608.bb
+++ b/recipes-forensic/libewf/libewf_20140608.bb
@@ -10,7 +10,7 @@ SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/libe/${BPN}/${BPN}_${P
 SRC_URI[orig.md5sum] = "fdf615f23937fad8e02b60b9e3e5fb35"
 SRC_URI[orig.sha256sum] = "d14030ce6122727935fbd676d0876808da1e112721f3cb108564a4d9bf73da71"
 
-inherit autotools-brokensep pkgconfig
+inherit autotools-brokensep pkgconfig gettext
 
 PACKAGECONFIG ??= "zlib ssl bz2"
 PACKAGECONFIG[zlib] = "--with-zlib, --without-zlib, zlib, zlib"
-- 
2.7.4


