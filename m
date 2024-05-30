Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B9FC27C43
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 05:11:13 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web11.1009.1717045872768644438
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 22:11:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IT7NbPHu;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3c9b74043b1so232726b6e.1
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 22:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717045871; x=1717650671; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I2SzNzN80BGaI0TfZ9CLgElUUp0iDhIF5sP6n2URd2g=;
        b=IT7NbPHuw+HTWTSC9qc53JPpSLtoMNugF6pfIPuk5jLnFUYYmyUv69owsJT+KsZbAp
         nNIneLkfH8KVr7FWyEaexVq/fajU6N26wn4PdJ8r2/uawi3b868vlJQUFwQUGVoT14Su
         28idZa9I61/pSCHTLuWQ0g6AFp9ShaUnaxWyzZLU/TnxMlMIJD/k4gOuR2yqDG4RIyxP
         Cb8dxTXT7cARPns+B/ZEV7uJfA5yZ2ZP3X1M7+pevmEPIjlmB6ZnbqcMpew4dNuf0rdI
         Wclb5fVJuHbfQ6fi9Pzj+CzQeHaw5aq7VFrC6Pml+etySTVFONvrJzKnwj9blbKIz3K6
         GgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717045871; x=1717650671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I2SzNzN80BGaI0TfZ9CLgElUUp0iDhIF5sP6n2URd2g=;
        b=jK1N1cyRAMl3YSvS0+mKzArllafgwxOunDNbB/IOWcj6hmTvumqzWBhSRNfSSwTU4v
         7m98c80Dfn5B2g0ASGyjJQvygiorqZlzoLngL/PDSMR9wJ6L0LUlC/ZETHqgSlSHP9Vk
         QM3xxVevpBi+u/H0nrBM1NzM/RAezv3qkBHxyY/xCTB8bd0hS9EdC7yozJTlI92udADe
         1UvjupMpHTv3MZWSnAE2A+BBGoIOEnxPKSchAmGpuO8n9H5R8mLmChATJSt5S/4MSSg7
         T1js/73MZI5dNtO7EwrrSqSRHMqKf1VsCFpnwOCmy89/er9dSp3kci4RUlsWZhrL+vIq
         fQtA==
X-Gm-Message-State: AOJu0YxWo6tgy1pKw9vmMEUgHgZINCg9GBgHBKJd+puYgx6ciCa/zQgS
	CC5VtYECj2jQCrPPl1LSZSSJAQtDy3ykGrlVICvUUR+pM+AXBpSML4TZllIUEb0=
X-Google-Smtp-Source: AGHT+IHyKs0hDKb/GUnZ0O0di0AIOMNcDeGXCNUYG1uKya3g4rxfXgjbdhjbebEEmG+SnsWCMp/C2g==
X-Received: by 2002:a05:6870:7e0e:b0:24f:c95b:ad0 with SMTP id 586e51a60fabf-25060db9033mr1539593fac.48.1717045871287;
        Wed, 29 May 2024 22:11:11 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3972])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fcbf5388sm8853029b3a.136.2024.05.29.22.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 22:11:10 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 3/4] gettext: Disable incompatible-pointer-types warning as error on mingw
Date: Wed, 29 May 2024 22:10:59 -0700
Message-ID: <20240530051104.2814410-4-raj.khem@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240530051104.2814410-1-raj.khem@gmail.com>
References: <20240530051104.2814410-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 05:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63236

GCC-14 promoted this warning into error by default but code does not
build cleanly and now this warning becomes a hard error.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-core/gettext/gettext_%.bbappend | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/recipes-core/gettext/gettext_%.bbappend b/recipes-core/gettext/gettext_%.bbappend
index 7bb9a4f..5d2fa33 100644
--- a/recipes-core/gettext/gettext_%.bbappend
+++ b/recipes-core/gettext/gettext_%.bbappend
@@ -1,5 +1,14 @@
 EXTRA_OECONF:append:mingw32 = " --enable-static"
 
+# GCC-14 treats this warning as error which results in
+# build failures on gnulib imported code which is dated in
+# gettext
+# ../../../gettext-0.22.5/gettext-tools/gnulib-lib/localtime.c: In function 'rpl_localtime':
+#../../../gettext-0.22.5/gettext-tools/gnulib-lib/localtime.c:66:24: error: initialization of 'char *' from incompatible pointer type 'char **' [-Wincompatible-pointer-types]
+#   66 |         for (char *s = env; *s != NULL; s++)
+#      |                        ^~~
+CFLAGS:append:mingw32 = "-Wno-error=incompatible-pointer-types"
+
 FILESEXTRAPATHS:prepend:mingw32 := "${THISDIR}/${BPN}:"
 SRC_URI:append:mingw32 = " \
 		"
-- 
2.45.1


