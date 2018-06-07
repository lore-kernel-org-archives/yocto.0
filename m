Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 437A1E00C6E; Thu,  7 Jun 2018 07:16:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81853E00998
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 07:16:26 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id a7-v6so3739043plp.3
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 07:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=mPZ8f4+xwzUpMYDde24l7SJ08ZaiYKwWtPP1RwKKu1E=;
	b=Y7IbzyXFwNZk6ZOPtEQVBJULFClWe5RnwtYA9OLVXwCcLsQh0hEFn7vWyJSFd9M8/p
	iN59Lh963LCbxWhHoNCGzfC1VrqziNpn5BD5W1AqUX1u2AgbsAuLEu1EvsepMTVxQ9c5
	IPmLFr4+UvLMW1bhCgeKmngllAT280CBUjWMfUZbv+pHT7Cn8EKINFWmtYD2y/AU1zd/
	glHpgOCVHZQ/gH7D7/1iM7NeQjlXJqnsnZvB3PJpoS66jHUfn0j3P8iMw9scVFhBZ3qr
	yVpDrle7T7RhpzwGC3IS8C87F6U8xAHsHDz0QQVVtDKP4073JGDMu4giD6tCOptepP3X
	95ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mPZ8f4+xwzUpMYDde24l7SJ08ZaiYKwWtPP1RwKKu1E=;
	b=aF4ANGnEnIEwg3FT6bjJDzn0GUBKfw+vlDdKrJJVG8F0BUnB3uIk3oCnDK+FHNv09L
	1+oexkp0xw3OUqPKIk/XMd9T6R3kFotwg092Oy9izcagUaZFs4fnr9EtmFanFp3VFzbU
	LmyHjER3Djf7j25UCFTQXer2QQkD+bwrWJl9Uc7Gy1kFdXKqHINrQLthb3ytYqW2uUFO
	PBONyHNF4jLY8PE8774UsjYnWs8tAvrmeL0ORdUPMK4zM+B56jWzUYgLmW0sEAVMFKYd
	ZX11f73zMrLY22DiGe2ij3L8RejUZ78DN+CQKQVgGD1B9e9gq9jWcZbxD+/y3sEIXxTT
	s/ZA==
X-Gm-Message-State: APt69E1jW1GjrUTDrvXDsjQQkcfnb1AO+D3jFmjr2riGOUMaI2arrG37
	YMDxlCMG0l3WHpAjQqVtuh4=
X-Google-Smtp-Source: ADUXVKImUP+Qrnf9MD59C59p0Mtjc6Y9TeXGx2aOTXLuLkZi3mXbBhu7KPkOu5H8fMD3Av/Mg3c4+w==
X-Received: by 2002:a17:902:a9:: with SMTP id
	a38-v6mr2278260pla.102.1528380985601; 
	Thu, 07 Jun 2018 07:16:25 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::c68])
	by smtp.gmail.com with ESMTPSA id
	a11-v6sm89001514pgn.64.2018.06.07.07.16.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Jun 2018 07:16:25 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: juro.bystricky@intel.com,
	yocto@yoctoproject.org
Date: Thu,  7 Jun 2018 07:16:26 -0700
Message-Id: <20180607141627.30959-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-mingw][PATCH V2 1/2] mingw-w64-runtime: Fix hardened build with gcc8
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
X-List-Received-Date: Thu, 07 Jun 2018 14:16:27 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
index d249c79..a33a739 100644
--- a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
@@ -42,3 +42,5 @@ do_configure() {
 FILES_${PN} += "${exec_prefix}/libsrc"
 
 BBCLASSEXTEND = "nativesdk"
+
+SECURITY_CFLAGS_remove_mingw32 = "-fstack-protector-strong"
-- 
2.17.1


