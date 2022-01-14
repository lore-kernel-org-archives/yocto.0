Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26FD7C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:31 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web12.3798.1642139730491168964
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=N8PkYK0A;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id
 59-20020a17090a09c100b001b34a13745eso20974445pjo.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JHSjul8CgXkD/ZIAoGGCqRWRqt7mrGxQ0jkoODuhCoM=;
        b=N8PkYK0AW6653n/efYgz36nUWpn+4QLLnJ6pxiM+VzdtRFhbhvFom6PHiFlWcxQq/k
         tLVTLsfvizoHwfzJo5Q1OP2p/IFp/7AQl4+FtQpNGIoiY+vccJy6TFPh9yvJJGJHqWVm
         6iJ+S4QYIz8+LrzD/zpr1ybkzb8SxniCAcQW4QlMPco3rDyXGeuGtC+v7BjS5dVN4CFu
         CQlLDG43rNszyhPZNEBlMOEc5CvzPfIOpLeWgWkwP4plwRiZ47060y0DjX4l0IOvJBRW
         uU8X0FtPuisZprLjsJN1k/BcBVW2yFcpBGH5AVoDDPzKzkwS0TRq0G6S9YR6ZgiO+OAU
         y2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JHSjul8CgXkD/ZIAoGGCqRWRqt7mrGxQ0jkoODuhCoM=;
        b=WFPXaj2VO82ycziu1/3MOL4fh6ll0tNEiM6I19D8gwp2jMTIv+8elyrR094FS+4dog
         m94g9DTi5E9qG/C6zKTDwBSGmi9YWZngSSJi5k2uPPisWFcxz2/Wcwyc72rOaHIc9Y0C
         S12waVkEImxTE9B/zcTAE8hQkeX66imCtVXbKTCKnk2gaa8SUY070OUM6iroFX6sjcKP
         dBh5I6qePja2G4rKDQaJAAO2Hz8mww+O/Uc3ciIGVFqGuK8SzH4feGTkEvXG5QyGzH1W
         vUi9gZ/i2ra/GMpvHE+JKsjBJuistvOVei1auEbnahPWneZ0b2+AlionbHgkM9T5os9c
         kCDg==
X-Gm-Message-State: AOAM532jxC3G2iDVPNRh8tH9PmPW/Xz9Pp9rl84QiZPIxZ/XY71H2lmV
	YOD4/XEDv87ynC1lcwt+g7Gd8IIMnM9Dgg==
X-Google-Smtp-Source: 
 ABdhPJxxHDdQE84cofOlQT60MiRxRr0vhJi29uW79OtWZRAZXWFDrVYW0/2IDN2H6SImY7bkN+ZqMQ==
X-Received: by 2002:a17:903:248:b0:149:c231:3e24 with SMTP id
 j8-20020a170903024800b00149c2313e24mr7582569plh.99.1642139729685;
        Thu, 13 Jan 2022 21:55:29 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:29 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH 14/18] rrs/admin.py: drop curry import
Date: Thu, 13 Jan 2022 21:54:37 -0800
Message-Id: 
 <743c8f449d6a60564908222945744a3f003bdfee.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55865

Dropped in Django 3.0 [1]
Suggested replacements are functools.partial() or
functools.partialmethod() [2]

[1] https://docs.djangoproject.com/en/4.0/releases/3.0/
[2] https://github.com/django/django/commit/5b1c389603a353625ae1603ba345147356336afb

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/admin.py | 2 --
 1 file changed, 2 deletions(-)

diff --git a/rrs/admin.py b/rrs/admin.py
index 402279f..25e9125 100644
--- a/rrs/admin.py
+++ b/rrs/admin.py
@@ -6,8 +6,6 @@
 #
 # SPDX-License-Identifier: MIT
 
-from django.utils.functional import curry
-
 from django.contrib import admin
 from django.contrib.admin import DateFieldListFilter
 from django import forms
-- 
2.30.2


