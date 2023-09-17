Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5939FCD13D1
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:48 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web11.41250.1694994938709846285
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DnaOs+VX;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-59e8d963adbso7941137b3.0
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994937; x=1695599737; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+V2BGb1oFKENco6USsVwBpi1E7tF9ZmUQdecYz5yhdE=;
        b=DnaOs+VXIrBYfZS5FT9+xplFuxiyXSLvhrgEsyiTlhILN7OZipMfcEnrcdd5rSfPwP
         BrltxcWsfxk8KjJ8nMVWbGrkzUVbb7oSxigIKU5H93PBD19wwIKkde5P0XN1kMMxBYpV
         iirE4GomF25ZJ7SrB1PRNsMvK3VQCPoFXdKjLldFKMQh1ge8JgVSiXAFj+ERxEdWlD2G
         FvHlKpLb7ylWq7boKGLnvg7HYuZt68e9zD+FOPoXKPkpHR8C3vehUORaWGxkr96hBnb8
         lS8p6esg5C5Zfhcb23g9TbWgmeC17sAYBGHJSH7RZrTeTZFiF0XBH2SBu1+8GX+8Dlli
         Ok7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994937; x=1695599737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+V2BGb1oFKENco6USsVwBpi1E7tF9ZmUQdecYz5yhdE=;
        b=av2jeLj9ScpJKJHNJKw7jBQGcLiz/EbpWpa3W7jXDjEIWILpuyK/lO78eNE9JOehGG
         setliW0nI22yAoPm+s3F3bOYcVS5BZD19wSK1i/nQ0+zSAXAnMp3WaKh+yJkzGtFSQtY
         iMw1+ihBLfn0oMBbS/NZ/ACjGWY6We4U2d2PgCxmSxDOLAR3eL0fBuLG7w6vkvEhK46c
         WUuMV4NHxPjD83Oa5968nyF31LVTZLb611v7YbuvVsJpMCykfksAUFlDsUfEhcAVVF+C
         uWALs7MEdaDno2ReD6lr1Ky3PzhJOg1rC/yygzkeeVimiPJmmd6zvKQvhf1PWKixtCug
         SpVA==
X-Gm-Message-State: AOJu0Yze49q/jv5C1PhdpEa3kDBlR6lMZJS3xwaqMLw0Uyzau/1fm1GG
	B1CHcXufnnc5+aUJQgYCefQZ5ehawMg=
X-Google-Smtp-Source: AGHT+IER6o4qIPSoXXvyxXV4izlEINCm62sYiNAjolGm5l8mOl9j6scSnBA3BBGN/ixoZ/dmR2GlVw==
X-Received: by 2002:a05:690c:3585:b0:59e:7f14:4b48 with SMTP id fr5-20020a05690c358500b0059e7f144b48mr4572387ywb.41.1694994937683;
        Sun, 17 Sep 2023 16:55:37 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/7] chipsec: update to 1.12.2
Date: Sun, 17 Sep 2023 19:55:31 -0400
Message-Id: <20230917235534.2871544-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230917235534.2871544-1-akuster808@gmail.com>
References: <20230917235534.2871544-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61027

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../chipsec/{chipsec_1.9.1.bb => chipsec_1.12.2.bb}             | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/chipsec/{chipsec_1.9.1.bb => chipsec_1.12.2.bb} (94%)

diff --git a/recipes-security/chipsec/chipsec_1.9.1.bb b/recipes-security/chipsec/chipsec_1.12.2.bb
similarity index 94%
rename from recipes-security/chipsec/chipsec_1.9.1.bb
rename to recipes-security/chipsec/chipsec_1.12.2.bb
index 9fbdaa7..a42a7a6 100644
--- a/recipes-security/chipsec/chipsec_1.9.1.bb
+++ b/recipes-security/chipsec/chipsec_1.12.2.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
 DEPENDS = "virtual/kernel nasm-native"
 
 SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
-SRCREV = "d8c2a606bf440c32196c6289a7a458f3ae3107cc"
+SRCREV = "7066ad538f8bbcbb033d27ff68d4e755bdcdc0a6"
 
 S = "${WORKDIR}/git"
 
-- 
2.34.1


