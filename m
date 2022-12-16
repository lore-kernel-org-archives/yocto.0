Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9993EC4167B
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:15 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.17816.1671208989163067407
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LVHYwPY9;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id 3-20020a17090a098300b00219041dcbe9so2902021pjo.3
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U0tUS7a8iqdwzUHBAx3K6cLjGEPHqvVqMY6N0SEPOus=;
        b=LVHYwPY90OXsAF4ClHKMLd7uyaqaUOPsx6/X32tS2hZ1Lfgtb6hi4qXPg/OwTTZ5WX
         w8icdjWUYPk32LYoh+TFMmFcqEzSCYne99I+7jmulyat/J7O8uxyTK8EjtW7TCZrAdaY
         d3HQl8be9Lm5LccBIHLIoVIGVzmbLjlNLCb5WqxqY0LnhogaipDxttjFMN0pipuQFZ95
         /K6pEB0oLFBwk7m2Vva5+DHUJx0O0PVN0J3RjlI+K8JX8dyCRATWFK3FTRJ9JdSBv0cx
         6CB6ewOP66u6S9/Dg/cyTThoCjta75HMFbyXvUOjB8HPMagYj1LlW98q7NDk1ZHpYX2U
         Rmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U0tUS7a8iqdwzUHBAx3K6cLjGEPHqvVqMY6N0SEPOus=;
        b=RNRVftEpbflhJ16Ww12NU/ZTgSKjFX4nKM3ZwXWE+u88v4j8AOhKhPpg64NBupKNmx
         Im/ciacqTt9dDmV6c4r9id/Bc7xDZjhZRQ0vofuitztk/uE5KNg8jr3lZ/LkrlFvGdSs
         VSqtMoHHn5IA9RdWUwan1HIDhpXjRXjnrFRqeA4dKqxcEkSeztW0002LCX/otc8WPtwL
         bac/y5Zvq5p2glW0jz7nHqgw/lHRgH5Gw2drhHb2nGR3MnsNKoq+ZvXYEIZosTnKHPZQ
         u7b0GuIFGM9BKsQoMa8TILx4Xsj0hCzJTh5HrFdgPdf0o2l9gi2cqHE0LuRB6ZSCHQ3K
         ebtQ==
X-Gm-Message-State: ANoB5pnwUp4XC4hiEg4BsDxlthO3FXogLLSv2PiM8/K57uu+NEpbkku5
	pCKAhmwPgAKrCZsrlqfE20rp9LuW12A=
X-Google-Smtp-Source: AA0mqf4TlAA7YGB82TjuKJjudj1YFvflSVhIGD8SJX8NnXXWJJt336ATwuWG7V8G4Vkj2Oa19VHUMA==
X-Received: by 2002:a17:902:a985:b0:188:6300:5a65 with SMTP id bh5-20020a170902a98500b0018863005a65mr30023452plb.35.1671208988151;
        Fri, 16 Dec 2022 08:43:08 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:07 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 1/6] Dockerfile: add captcha dependencies
Date: Fri, 16 Dec 2022 08:42:50 -0800
Message-Id: <b932b1dcecc204c2a40cc22a3e5d3c44fe3858a4.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671208436.git.tim.orling@konsulko.com>
References: <cover.1671208436.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58824

From: Michael Halstead <mhalstead@linuxfoundation.org>

The current version of django-simple-captcha requires libz and freetype
development libraries.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
Refactor to apply. Fix typo. Fix previous mixed use of space vs tab.
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Dockerfile b/Dockerfile
index 4b2870a..a6c7ad2 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -31,7 +31,9 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 	python3-mysqldb \
 	python3-dev \
 	python3-pil \
-        python3-wheel \
+	python3-wheel \
+	libz-dev \
+	libfreetype6-dev \
 	libjpeg-dev \
 	libmariadbclient-dev \
 	locales \
-- 
2.34.1


