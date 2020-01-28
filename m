Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4041.1580180879872109156
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 19:07:59 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=bPWzApdM;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpewhacker@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5D08E01643; Mon, 27 Jan 2020 19:07:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4468E013EF
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 19:07:55 -0800 (PST)
Received: by mail-il1-f195.google.com with SMTP id g12so9417858ild.2
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 19:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WoxIM7BBvLGQbbwiGbkNrqdc9yssLq1lW33XgvVL3Jg=;
        b=bPWzApdMw9ee7LteAAJeRk8MmJaNztTPe7PSrJ52a7HkFPX+T0QbwXoyic5R9czeQT
         A7kexbMNDS4WKj28lxWt8IzYzOaDpQLufn7xQZ3kWJhDtzchJQSUHMMYPdoOOYFod3sc
         0Bfznsuu+JGEUzivaw2fcyoO58LyEQ5ywiKniqRwEXq98DUWo1ahR7EHovsrWMzi7SCZ
         EETbmyd4GEFUQ4ISKxHuQg/yp04UWZ+344abxafLRPf5zPh0KxUP1cf+CArLPp/MU8OL
         +4OkJ5nNvnHFp6Jya8W0I2UGLAUDJTr3UM4G51b5BgHXT6uYDHC9hXuZkjL979Vqkgzp
         dYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WoxIM7BBvLGQbbwiGbkNrqdc9yssLq1lW33XgvVL3Jg=;
        b=Wb6d0kLCkOSpQ0mkThf06JOEyqPYCN+HlVC0h1m0XjJpOu4clLqK2fL7Cc7HChoJ7Q
         jCz+eOcC2XwNNJc1UGcGj+ClbdC2U8SdnfEe4guU1w9reMwmrTafXS1fpesDFN4ck+wi
         EY7sONamD5n5bNE0yECsm6uGLiBuQAFiIDogfYk5rcdKjPTTovltAgrTsK/EGdeHASyT
         mLE7stlyisWjgxSpTp8DvV3mf8Vf6ICaKHU/4BaC4PcV1UJNels3m89IAo09ru2UlIGE
         MrlX0iKnWe/GWGTFiOsdXqvgNMVbEGaLjc6ED4+GEnb1qt6ILNOtty/U8aMgKMI4ZDn6
         Oj9w==
X-Gm-Message-State: APjAAAWFaknR3UkNHWwVFh370bhNUHj1lOm1/9xqOz50b3zMMfXAdE9s
	0XfAXZi3QKHOTg/o/V1hHjzrTycrN8c=
X-Google-Smtp-Source: APXvYqynj3X5V/lzT4MMt9J3coOE7FKnoznetwu1T0hyz92rcuNGD92W9elTtTrr2Gz5VO+rel+u9g==
X-Received: by 2002:a92:c04e:: with SMTP id o14mr3895902ilf.133.1580180875070;
        Mon, 27 Jan 2020 19:07:55 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id y11sm45453ilm.22.2020.01.27.19.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 19:07:54 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-rockchip][PATCH] tinker-rk3288: Rename to tinker-board
Date: Mon, 27 Jan 2020 21:07:50 -0600
Message-Id: <20200128030750.940013-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Renames the tinker-rk3288 to match the convention of naming the machines
with the manufacturers official board name.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 README                                                 | 2 +-
 conf/machine/{tinker-rk3288.conf =3D> tinker-board.conf} | 2 +-
 wic/{tinker-rk3288.wks =3D> tinker-board.wks}            | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename conf/machine/{tinker-rk3288.conf =3D> tinker-board.conf} (95%)
 rename wic/{tinker-rk3288.wks =3D> tinker-board.wks} (100%)

diff --git a/README b/README
index 5486b29..983d946 100644
--- a/README
+++ b/README
@@ -15,7 +15,7 @@ Status of supported boards:
 --------------------------
 	builds and boots gpt image:
 		rock-pi-4
-		tinker-rk3288
+		tinker-board
 		vyasa-rk3288
 		firefly-rk3288
 	builds:
diff --git a/conf/machine/tinker-rk3288.conf b/conf/machine/tinker-board.=
conf
similarity index 95%
rename from conf/machine/tinker-rk3288.conf
rename to conf/machine/tinker-board.conf
index aeee472..c8cac7b 100644
--- a/conf/machine/tinker-rk3288.conf
+++ b/conf/machine/tinker-board.conf
@@ -10,7 +10,7 @@ require conf/machine/include/rk3288.inc
 KERNEL_DEVICETREE =3D "rk3288-tinker.dtb"
 UBOOT_MACHINE =3D "tinker-rk3288_defconfig"
=20
-WKS_FILE =3D "tinker-rk3288.wks"
+WKS_FILE =3D "tinker-board.wks"
 IMAGE_FSTYPES +=3D "wic wic.bmap"
=20
 WKS_FILE_DEPENDS ?=3D " \
diff --git a/wic/tinker-rk3288.wks b/wic/tinker-board.wks
similarity index 100%
rename from wic/tinker-rk3288.wks
rename to wic/tinker-board.wks
--=20
2.24.1

