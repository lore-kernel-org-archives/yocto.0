Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E430C3DA79
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:42 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.89706.1705341401067185080
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZOhPx5h3;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1d3f3ee00a2so41995435ad.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341400; x=1705946200; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eEyEFcy5omVt9mfQnChEcdORd5gsPawJU/i8UH/4pD4=;
        b=ZOhPx5h3lZ7JYxMlgZJYP0xz2E3L2As1v1DwEtbaCHCfkZS2vOslCSg7dOk8OuFuzH
         gg/MKYe6+0+wbsTPR4L6cbCJKgPzVO8tFRYJ81BWOEiQDhkVME0NzGRLA5tcmN1rCJkv
         yueSIhSmxqEq0E2M8sCmzKwv8qPOSdnvLo7bDYSf08m4Jwmha0KUVxcZGL2Lg/WSla2K
         ZBZaG9hb2pul61PbZBCuOC2iadk2kYR1X7bq8FJRFvon4skzEb7cJ1blv8/5uxT2BEdj
         B52thkqKeo2sETwg5CpMlkfDOta5vgNocR0pT+60uwSc0xOcrd2PEd+2+wU+heR7tXEp
         qnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341400; x=1705946200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eEyEFcy5omVt9mfQnChEcdORd5gsPawJU/i8UH/4pD4=;
        b=nDVhdPGvoA2k/o8TwVT7ZacR6nozxTCif8ClsT68oOXK/5j46qZhc4/0KivZQnRQLm
         YejTJ/6laCDNtbnaD0VdEFWLufVsNWgikxZSuV3l96Ev8OLJUJVAebQ8stkwsNs2zH1t
         dAIAiyMLb6L8YCRVtBGaFf3Qbq3FOZqzgE/2sRdZ69BM/jaD5hQVUNigei64VhImJRnu
         q0KrHKskzySMG0oNlnj1NmMtu00EZNjlf2uGN7HC2zLno9MqssEDEFWJkqQ4ZlNK+RZs
         L5d3SwFLGY7EWCBgG06xarElc0agZXpBPax3I/gLKTGJ7/awd5b2UeY89JKaRohkJw8j
         avIQ==
X-Gm-Message-State: AOJu0Yz4BSML5O2Z7KjnXRSw0xBvNtxuUVtTWzk2S1UgzRJPc8jRB+9j
	ueSiMDbb9vpr6JPjDwpsV2O0X3307C8=
X-Google-Smtp-Source: AGHT+IFNthAdtgX3YWQ/igFHbLh0eoW34TwQMQZnJthgfOmkDBQOByDTZr/nhP9Ng6jbg3nMs96k6Q==
X-Received: by 2002:a17:902:7849:b0:1d4:e276:61c0 with SMTP id e9-20020a170902784900b001d4e27661c0mr2787132pln.92.1705341400283;
        Mon, 15 Jan 2024 09:56:40 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:40 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 2/6] Dockerfile: sort apt packages alphabetically
Date: Mon, 15 Jan 2024 09:56:28 -0800
Message-Id: <f5bad078f92ccf6012eaca002eaeff3e0aa049d5.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341088.git.tim.orling@konsulko.com>
References: <cover.1705341088.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62148

Make it is a bit easier to see what is installed by
sorting the package list alphabetically.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index 02948b6..0f3afc4 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -23,26 +23,26 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
         && update-locale \
     && apt-get install -y --no-install-recommends \
 	autoconf \
+	cpio \
+	curl \
 	g++ \
 	gcc \
-	make \
-	python2 \
-	python3-pip \
-	python3-mysqldb \
-	python3-dev \
-	python3-wheel \
-	zlib1g-dev \
+	git \
 	libfreetype6-dev \
 	libjpeg-dev \
 	libmariadb-dev-compat \
+	make \
 	netcat-openbsd \
-	curl \
-	wget \
-	git \
-	vim \
-	rpm2cpio \
+	python2 \
+	python3-dev \
+	python3-mysqldb \
+	python3-pip \
+	python3-wheel \
 	rpm \
-	cpio \
+	rpm2cpio \
+	vim \
+	wget \
+	zlib1g-dev \
     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 	&& locale-gen en_US.UTF-8 \
 	&& update-locale \
-- 
2.34.1


