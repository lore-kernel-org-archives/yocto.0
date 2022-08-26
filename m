Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655F7ECAAD4
	for <webhook@archiver.kernel.org>; Fri, 26 Aug 2022 14:00:46 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web08.37552.1661522438475475639
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Aug 2022 07:00:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=sapXuZUa;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.45,
 mailfrom: steve@sakoman.com)
Received: by mail-pj1-f45.google.com with SMTP id e19so1748521pju.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 26 Aug 2022 07:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc;
        bh=+tvfcaS47s4qjFCBq0jJlOSRIwYZpbhYMHMQYvQ7qa8=;
        b=sapXuZUanY96098I6z8P0HEg7a6YRCdKWCqWRAMG8YJEKDJ0MxuFA/Fmf5lmalbfTW
         +V3TvpI8q6KHOojne8mk+PWHim+boUNe4+2fT8/7XqEcIehUXZlnIfHvKL/MjkW2myur
         iQzL4WyYQI3/kQnPlmySWPV0IXo9W0Qpx5dnQFXoEKNLmzxTIj57Nv1ZAlAtfbWW0zXx
         HMQ7x7xbfSQms5JBanaFYVYYWCD04bY8S+ZojsP9eEFYiaFDt7EOn6PyRdcK9TiEK7FP
         Wlp+LMI6TifPPAqY0YCUbka1NgmiRGkEp/GE6OTzDZF776XXkNJ08nhy896wAkOQDc8u
         z/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc;
        bh=+tvfcaS47s4qjFCBq0jJlOSRIwYZpbhYMHMQYvQ7qa8=;
        b=cjUQLspfyQR+XtJo5b1Il5jOh56KowMcmFSSkXYO7w/M3vL2NxrCXq0+NaHXT8FuW1
         /NGxBB3cwyJqd6kQiOOK0dM5YSZV5bkZQloSAj9XiMP6J5tlb98Rh4nCLWoKI2lZTTFj
         OTbgZ3iu1SrgyFxfwun5oOI7Qcxg1jR/ff/3lwDw0mg1haqYgXLiLvTxvqd/m/4uevD7
         d0i+31d94n60HitGlGN6AEx9BRp6zifVwwB0+URBCYvJBZUQK7Oq3jEY5HJKra0Lf0ud
         xXY2nRvOmk73AGgvpUfUUCTRjLWEZzLbVBkIbPkyVbeYkISwT9/9J0PAtdm/YdU4EY5e
         447g==
X-Gm-Message-State: ACgBeo0fDTT59h+K5riUt0rnbB4emXsrPlaIar1kIOij/Y++qjYUKm8j
	FQ7SWL7QxeFVUWufuX2XZ8nYDPfBxz76RZ5B
X-Google-Smtp-Source: 
 AA6agR6VDZb9NqU9FdMjpvrYVEqKSsZliFos4zjqJoL7w46d5gBPP4118jMG5iNufJ/c2333/LJ2Jw==
X-Received: by 2002:a17:902:bd48:b0:172:bb9d:d6d5 with SMTP id
 b8-20020a170902bd4800b00172bb9dd6d5mr3841778plx.59.1661522432715;
        Fri, 26 Aug 2022 07:00:32 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 h187-20020a62dec4000000b00537aa0fbb57sm1781305pfg.51.2022.08.26.07.00.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 07:00:31 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone] config.json: Set SDKMACHINE to
 aarch64 for oe-selftest-armhost
Date: Fri, 26 Aug 2022 04:00:16 -1000
Message-Id: 
 <c75330ec1df13016457eefa7af9eefb623ee3bbd.1661522326.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1661522326.git.steve@sakoman.com>
References: <cover.1661522326.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Aug 2022 14:00:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57910

From: Ross Burton <ross.burton@arm.com>

Although bitbake.conf sets the default SDKMACHINE to the build
architecture, config.json resets that to i686.

As oe-selftest assumes that the SDKs it builds are usable on the host
machine, we should set SDKMACHINE=aarch64 in the oe-selftest-armhost
build.

A follow-up more invasive patch to clean up the SDKMACHINE assignments
is in progress, once it has been verified to not cause regressions.

Signed-off-by: Ross Burton <ross.burton@arm.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 65281a56452cf2bc547c60c0b2131422ab48a3d2)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 101ddff..298caf6 100644
--- a/config.json
+++ b/config.json
@@ -836,6 +836,7 @@
             "TEMPLATE" : "selftest"
         },
         "oe-selftest-armhost" : {
+            "SDKMACHINE": "aarch64",
             "TEMPLATE" : "selftest"
         },
         "reproducible" : {
-- 
2.25.1


