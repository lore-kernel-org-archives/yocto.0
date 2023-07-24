Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1C88EB64DD
	for <webhook@archiver.kernel.org>; Mon, 24 Jul 2023 18:31:18 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.2130.1690223471219214321
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jul 2023 11:31:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=crEQtT1S;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-992f15c36fcso810264466b.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Jul 2023 11:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690223469; x=1690828269;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2yBaCy1KtcO4TgmhrIu3iLUlRu5FBG2B6zDVuCzN11A=;
        b=crEQtT1Smkg0iX426+8O2r0VHN/R4AgjlNxMKwpJRl84UzwXPkyAqm/DWv7HamFpQX
         gP8155vnQLtzsz+VqLg7fQqKrx0wCX64AcCQwl3YPShSArGJ3j2PpyofwL01bKPKt6i7
         uxhx1+dV1K/jxRBL3sAoV9p7h8fnxCLS6ZYPt9OImp8jkZ9DamWKMXEHGQJfabY7dAZh
         IHhR0bIeJ6uXu5A90nuekzPaODNnyJ7R13c4xExXAL0qd4uGRuE1johzKbyYDMIgq0vp
         5VrRt6vJcebm1wg0Utm+KT4YsyCFDt5KiKTOxz7fI0viE7Pqu2vsbblb2lCA/Z4STLre
         sgYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690223469; x=1690828269;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2yBaCy1KtcO4TgmhrIu3iLUlRu5FBG2B6zDVuCzN11A=;
        b=Aj4khqV31ma2SO754EmLLhxPlYVpLlHnttr/e1Zop2phCl4H60r2gwgSvLcv4fIY+M
         LNZXk8lWNen/FlQPkQue/b/cjxKFbsPbXFtdXxuBrP7CBQzixjf9unlUvhjaEVxbIO4U
         aMKM0zxEFmwaoRTjDmRCPqQOHfsetmTIM+A+VCfEUy4Qwby70rXLVwRw7BwZ84InGbD7
         FXS0m3KfJtoROGx9fiGh32QoERo2rriiZ722dLwUrclfFWf8MYRsPp68rT6vMqbyxfh9
         WaiPG9ORuGxbu99F//ktLrZ1Lrenn/bKXxC55r4kd2SB0tOIH87gcpGHoAr4dUiZkiRK
         MkwQ==
X-Gm-Message-State: ABy/qLZ9jFibVXDnXEXKi/nphpmMNK2v8rMLyTVskVQyp871/wM7OABz
	4B6/QvV3SexCWrrstEMF+uorLQBnWWg=
X-Google-Smtp-Source: APBJJlH1maDhId2tKycPF/1YtsUfi6ST2NDJIiDY7PGndP95+mVJaGGBpljiyPKxq6BWV9uMfZ5QJQ==
X-Received: by 2002:a17:906:8e:b0:99b:5689:1331 with SMTP id 14-20020a170906008e00b0099b56891331mr10524783ejc.59.1690223469306;
        Mon, 24 Jul 2023 11:31:09 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:c600:5c43:16ff:3eac:2a77])
        by smtp.gmail.com with ESMTPSA id e13-20020a170906080d00b009944e955e19sm7010576ejd.30.2023.07.24.11.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 11:31:09 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [RFC PATCH yocto-autobuilder-helper] config.json: prebuild key native items after pre-fetching but before the test matrix
Date: Mon, 24 Jul 2023 20:31:00 +0200
Message-ID: <20230724183100.217177-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jul 2023 18:31:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60638

Quite often the changes-under-test cause all of the builders in the matrix to build these
items in parallel, which is enormously wasteful. The idea here is to speed things up
by building them once at the start, and then serve them from sstate, so that test builds
can quickly proceed to items specific to them.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 config.json | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/config.json b/config.json
index f271ffa..355a5bb 100644
--- a/config.json
+++ b/config.json
@@ -274,6 +274,10 @@
                 "extravars" : [
                     "SOURCE_MIRROR_FETCH = '1'"
                 ]
+            },
+            "step2" : {
+                "shortname" : "Native items pre-building",
+                "BBTARGETS" : "binutils-native cargo-native qemu-system-native dnf-native apt-native opkg-native gtk+3-native gtk4-native gdk-pixbuf-native"
             }
         },
         "trigger-build-posttrigger" : {
-- 
2.41.0


