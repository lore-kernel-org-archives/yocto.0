Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79F10CD129A
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 19:54:17 +0000 (UTC)
Received: from mail-oa1-f67.google.com (mail-oa1-f67.google.com [209.85.160.67])
 by mx.groups.io with SMTP id smtpd.web11.90484.1712519648768222994
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 12:54:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=bvccq4ed;
 spf=pass (domain: konsulko.com, ip: 209.85.160.67, mailfrom: tim.orling@konsulko.com)
Received: by mail-oa1-f67.google.com with SMTP id 586e51a60fabf-222a9eae9a7so2000937fac.3
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 12:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712519647; x=1713124447; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aFWd4K1sD8262p3ctumxZqYbM0ZWpRsLYec6k8cOVVc=;
        b=bvccq4edK2/v5CPe9A4GrLdhC8uPrt7jFGuwMVW8Px3sflA1r54UvVOxEeDXebR+KQ
         08OsW3/6f1KgQWsDvaVfstIUwE3v0YdCrmCzzcMyzINq6w8u7UoTGmiKsmW3dV48Ksnk
         N3KVLMEbgA/wu3LXINwiSrQPGd2gEDd+y/HRw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712519647; x=1713124447;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFWd4K1sD8262p3ctumxZqYbM0ZWpRsLYec6k8cOVVc=;
        b=M1gdgcUQ+CmrW/SSe4B3yn5AeOYqVlXRpY+CpBqF27RmiM3VCq6IwpT2LzV/L5Glig
         /OMnwxHaDsuNPUK70dYojkHPrU9MQsErP1b6peasKA95kxIf+wqfodHP+zFUurAQE2rG
         gY6joQql1EtPFhahnxbJWTfyDRAZqX1ChCMMcfuY6G8+q3iiWmW89L7YEStr0hhNDdLZ
         PiiQnqWhG3ZC1Zn9XOD54/FhiMXsn9Vuqfrly1lD2QPdEZj7X4oia9/ZfRhwSZhPygdv
         Gv1jkv5iiiFcentwtj5U6XFv7+FHkf66szkyX2K/OuUTaqp8gfe5v/1Euks0P1mtJcIP
         vDWg==
X-Gm-Message-State: AOJu0YxrcuMyhaVmyhy2XQ828rwdUp5ZvxQPscCzkqYQvpQMNq67ke/m
	toFFgIUvaBsmMz3fLaOZSruePJ6wmCu9BOAx3kyZIxJG9Btn5FGi5YUjwhlwE6zydtJfFV6L7yg
	FICT4HNdW
X-Google-Smtp-Source: AGHT+IFaYj+LgNFp5YhHjMhMc/ix+VeJYLNkOOwNHt9z+ueBb/zu356CLJc+zVTLjJJQRYDyVABKrA==
X-Received: by 2002:a05:6870:80ca:b0:22e:c656:4dc3 with SMTP id r10-20020a05687080ca00b0022ec6564dc3mr8003107oab.12.1712519647676;
        Sun, 07 Apr 2024 12:54:07 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:5996:ce4c:d10f:fa94])
        by smtp.gmail.com with ESMTPSA id b187-20020a62cfc4000000b006e6b7124b33sm5173425pfg.209.2024.04.07.12.54.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 12:54:07 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi][PATCH 1/3] layer.conf: rpi5 recommends lts-u-boot-mixin
Date: Sun,  7 Apr 2024 12:53:59 -0700
Message-ID: <88d6d14c11d2846531d235ae18f88ddd4391d7a4.1712518899.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1712518899.git.tim.orling@konsulko.com>
References: <cover.1712518899.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 19:54:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62892

Add lts-u-boot-mixin to LAYERRECOMMENDS

https://git.yoctoproject.org/meta-lts-mixins 'scarthgap/u-boot' branch
adds u-boot v2024.04 support which includes the initial support for
raspberrypi5.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 conf/layer.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9488ac9..deea4a1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -11,6 +11,9 @@ BBFILE_PRIORITY_raspberrypi = "9"
 
 LAYERSERIES_COMPAT_raspberrypi = "nanbield scarthgap"
 LAYERDEPENDS_raspberrypi = "core"
+# Recommended for u-boot support for raspberrypi5
+# https://git.yoctoproject.org/meta-lts-mixins 'scarthgap/u-boot' branch
+LAYERRECOMMENDS_raspberrypi = "lts-u-boot-mixin"
 
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
-- 
2.43.2


