Return-Path: <open.source@oleksandr-kravchuk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2E6EE008D0; Sat,  6 Oct 2018 07:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8698E006F1
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2018 07:50:33 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id j4-v6so10345434ljc.12
	for <yocto@yoctoproject.org>; Sat, 06 Oct 2018 07:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oleksandr-kravchuk-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=0VMwCZORNpm7ONrt5ypu7B19oFMUiCRreflNN6fOjVY=;
	b=rQh/W7pnYJxE5EkVhIcXvlq+MmLvjjRuwplSicZHWWerB6IwTbaTj9GCeS33m1CPKq
	W0kG9HCs991DOpeWJwYxPM/DyOwcNJjCyFalXi0ocjkD4z97Ne6Cy4fzuFiaJ/hHkMl1
	netsUYQzl5ryl/IIhhV3BHGrIqCrRnCgWlmDMXAoBIBKi8z55z/2wZH5aAAZqVG6PGrb
	f/BCVIntKTkvtW0in1DmaReSeaTGzTX/TNQou3B1zAF8RurKprzd9CYnvGr4SHu8h7E4
	tHETk/6sackmvPQIXKxp3IzZNF2kFmh6YbAeX64+WgY+E3DUjzydH7r5RGk3GEVz2FWs
	NzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0VMwCZORNpm7ONrt5ypu7B19oFMUiCRreflNN6fOjVY=;
	b=DwODbb+SkU/udWHZicaMMcGkp10wnwRjfmwjbjxKQCYPMajcmZOnjhYpe1Dmmkncet
	BRqdvjv9dLT64ikIkTqvY7Kc96vzdTsOPyZnW9D4QkFcOhOv9tcWSnpAi8vR7Q2jn8zM
	H+m2mXokhgAtDGbbLr/DYCYaUzWqex100hEEe+/GrD9kzOTIHQo5tbmkpqNakUlgTbuf
	fmzUbF6YOJ8PPrcrVN0bNHsM7B7iPVbZp5fwLGSbIYyzgwlpytBwqZKyz4ZYyhT+DtB1
	BlV2dMwIe7/iTdlLzjJZwLSLharpxbpEQ2f94Sf1QB1RpEmSEAH6gupdu75iAfTjzP0R
	9dGw==
X-Gm-Message-State: ABuFfoiPDNyiL1kqx4m+pmYdTa0hLIzBFnRph+Gk3OiX9/emjr8tgL/B
	VWnO7bhheyH5LLo5MBZmM/DDRGA8U9o=
X-Google-Smtp-Source: ACcGV62Dh65YdYK/3xtdLgT4m/p8c8irZMSbisvhN5N67EXdRK46yCvEO7+quLcsvZPrK3nLfrCk6w==
X-Received: by 2002:a2e:8090:: with SMTP id
	i16-v6mr9932520ljg.168.1538837432171; 
	Sat, 06 Oct 2018 07:50:32 -0700 (PDT)
Received: from lund.luxoft.com ([2a04:ae08:1403:ff00:d803:539d:9ecb:9546])
	by smtp.gmail.com with ESMTPSA id
	r10-v6sm2542253lfi.15.2018.10.06.07.50.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Oct 2018 07:50:31 -0700 (PDT)
From: Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
X-Google-Original-From: Oleksandr Kravchuk <dev@sashko.rv.ua>
To: yocto@yoctoproject.org
Date: Sat,  6 Oct 2018 16:50:12 +0200
Message-Id: <20181006145012.28639-1-dev@sashko.rv.ua>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 08 Oct 2018 00:59:55 -0700
Cc: Oleksandr Kravchuk <dev@sashko.rv.ua>
Subject: [meta-gplv2] gnutls: use https mirror for SRC_URI instead of ftp
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
X-List-Received-Date: Sat, 06 Oct 2018 14:50:36 -0000

Signed-off-by: Oleksandr Kravchuk <dev@sashko.rv.ua>
---
 recipes-support/gnutls/gnutls.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
index 4cf375f..428248f 100644
--- a/recipes-support/gnutls/gnutls.inc
+++ b/recipes-support/gnutls/gnutls.inc
@@ -16,7 +16,7 @@ DEPENDS_append_libc-musl = " argp-standalone"
 
 SHRT_VER = "${@d.getVar('PV').split('.')[0]}.${@d.getVar('PV').split('.')[1]}"
 
-SRC_URI = "ftp://ftp.gnutls.org/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
+SRC_URI = "https://www.gnupg.org/ftp/gcrypt/gnutls/v${SHRT_VER}/gnutls-${PV}.tar.xz"
 
 inherit autotools texinfo binconfig pkgconfig gettext lib_package gtk-doc
 
-- 
2.17.1


