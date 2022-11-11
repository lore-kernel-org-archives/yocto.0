Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA84CC433FE
	for <webhook@archiver.kernel.org>; Fri, 11 Nov 2022 22:12:06 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.2673.1668204717652781534
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Nov 2022 14:11:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=ss+FKED/;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.176, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f176.google.com with SMTP id j12so5268050plj.5
        for <yocto@lists.yoctoproject.org>; Fri, 11 Nov 2022 14:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pzA3ZZUs8U6vtzxiDJ9AfTVGrBrrYcUX8JC27xdge7U=;
        b=ss+FKED/VsBX1kmtMSKbTUScDO7VEPbh4pN/8Y1rh5LbNhCZlD2lpcrM2RVCVFrRrH
         5xs1WD1L7+D0D7QaWoGmyEVYUCrfUwdBuwKWy9UrVjpStSmk0riFXCj6vwZN75DhDuew
         4DvO5A7PuQAyK1hkQXRlttX7XFhPh1GVfLFgx5O1zfrv6QRy7Qr6j0IoR3ABNkei0ZzH
         By4aAlVUGTusr3ign3Tq7QUpsqbGfwCRvOQtuTeRj0DBedz+uet16VU9B7iAgB5Qvzu7
         iIrA47NGl+yJj7ls12Gslt9Xv0MTJeVndvIxt4KwoF7q1+p6rmEmUag7wQDetok0HEA3
         F1Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pzA3ZZUs8U6vtzxiDJ9AfTVGrBrrYcUX8JC27xdge7U=;
        b=HJS8YO/RapbKMQhvfgwGCW6/wkL1YG0cDVWAZxXgCPyusKSPFXRHRjuEMlvpN8LFyY
         Y+r+XihGBkvd7cEJ1HsvrJ1QA4YmOt1NZn4VpWNtB4Qof6ZBzZWA37jAQnHhHYAO/TiD
         TYAYUKoRT9+J+AWnCdWIQpaNHr002OmxlPIpnxNcAJHE9rJAXGj9c14NCLpm2wf2OQ1o
         IPlVVqvzBMQbQ+KId5SgByHSUmwcW5M9qvkJqoan1+8XX5IOymnYg7CNSlPvB9KFDJyg
         jKG+DAhA354Fnh39o4BD0L69VX8xfHob2nEzF4Ft4s6fp6ZIKf1MiFRrcTnTGuMlqqw1
         071g==
X-Gm-Message-State: ANoB5pkegRp+6YNNTuILl8auIm0DYTS415haea2ElRrV4nEQ97uSAlVF
	DeILPXFtPxs4nis8KCB4IR5QYEtrY88EX94I
X-Google-Smtp-Source: AA0mqf4LUxkQVak9nlsujgf1AIHl4WlAxEOdCLef/NKnEiqXD8oczoJCYa4TH/tcqpLkm1f1O7TSDw==
X-Received: by 2002:a17:90b:3751:b0:213:cfb4:719 with SMTP id ne17-20020a17090b375100b00213cfb40719mr3895921pjb.188.1668204716430;
        Fri, 11 Nov 2022 14:11:56 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id u14-20020a170903124e00b001869394a372sm2213391plh.201.2022.11.11.14.11.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 14:11:55 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][langdale] config.json: use meta-agl master branch rather than next branch
Date: Fri, 11 Nov 2022 12:11:51 -1000
Message-Id: <4c45c027589b5303dddd94342cbafc76d5d203d7.1668204604.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1668204604.git.steve@sakoman.com>
References: <cover.1668204604.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Nov 2022 22:12:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58544

langdale is no longer supported on the next branch

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 9dcc1db..694cbfd 100644
--- a/config.json
+++ b/config.json
@@ -1258,7 +1258,7 @@
         },
         "meta-agl": {
             "url" : "https://git.automotivelinux.org/AGL/meta-agl",
-            "branch" : "next",
+            "branch" : "master",
             "revision" : "HEAD",
             "no-layer-add" : true
         },
-- 
2.25.1


