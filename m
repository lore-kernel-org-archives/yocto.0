Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F179BE00D2B; Sat, 30 Mar 2019 11:48:56 -0700 (PDT)
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
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85D23E00CED
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 11:48:56 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id j26so2742699pgl.5
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 11:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=TbxtLjSAlS+WlXkJyfD7NUaFKjhzmFdQJjiws+jP89A=;
	b=MbE7tabXZeHttLXNl2sl4OZ4RvkfQKtyz1emM2eKQYsMYmS2d2y8MYglM2S39d5WBe
	Rw5IPyY2W7RyNLC5aE1qUD+oCg7kWTaMGyYxoQcoz4IOS5LRTin75fhPbz2kR22RSZOA
	QdCDuxngLn1ek0OQ/fFeBXqs83QHYfUF5KyGqA8F4QQTxPLMgkUlzT614AtDT6TDfTBz
	5w4Zyhpfv3kcYNyVl/Wz7ix5thDdfyebhMt/YTEtmFvb7xO3YSWrsZ76iUVRQPCYW3VT
	sGKyjQBKLTDHEsXSBzSMA0L6olJikBRB9BWBDAKuE5ZDyOVHTEHP9X9YtvoeLnIdoeuY
	uTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=TbxtLjSAlS+WlXkJyfD7NUaFKjhzmFdQJjiws+jP89A=;
	b=MR0Nq1N2TtD2JpqB9SPZemtyqHfq7FUtTvKOmksBfKIT/YuZqzqCu9jjs4abEPIrHT
	JUOke1M4LbpOzEZWabVERoswmPMS/Adp4Iu1X7mv3ASzlFLak0B2OVa4ZrUb3YkWpIZj
	w/0gJeejAFjFPJhd+/t/c7qsR5Dfu36PcxnkGJc+hz0twxPPc4QKjgxerBbOFcpXFNMl
	/+ZggMhxStHL5l1ppU7gcvCmVLBfZrGrpwNMB51Rdpg/OGhV4DFD5RlXHn3Yi7E+cqx1
	Ax3efllmkNUP9tulSH6hlcUgf4brBjdeTGwdyvXMqQoTcvN4itfFwGLgz8tWQwtcVLfG
	lndQ==
X-Gm-Message-State: APjAAAUVwrKGuXPxOYTFg4WAOslPZNEG8DCXVuy5wpALIGpzoabJmgwK
	RIdKqN3Al99Bc8whwL7XuMvETa3u
X-Google-Smtp-Source: APXvYqxCsU/OYLeHyB3aGPE8K21DopFRFc3fW3A780X+6gncIY6tPGX+xRHO9iiVHolXKaC3bjOFJg==
X-Received: by 2002:a62:1197:: with SMTP id 23mr53735260pfr.210.1553971735361; 
	Sat, 30 Mar 2019 11:48:55 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	d69sm10053826pfg.26.2019.03.30.11.48.54 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Mar 2019 11:48:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Mar 2019 11:48:53 -0700
Message-Id: <20190330184853.23270-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] clamav: drop llvm version setting
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
X-List-Received-Date: Sat, 30 Mar 2019 18:48:57 -0000

There is only one llvm and its in core so
drop allowing it to be overwritten.
We can hardcode it now.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/clamav/clamav_0.99.4.bb | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 1d09ba6..6219d9e 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -31,17 +31,13 @@ GID = "clamav"
 
 # Clamav has a built llvm version 2 but does not build with gcc 6.x,
 # disable the internal one. This is a known issue
-# If you want LLVM support, use meta-oe llvm3.3 to build for GCC 6.X,
-# as defined below
+# If you want LLVM support, use the one in core
 
-CLAMAV_LLVM ?= "oellvm"
-CLAMAV_LLVM_RELEASE ?= "8.0"
-
-PACKAGECONFIG ?= "ncurses openssl bz2 zlib ${CLAMAV_LLVM}"
+PACKAGECONFIG ?= "ncurses openssl bz2 zlib llvm"
 PACKAGECONFIG += " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", "ipv6", "", d)}"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
 
-PACKAGECONFIG[oellvm] = "--with-system-llvm --with-llvm-linking=dynamic --disable-llvm, ,llvm${CLAMAV_LLVM_RELEASE}"
+PACKAGECONFIG[llvm] = "--with-system-llvm --with-llvm-linking=dynamic --disable-llvm, ,llvm8.0"
 
 PACKAGECONFIG[pcre] = "--with-pcre=${STAGING_LIBDIR},  --without-pcre, libpcre"
 PACKAGECONFIG[xml] = "--with-xml=${STAGING_LIBDIR}/.., --with-xml=no, libxml2,"
-- 
2.17.1


