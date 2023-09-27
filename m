Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 270FDE7F150
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 02:42:44 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web11.9447.1695782556234082841
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 19:42:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Jx/z/1wg;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7740cedd4baso673751885a.2
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 19:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695782554; x=1696387354; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/pQ/IeAcz5RIS9Ag588YJ7ptlPj+dliDKifV2qh9y28=;
        b=Jx/z/1wgGUHFZ4LF0T/uCAzRBDCiGA+SmJBpLDPzbF09778uRiEl/UGjA9zTuv+SAD
         QHJU+OOmNoEH0oPhSv2n2TQPpP/pKLtfjR8tkNqi1urObcGIMmoswiKWbCnzI914Qgpj
         p8pbfR9PUGsDJTjUz2j6wBz9560qc8T+/LZ0P35SmwIbFXKLT8B2ITVUsHfnE0x7rGjq
         GIN2lqKk/ksjaCPdZDVV8v0Ee5vPor0lQ7uogFqhhI2pVJOHwJYqLraUs0M65WDCEPdQ
         fJFGP4YFXHHGoq4INTeRprqgGE0BwP7KTjrR7I6WJOUHwlSst8/ZTHj2vZwt0JcQgU23
         UP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695782554; x=1696387354;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/pQ/IeAcz5RIS9Ag588YJ7ptlPj+dliDKifV2qh9y28=;
        b=xTbRkEOwjjV8nx/Cxobs9F+MW4b7khUXBd5kHGz82FutZarkRzY7PGkpO9bHNvAPKo
         HKHgDa0KvM6QPizonQKHduzUz4JCxeoFQHDL1blqvuPfpbdzAg62peaoIm8zR/GvHbbl
         J27wmnRASyw8b45gt/OpqOvlSP20ETqVcEoL91NAc5b97aaw/di0RLddey8XKMq2Q7g5
         4EtgUj9vbQ/Wx+7L6UvHlzKB74cuT0bg1B2arvglJftamPnuBGZ/wrlC0c7sx06xFUsq
         Yn/ljtn1AFpyt4xmh8dIZAdWb5ijVg07/DBwMkLxIBiUMgXnVht+h5edtacBKh6FH7aq
         qE0A==
X-Gm-Message-State: AOJu0Yz4Pgis1jqfF0696vM3MZEgafkqL+VHQJ5f5hwcJkS+GFNcE5Kv
	bptQMILmVdQDhvTIkVj6twC9xGYqCNrh3w==
X-Google-Smtp-Source: AGHT+IGmdnXxXYJxfPaWTvdXkdxxzxACx77/7VFy9cpl7QABHVBsb7OghcZM8UmxLsymPBEvGYmciA==
X-Received: by 2002:ae9:e40d:0:b0:773:a83f:4170 with SMTP id q13-20020ae9e40d000000b00773a83f4170mr651944qkc.63.1695782554525;
        Tue, 26 Sep 2023 19:42:34 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p4-20020a05620a056400b0077412ca0ae1sm4715763qkp.65.2023.09.26.19.42.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 19:42:33 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v4 1/2] u-boot: rename firmware dependency
Date: Tue, 26 Sep 2023 22:42:19 -0400
Message-ID: <20230927024220.17766-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20230927024220.17766-1-twoerner@gmail.com>
References: <20230927024220.17766-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 02:42:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61134

In anticipation of Rockchip SoC families to which the TF-A project has not
been ported, the initial boot firmware needs to come from other sources (e.g.
Rockchip's rkbin binaries). Update the variable used to describe this
dependency to be more generic and not TF-A specific.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index db8e0166f5b3..050f55e124d4 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -9,14 +9,13 @@ DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
 
-ATF_DEPENDS ??= ""
+INIT_FIRMWARE_DEPENDS ??= ""
 
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-ATF_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-ATF_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
-ATF_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
-
-do_compile[depends] .= "${ATF_DEPENDS}"
+INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 
+do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
-- 
2.41.0.327.gaa9166bcc0ba


