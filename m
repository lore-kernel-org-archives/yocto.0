Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF731E00BAA; Thu, 23 May 2019 13:56:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F723E00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 13:56:23 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id t7so7414536wrr.10
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 13:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=L5d78Mg4FVjVj3CEsEDfPVyjr3xfdmKLHRJAEHytJTc=;
	b=J+Yq1UXx6xzA/ioTiIMByFQlemXWyVryE3fsWttn/iDNm9/mEeP23+QX3KdRqtU3IV
	lYhXSoQanof68NsRoGHSYxLEdg1btOsMKeTpKak8oJbxunygmV3+Z8pTEY2tT2V5FPrZ
	I1mKuMAE3luaP6npH0Y/zQ/oYFyoemi78hn/FAtx5AIcY7TGxafYEuAZJipOSbeQol4q
	GXloF3ZnHcoidb2keDlZ8q7UY5qhkHSfSY782+TwqCpLTqHeP9tiNE/kx+a0GQP9DFVP
	PrB4uzc038t9bEVzwaa/CiWs8yxNED2XGiFWf0E9BgpxMP8jVttsibEa/WlHb7WGrK34
	V2Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=L5d78Mg4FVjVj3CEsEDfPVyjr3xfdmKLHRJAEHytJTc=;
	b=Zyk+XEcJ4THYXNWzFOxn/OlmMmNHwuMCtewflYNrQV+yAzksOlAyuZIysgu9HJsF1G
	g2WBeBU0RyNH0P/243gmaCgU5QIxPLU7KYqixS4ggxE8Pgxg6c9AnAAA2FrJxUnrp8Ny
	EEuDOPZCw96sqXzwjEZOD2vh5Vo+iDYfOa29NPPWynLm+SdBDs5FCbl+pnOpHrnzTqiW
	tgsDU/lf/wNJ4ULKH9yuIMMsZWsQ3tCVxMur6TgNUdvS2TFwawbbyo3FiU0IhYoWXULv
	JkvM5BSL6hDUeKmUyILJMvxnKAiRbN0jvfYL5ucwdYyAVUtGFui+R9Zf88S7gzOvNFsM
	e37g==
X-Gm-Message-State: APjAAAUTdcpCEyScTMrYDTZHXSFN29Kjt5Xp85s0602+pkS59gECOv/T
	ufSDbxMFxknEg4IovejEVxePnJ/L
X-Google-Smtp-Source: APXvYqwAzyRLWgrkMylnQlkPr5mJcpsjQhWUFsNjfRjiwt/a/4bZr0D6JCUPtaILnNqHF8PUTSlmsw==
X-Received: by 2002:a5d:4b81:: with SMTP id b1mr35381040wrt.217.1558644982815; 
	Thu, 23 May 2019 13:56:22 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id f11sm236989wrv.93.2019.05.23.13.56.21
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 23 May 2019 13:56:21 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2019 20:56:28 +0000
Message-Id: <20190523205628.31439-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [opkg-utils][PATCH] opkg-list-fields: fix to print the fields again
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
X-List-Received-Date: Thu, 23 May 2019 20:56:24 -0000

* printing opkg.Package directly doesn't return anything useful now
  <opkg.Package object at 0x7fd49e9f2780>

* we need to call Package.print() function and specify which checksums
  to print, we can include both md5 and sha256 for opkg-list-fields

* it was changed in this commit:
  commit 601d691dd80ef494aef069017edc5bf80aa883a1
  Author: Alejandro del Castillo <alejandro.delcastillo@ni.com>
  Date:   Wed Dec 19 11:40:15 2018 -0600

    opkg-make-index: add sha256sum support

  which replaced the modified __str__ function with print(self, checksum)

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-list-fields | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/opkg-list-fields b/opkg-list-fields
index c14a90f..8a5a588 100755
--- a/opkg-list-fields
+++ b/opkg-list-fields
@@ -11,5 +11,4 @@ def usage():
 if (len(sys.argv) < 2):
      usage()
 
-print(opkg.Package(sys.argv[1]))
-
+print(opkg.Package(sys.argv[1]).print(('md5','sha256')))
-- 
2.17.1


