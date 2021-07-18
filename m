Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.20538.1626649655314995571
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fwNRpYEn;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id b12so14819037pfv.6
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6SaUbca52ixAgU9OBXDYFNUNHTcy9AgGeBo7vKU6ku4=;
        b=fwNRpYEn5BcLmeZxElDUarva7kTzWdyfQyzn1zc/1xlMZiwANX53h37JQTTrkMPwDq
         lO+RyCIuntSowK2DDg+cwui975SV1aEr7q/pOEZCa2smkzbfD99navMsF09q4OCKFEtx
         lYynaehadYjV5VQuQwuDwgv1cg5JghVwFwazpIlmNRL3BIHcAGjxhHIx7z7IE7YspJ80
         HHJNht4ywM56VVNNdAV+1MmLyOVRNxijR64xtnwf8zdaxtAsO8+dcvv0MglKzIdPZbKY
         1i1G9oSgfgTfrfG3tAooCZ7WdE7sF9ta2BrAGFPK+fe3lO7XuB8cso5QhW9Qv9ZHff64
         5snA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6SaUbca52ixAgU9OBXDYFNUNHTcy9AgGeBo7vKU6ku4=;
        b=X/vlefUtQofyLMKnseNdxRLm73y0GDJGbHpkKIBFhohYuJGmM5PgL8wss9BtLot7sC
         6KjYzkwRAQHS5P6Bvc0RcPl0jOKCKcaVSgkiz/KjAoO/LaxGFIJY2Qg60U09D4EgyIyb
         Zo3nQRhbQ48gC95txBFzsfYYkISnlDbwADf5/3EocbhYDK7zOSERvpQt0vBV3IWmu1qJ
         aoIFugOFLoBKpMxaAJzsw3XmwCpP37FuheGN17VZJilUlDqpdOCtwsbeIwlUXTMPvNKa
         5YJHkHfVJJ+cM3KWQqRMHyCeyFFnOkkmuOExaPjhMB5MtZB1jp4aCr1eT/EoPiX28aT2
         ZiHA==
X-Gm-Message-State: AOAM531NJvfMkM90BltvmIAmJhzZiuECKI19vk53KVgO3njMx/eQgFJw
	fUISACmm+QMFsg0zs4ZHoV7cKXc+k7X3zg==
X-Google-Smtp-Source: ABdhPJzxZ9tebpmCdbQb5R4P/+PTY18nakDBdlc/AOQLZatKXT9DK0nFxUJJRmvyNAevRFO1wDPPiA==
X-Received: by 2002:a63:d347:: with SMTP id u7mr22621127pgi.434.1626649654604;
        Sun, 18 Jul 2021 16:07:34 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:34 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 03/15] Dockerfile: cleanup, install python3-wheel
Date: Sun, 18 Jul 2021 16:07:08 -0700
Message-Id: <e500f0c2b497969573931050214baef3765e44e8.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove duplicate python3-pip, etc. lines
Need python3-wheel for bdist_wheel command

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 Dockerfile | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Dockerfile b/Dockerfile
index 8c4c847..f6623fa 100644
--- a/Dockerfile
+++ b/Dockerfile
@@ -24,10 +24,8 @@ RUN apt-get update \
 	python3-pip \
 	python3-mysqldb \
 	python3-dev \
-	python3-pip \
-	python3-mysqldb \
-	python3-dev \
 	python3-pil \
+        python3-wheel \
 	libjpeg-dev \
 	libmariadbclient-dev \
 	locales \
-- 
2.32.0

