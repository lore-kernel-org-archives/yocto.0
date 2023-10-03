Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54456E776DA
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:47:51 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web10.98906.1696294067894377517
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:47:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cIWAL2Os;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-417f872fb94so3207881cf.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696294066; x=1696898866; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3PLkrHMhxHTn4KMKyFy7hJpEUBpgNmm3bHeNrO/b4A=;
        b=cIWAL2OsLAvQPQBArDsHHKiP2W2lTCIHNwKX24rMjl/cxRK7WLm4DBDeZI8b/wtjtG
         duoj46WY8G04g8Foe0yS6MyuCid1HYlMaZHqgCv7c1BnZeRdh+XsBz5WXI4cqbevsJqP
         +IeUaY+TnmwzLI8eeqOC7qzptOnoW9SRxAqrOtlTRcki8N3mQQfBE/IV6s5CK+jygvqJ
         xFw6N+Gb6lBfK4PUVWzwE10PFkQzU223mgnA0ZBtlnTuGUk2Jmsx+mtDziipGQUrChvJ
         vNmt7i7AgcA+rlxoF7lJWwXMbLngncSLAOxtCTMZOedZcqF7Mpd586VOC+IZ7kdNw04K
         umxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696294066; x=1696898866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y3PLkrHMhxHTn4KMKyFy7hJpEUBpgNmm3bHeNrO/b4A=;
        b=dkcTYzNRN2g8AeW5+yAFpwOTvIyH+t8mPOgo8hadCf83wZyGgPfRL+1p3FRLfHovEo
         D13kK3LdOjX/ATR8TmhttCFFgV+1kxwYbuBn/vw01/g14GaLiI1ZqvhP/qcXRpjtxPwk
         VVYYryhNMVWQegqgj7V2H6KkoJFwJdX6IXLHlxQtA+tLl+1YXYkPYzmk8aC8EK+8CYfw
         Yz5cWa7mWHVbxpMzgQ9Hvfde8s6UJNQ6SyR0EyfZIforLTenXR9R0IKvEsn/qry+yMIH
         MkBpRToGvOwagqf0931zXvdJtMzjDoD6QXrD//ZkfAonNGbwW9Mn9gzt1OegD2v0zVIg
         Z15g==
X-Gm-Message-State: AOJu0YwGBBkcJmvb2fyFx16++1LFR6Sjc2VYPdSaWmZjcBIwnZ4nTJ1C
	3cGJsOsNfD748L5nXg+a3us7Tu1Gfz+9Aw==
X-Google-Smtp-Source: AGHT+IGvzgs6nf3fDYnMV/7KCix71mYFDsBbsBbRMl8FlzrHXYuw/3E8ornu8qJzYsOuBhHpU2ImPg==
X-Received: by 2002:ac8:7f0f:0:b0:417:a469:1680 with SMTP id f15-20020ac87f0f000000b00417a4691680mr14737240qtk.38.1696294066351;
        Mon, 02 Oct 2023 17:47:46 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o1-20020ac86d01000000b004199c98f87dsm48877qtt.74.2023.10.02.17.47.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:47:44 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 1/4] u-boot cleanup: move task
Date: Mon,  2 Oct 2023 20:47:38 -0400
Message-ID: <20231003004741.6021-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231003004741.6021-1-twoerner@gmail.com>
References: <20231003004741.6021-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:47:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61204

According to the Yocto Recipe Style Guide[1] the tasks should be at the end.

[1] https://docs.yoctoproject.org/dev/contributor-guide/recipe-style-guide.html

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index f7800625aaf1..c8444aacad89 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,10 +1,3 @@
-do_compile:append:rock2-square () {
-	# copy to default search path
-	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
-		cp ${B}/spl/${SPL_BINARY} ${B}
-	fi
-}
-
 DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
@@ -25,3 +18,10 @@ EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
 INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 
 do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
+
+do_compile:append:rock2-square () {
+	# copy to default search path
+	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
+		cp ${B}/spl/${SPL_BINARY} ${B}
+	fi
+}
-- 
2.41.0.327.gaa9166bcc0ba


