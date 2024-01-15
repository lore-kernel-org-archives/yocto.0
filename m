Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F0C47422
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:52 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.89710.1705341405511449292
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=acXlmWnF;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1d3e416f303so33183815ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341404; x=1705946204; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jEqidSGevJkvqZn4RmPTq4TA4+2SoWG1B7QEr2j5ENg=;
        b=acXlmWnFqc7N7nd8LV28rILnmm86RV/KPg1tE1febQvPx2pe5ZRcCFNm6/U2Hfunbs
         GyjIs48UbLTW7vf3sF/+wb/iWTTFlt/jG//AfCTat/zfrNHCbTfzuM9Za871mNVe1K61
         3d9wykw7lEpX/qNuG+keBz/0iFgrCUCSotdwtJYYbKe/vySKz6HVg4ngFsyhsipUICMq
         7HcRuJCUgrza75uv444omDPm03yWhenMP6ax8ASE15Ed+rL40GUOFLrnkTCOygEZezOJ
         kkyHDKDuvEFYs4IIDgpBxHiNfS4ZODZF0FOw/4MxnXnV13crpHnJTV1SmW3TJAUImDGh
         /wEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341404; x=1705946204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jEqidSGevJkvqZn4RmPTq4TA4+2SoWG1B7QEr2j5ENg=;
        b=mUSScqy0Oo5Ti69ruMw6ja2nI+mpr5rkE0p1vHzdCz7EstgdTcf8RTi/fc6jr64DjX
         1IYUtBsv+TWVQmaUmxtrbHCuC2MF/kHOp2dQELPFB+Ye1ELt8Z8RcBttn8jskj4zxKWp
         r3RB9EhCZHgUSx6i6wuk+aIfg4aOnG8myIySPgycWJGXT6Zx3qnUEkweZ5pN5yA1+SR9
         sLyDeK8Jza/VKkqHMuIjxj3MkY/C2W8L54K6HQUSl3rxeEDi1ZRE+9zqhNTO9KU37yPH
         Du/ntbig7xtAmTbRTJAhNUJoSGeKV0r9hZfaw3vGGxOBm9S5ARW0OGwEeXeDIAUJr1k9
         hjrw==
X-Gm-Message-State: AOJu0YyNENt7etnczJPj/K4f0bHvCYasNe9scMx7k8jMO8+OLzIDd9A0
	YaqVMsY2VVN1+pDYox524q5NyxtSFGI=
X-Google-Smtp-Source: AGHT+IHnGK1XMGUoRIls7os90PhPxlKYKKTXJqaNySnSipjNBEznZZRAu0r6YuED7zjVbSKcuo6rKw==
X-Received: by 2002:a17:902:ecc5:b0:1d5:c77c:1bad with SMTP id a5-20020a170902ecc500b001d5c77c1badmr1499748plh.111.1705341404602;
        Mon, 15 Jan 2024 09:56:44 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:44 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 5/6] docker-compose.yml: mariadb:lts
Date: Mon, 15 Jan 2024 09:56:31 -0800
Message-Id: <490205e3a63a4a177b6ae084479fda0822598d16.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341088.git.tim.orling@konsulko.com>
References: <cover.1705341088.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62151

We should really be striving to be compatible with
the latest mariadb LTS (currently 10.11).

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 docker-compose.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker-compose.yml b/docker-compose.yml
index e57f59d..8b43946 100644
--- a/docker-compose.yml
+++ b/docker-compose.yml
@@ -1,7 +1,7 @@
 version: '3'
 services:
   layersdb:
-    image: mariadb:10.4
+    image: mariadb:lts
     command: --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci --wait_timeout=28800 --max_allowed_packet=128M
     environment:
      - "MYSQL_DATABASE=layersdb"
-- 
2.34.1


