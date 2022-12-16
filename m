Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96825C4167B
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:35 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.17831.1671209007616301379
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HTWliK95;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id a9so2850872pld.7
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qnG4QJ0uVVgIFDLnuXTkgZoHEYKw67KAHMFe/GcSP08=;
        b=HTWliK95DBybTY9WyLTx7XQeUPLU81r88EVgjDBqwaN94kquG5YLLhzzsIHACivX6o
         EySA2h4eAnzy84VgRHT/l5kXYaHD8+9nY/Nc9nZjUofagNhzGEDnynu0EDHo+IBGuv36
         PqaAnYhRya/Mq1qOy0c7BCZwicdRP6U5NdxdmgjxePzMUgR1vNHsN8uZxdaUHq8Cy/Ys
         hSt0CRLIzGCozJaf9ndDr92GcXrLbd+cjAtTpeeSv2gGkPErPMxSASaOTTQ22s+CCa6v
         OryiYDgK+j2+2eEBcZ4BotuIEDDRi6dTH7nYUzTvOjqEK7GBVVvbLhFoWFWNFfvHdjHu
         Vm+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnG4QJ0uVVgIFDLnuXTkgZoHEYKw67KAHMFe/GcSP08=;
        b=gwaA77JEputRyPQes4iLLI3Ieb2cgOyy4QdP6du4dFlbt5+Y9SajPXjmGEyUwkvuoC
         7/yvlAVgR+qx0JNU6e/YoCds3qIIZ2/vKXw+pM3fg3mf2nyLrkGGGjvD9O29gSt7VGeM
         PKAR1ax/osDaSzI1SqJbNn+71voSnXQg2S2YowVyltPP33wPXwahwPUIVOG35TBB0B+y
         FQQCyPPNlz/3T+r+qF2kS6o5xGNuM8m15FQtJyRf5iiQ57J2sUNT5e8/hjXjo02jB+M1
         fJBZefxzFQrPhOs3eKlt1tnRcNGQdiuXtlVkPJ4k8vP3yRJ/hUJGgtxMV0TUdGjIJ3W4
         75bA==
X-Gm-Message-State: ANoB5pnTAJKllaGPzeE3dCc8us4k42PjGu3xt+Cb5d2RXyViyyc/AxZ8
	OVEn+5YQjQZuPQ9DxJtb78jZL7wcCAc=
X-Google-Smtp-Source: AA0mqf7xyTj8h3fd80xWGw9u5/b5PLFwxUGnThcPxj0YPggVMoo+lp21c5Klkri2hDL3VfhElBOSUQ==
X-Received: by 2002:a17:902:e94c:b0:186:af3d:dd5f with SMTP id b12-20020a170902e94c00b00186af3ddd5fmr32679583pll.64.1671209006609;
        Fri, 16 Dec 2022 08:43:26 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:26 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 5/6] Dockerfile: switch to ubuntu:jammy for >python3.8
Date: Fri, 16 Dec 2022 08:42:54 -0800
Message-Id: <807be421fd3c5d5a300e2a9c59b64747bad9d820.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671208436.git.tim.orling@konsulko.com>
References: <cover.1671208436.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58828

From: Michael Halstead <mhalstead@linuxfoundation.org>

ubuntu:jammy provides python 3.10.6 which supports current bitbake.
Dropped unneeded python2 packages.
Moved locale generation high to reduce error messages during image building.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 Dockerfile | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index a6c7ad2..d8c38e1 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -1,6 +1,6 @@
 # See README for how to use this.
 
-FROM debian:buster
+FROM ubuntu:jammy
 LABEL maintainer="Michael Halstead <mhalstead@linuxfoundation.org>"
 
 ENV PYTHONUNBUFFERED=1 \
@@ -17,30 +17,29 @@ ENV PYTHONUNBUFFERED=1 \
 
 COPY requirements.txt /
 RUN DEBIAN_FRONTEND=noninteractive apt-get update \
+    && apt-get install -y locales \
+    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
+        && locale-gen en_US.UTF-8 \
+        && update-locale \
     && apt-get install -y --no-install-recommends \
 	autoconf \
 	g++ \
 	gcc \
 	make \
-	python-pip \
-	python-mysqldb \
-	python-dev \
-	python-pil \
-	python-wheel \
+	python2 \
 	python3-pip \
 	python3-mysqldb \
 	python3-dev \
 	python3-pil \
 	python3-wheel \
-	libz-dev \
+	zlib1g-dev \
 	libfreetype6-dev \
 	libjpeg-dev \
-	libmariadbclient-dev \
-	locales \
+	libmariadb-dev-compat \
 	netcat-openbsd \
 	curl \
 	wget \
-	git-core \
+	git \
 	vim \
 	rpm2cpio \
 	rpm \
@@ -51,7 +50,7 @@ RUN DEBIAN_FRONTEND=noninteractive apt-get update \
     && pip3 install gunicorn \
     && pip3 install setuptools \
     && pip3 install -r /requirements.txt \
-    && apt-get purge -y autoconf g++ make python3-dev libjpeg-dev libmariadbclient-dev \
+    && apt-get purge -y autoconf g++ make python3-dev libjpeg-dev \
 	&& apt-get autoremove -y \
 	&& rm -rf /var/lib/apt/lists/* \
 	&& apt-get clean
-- 
2.34.1


