Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8817AC47258
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:52 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.89157.1705341402686184756
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BNNt8khZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1d50d0c98c3so64941125ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341402; x=1705946202; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dLvRV8cc6tgOHIny4mjgr2UIZzc9Nd76E4bhIB4jEV4=;
        b=BNNt8khZaKlZppfkHWDZQnamjvym3OBkfc7VqHNGQ3C3tYtM4tTukjyPGuoF2diaC6
         Ol/ZV8WiwelDKZCuqj6N+R6UpqHlg/oEeyOWyo3WZop/5e31Im/KmWhrXLteaMAf666u
         XkSreqPB3fcmTwa0TYitBSm4jO0HKtHjH4XMNNIhQrGhtCAcW3QWO7P84aqDz9UcZpL7
         qwNJxIjCrJe/23awAeQMhUycS+UNsocUGR2Kge8pJOcEh5dGT/SFEBX86XyYazPCpn0N
         jZCN7AfPbNCq6bds+sT3Wcyl81/yfoUhmE5pE0R8188W2Z0aXfeMzEFa4SewpJ7RNupH
         lwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341402; x=1705946202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLvRV8cc6tgOHIny4mjgr2UIZzc9Nd76E4bhIB4jEV4=;
        b=Sm/serknHnM2ockXQNlcvKU5Y59gT9osnoaXPjSIJIoQbJui44rHzzYtuFYGVqQJ50
         0MITR/C4b/Cw7zwrZU7698ImYBgHX8MQ9U1JVBKGG1WkOEVaIn8td90+y9EqluAVrXMs
         XnKPxt3u2rGbgz7qCL0CATw3T3CQ6sBjRybXH+FqHJbmo46UYyL2a49Q55Z6IEuzWH0p
         VVlk+C9xma7nsWbqxS9R+TDV2YXIaPGs5f6S41LKbHfmXXXVfgyxrKhEdxI+lyXASHp6
         9z4L/xke+8c9a/uqM+C38Ut59vnnKRd7M6D1NrfFiUPXloM34XsTLMlaAOfRUakjjkOp
         zRIg==
X-Gm-Message-State: AOJu0YzqamXe1prxEQiOo87gdFJD82NEhlZb/Yeukak+smriwv+A5nmL
	46XZdd5qz0Jsar9aWTQpEOClp1kR4ps=
X-Google-Smtp-Source: AGHT+IGUaimQkWEKVX6jLfpIe4Tr0ASN9AOzrXSMKRT3CdwvXsoC9Kd27UO+fUQyy41Mw6KvHbsrrA==
X-Received: by 2002:a17:902:fe0c:b0:1d3:3b14:b765 with SMTP id g12-20020a170902fe0c00b001d33b14b765mr6636747plj.69.1705341401767;
        Mon, 15 Jan 2024 09:56:41 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:41 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 3/6] Dockerfile: fix mysqlclient==2.2.1 build
Date: Mon, 15 Jan 2024 09:56:29 -0800
Message-Id: <a7e77286ca6a88fb432d6349d5aab63b188bddce.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341088.git.tim.orling@konsulko.com>
References: <cover.1705341088.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62149

To build mysqlclient==2.2.1 we need to add default-libmysqlclient-dev
and pkg-config

Drop conflicting libmariadb-dev-compat
Drop python3-mysqldb to allow requirements.txt to override version

Upgrade pip and setuptools before installing from requirements.txt
as newer versions are required to properly build mysqlclient wheel.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index 0f3afc4..72f57d2 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -30,12 +30,12 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
 	git \
 	libfreetype6-dev \
 	libjpeg-dev \
-	libmariadb-dev-compat \
+	default-libmysqlclient-dev \
 	make \
 	netcat-openbsd \
+	pkg-config \
 	python2 \
 	python3-dev \
-	python3-mysqldb \
 	python3-pip \
 	python3-wheel \
 	rpm \
@@ -46,10 +46,11 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 	&& locale-gen en_US.UTF-8 \
 	&& update-locale \
+    && pip3 install pip --upgrade \
+    && pip3 install setuptools --upgrade \
     && pip3 install gunicorn \
-    && pip3 install setuptools \
     && pip3 install -r /requirements.txt \
-    && apt-get purge -y autoconf g++ make python3-dev libjpeg-dev \
+    && apt-get purge -y autoconf g++ make python3-dev pkg-config libjpeg-dev \
 	&& apt-get autoremove -y \
 	&& rm -rf /var/lib/apt/lists/* \
 	&& apt-get clean
-- 
2.34.1


