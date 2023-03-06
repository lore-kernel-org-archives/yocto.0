Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24ABEC6FD19
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 17:55:58 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.2092.1678125355416271639
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Mar 2023 09:55:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k4YdeHBj;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id f11so9718661wrv.8
        for <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 09:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678125353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IDVdqVWw9cOqmNcV/tSk9MG5OXszU0M9IQnjS7Vo4XE=;
        b=k4YdeHBjz6+kMdbPcluZwFv9u29I4rfM6vyrlsLWrnRW6GJsLe60wOYzT+Hg0c+cc7
         i/BeTN10WPIvnI/FporKsdrbXP59HZMqMYzDcwgMaMe1Bl5791IOUrq/WKRDt2r+/lm+
         UeV9o/qPg6lRyW9ZFSWL5S0zB7gwjHBNCTS4lYLuDYLO8ybvbWepeKccMB3oAsmRJvHQ
         ZNqP1YadVd+hFrNslzorSLN1pUEPi8I6vWGvZv9urwcTL7U2xHIzh9D+zG5laNACZV/m
         eSSpV+PsPfC9jrw9ycj1Np3kdPygv4V/e/X3L0an0ARaxwnFysb1fMOHhf8LY8ODIs+u
         w5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678125353;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IDVdqVWw9cOqmNcV/tSk9MG5OXszU0M9IQnjS7Vo4XE=;
        b=tuYPKUZ37dXyrRQr0Af5FAA0DAUiEjPzwcxh8hNFzWkSYyzb2nSlUca7sn9F4PZBNw
         EXwjaM4NtqabwFdzFbUBKeoiCugOuTPaPkpK9GdJSe7my/mC9EN5U8yiToH+hEuNWkPz
         yO4IH74UfHkYXL69vMY/90ZgkIVL2yNjAO1wZ6L2+UDF65KaZfTleBzVDIvishrgNy+9
         arZK47WzcoWKJYtUFb7SaC6fq2667xjmvyUOnBwJWMmu6x+FVyu00xHPVIZU01/dI7RE
         +8juliqFj++lzF7pf0Dp/5y9FqCc8YAz+zhPq1Wz3YWrDTeZhlYUrsJahx685rejL6xp
         Q2nA==
X-Gm-Message-State: AO0yUKUeJtbQs8ZZP9Kg1go0Mftu43fbr386zwMSRY/e1ORm41L9KWIG
	nfSOioWc56sqdPwBgzxR0FNjuu9/spqIxA==
X-Google-Smtp-Source: AK7set9UqNiV9uYBC6eRBZRnUGnpFMClPQyP5I1cmvHKN6QIREPBJUCtp0RqLksXpBDw7sxvZC9mIw==
X-Received: by 2002:adf:cc8f:0:b0:2c9:23c4:8f93 with SMTP id p15-20020adfcc8f000000b002c923c48f93mr6978682wrj.57.1678125353673;
        Mon, 06 Mar 2023 09:55:53 -0800 (PST)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id j29-20020a5d6e5d000000b002c59f18674asm10424685wrz.22.2023.03.06.09.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 09:55:53 -0800 (PST)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 3/3] meta-tpm/layer: lower the priority from 10 to 6
Date: Mon,  6 Mar 2023 17:55:28 +0000
Message-Id: <20230306175528.395007-3-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230306175528.395007-1-jose.quaresma@foundries.io>
References: <20230306175528.395007-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 17:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59350

The priority change on sumo version without any description.
Since then is very hard to add in other layers a new version
of any recipe on this layer with such priority so these patch
reverts the priority back to 6.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-tpm/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 81690ca..12bd6b7 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -6,7 +6,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_tpm-layer = "10"
+BBFILE_PRIORITY_tpm-layer = "6"
 
 LAYERSERIES_COMPAT_tpm-layer = "mickledore"
 
-- 
2.34.1


