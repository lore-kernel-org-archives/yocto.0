Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B35CFA757
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 21:16:29 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web11.3529.1728335783936733189
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Oct 2024 14:16:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=CH00F3tL;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.173, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20ba733b904so48183205ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 14:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1728335783; x=1728940583; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5OpY43dQxXgggIdTdxTQSZK+LUcGy4Aj8Fb2YBp8vis=;
        b=CH00F3tLSWh352zsmNzNvYyPa4Dqd8zaJd2d0I/z3VpwVEC454f6qV5fZy5qr4lxVD
         8tIb9TNJm1o03BVPLaaLMIN10oYy3ZS8TAcZFxbfHHg8fdMLgLj2XDzYLY+A66vyQbl5
         2DSZsFomXBUx2+/z0pTZI61HaKqFN9rzZnopvM84H7OGqBIwuJVKDIGPZHiRsq+H8tbf
         N4OosxSlJccsYvbeinO0/FWTN4OmPXrV0Uw17lT4BHn+dfyT4fGB7VY8ougKGPr9rlPJ
         pl/9rhIyIM9c20lpb+P3IcUFGBQGCzimsIIglrf8PP1Q/ydPBtnaiC9NauXeETwqtaad
         V6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728335783; x=1728940583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5OpY43dQxXgggIdTdxTQSZK+LUcGy4Aj8Fb2YBp8vis=;
        b=md8ZFgiW5+o8c2EhD6/aa/QIek3w3ADpCSriQhIDcA6F1HS6x+XBvjJL2ksFRnWRhO
         oGqyEtJJ0P1TDyQP+o0sr99ovSV14yubFWgD0CBjIGBuKtJgiBrc3bPBX45iYiiONiFJ
         01dGRil3B4ZAbNv/tYfFOjsRNzwZvC+3blPlG2OfeXKPvJclgpLqCIZM5NUlHg1Q3IFg
         NG6L2ZSodzNGOr8Lwlk2kiam1eX+pQyBcvpyLkLhD96KrD1Gr9+U4AVhS/Sx3vD+nA9m
         pFh605Fx5aCKi/MECpvajkH9ltlVwC5j+b3XIFa/AvLOsI1vC1HhG4e4ejIs1Hu4TX7v
         ZEIQ==
X-Gm-Message-State: AOJu0YyGSbSA9wCBb/Ap3A2d9fEKVXdi/xpeKljg7JVOioroFQVtT6gU
	7FGCK0AcX3AtQGYVKS0FRtyvdOHJYAgMaWdB2TIx8zf0b/2Ko3Na15ZEZLg5rTyIUIHs2Nxt1eH
	M
X-Google-Smtp-Source: AGHT+IHqeNrIY5T6b8ZrLnEXW0X8ViCEBCpJ6oA49a5NpGhn7k5miyolfm0rO+M3p3ifW8TOAReO6g==
X-Received: by 2002:a17:903:40ce:b0:20b:a8d9:2a02 with SMTP id d9443c01a7336-20bfe072971mr197423815ad.36.1728335783049;
        Mon, 07 Oct 2024 14:16:23 -0700 (PDT)
Received: from hexa.. ([98.142.47.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c138d0696sm44038405ad.84.2024.10.07.14.16.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 14:16:22 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone] config.json: use buildtools for fedora40
Date: Mon,  7 Oct 2024 14:16:17 -0700
Message-Id: <35baaa3f73b2024fbdeb207674599481f208faf8.1728335711.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1728335711.git.steve@sakoman.com>
References: <cover.1728335711.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 21:16:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63952

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index f41df5f..790bed1 100644
--- a/config.json
+++ b/config.json
@@ -1345,6 +1345,7 @@
         "debian8*" : "${BUILDTOOLS_URL}",
         "debian9*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
+        "fedora40*" : "${BUILDTOOLS_URL}",
         "ubuntu1604*" : "${BUILDTOOLS_URL}",
         "ubuntu1804-ty-*" : "${BUILDTOOLS_URL}",
         "ubuntu1804-arm-*" : "${BUILDTOOLS_ARM_URL}",
-- 
2.34.1


