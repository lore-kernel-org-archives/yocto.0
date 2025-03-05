Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 404EDC19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 14:38:44 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.14554.1741185517712878246
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 06:38:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Yu6t6pfg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43bcad638efso14481035e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 06:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1741185516; x=1741790316; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=flOfTDkGnI8Plt1jdcvDTSqpITJQPLv/luOukxNYjSI=;
        b=Yu6t6pfgXKXPovDEyibGT3T8d0wUtRYbFPxTsmSNJYRakNTFzfMiOTd603euthNDMI
         uSoDMMjLlxE/nEe1NU+TeJNin5MSBxDhWWsUrbko5/pJVSXLvlXvmK2s8tolva5KSUmu
         LDukxzZeIvU+XHB/N/6eUlCC53Ql4rGkOYrtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741185516; x=1741790316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=flOfTDkGnI8Plt1jdcvDTSqpITJQPLv/luOukxNYjSI=;
        b=TsRXA7iCx6umtP0KWD48ET7l0D3jlQxhYq9R4hz2cfClBsNHb02P5eM3w7DSHEMPz3
         pMy6x/ZgsWMcgijkVxsu8xnDivkkqdouLm6OVYQBT//XxdrbrugYoJPm6AiM5hawTLp1
         KOFpVhk232Yjgpn5GT6dAcb/sWRL2G9ldwPVm0GrC5qzCz88cOltZQHhxwMBDTiGCYUp
         Pu9NNPi6Q8gPC53IbrAMqyxWJmRpYNbYztNIYnfYx7opgoAzOav4Bp8K1+GnnSdeBtMH
         euXNIScSYR1YEngQpv4ZuMTT0cezc6e2HV6jD0lGDC73jmaJB0zJh40EX5+yXxobLYGN
         26GA==
X-Gm-Message-State: AOJu0Yxtkg/3CYQZe3zIMp29mT1mXqyJnwKR7D4+mwI43Enmxa+GhkHk
	ejRP5jLidvuH33gJaxGtIXYTaEZRlZJohdTYpH5/vyM/pDor/6q/QMZd4pasorSFCM8y0XlNnme
	F
X-Gm-Gg: ASbGncsk5e0rOno95HOhGIzh/PdrCIiCeFFGYuKAcPdg3s0mHzpJmNJzMyQsLdD/yNX
	APEVQTGYuqbXMR8rA8aXkbNsSUF8fV3uIyHkDcY2773N128XcgtOdB91GQ3h2Soec4dFhze7J5G
	guVhT/lCnmATsrmhTyn9iaSnZoQR0EUcF7ZtbrU2kDfE9PhAXyJPAchZ22kydHy4ZO4mCLnh65a
	V51Q3CZpZV0KQol8rQmMqJEYw6I1x0Kx5FqR29t+khB2PvBjqCqNBfZlvpfJ87z+NzcVKFoZSqK
	BBQCkyVQtVV0ad2RPmh/MgLzIlseeNLyvpvZ56QFh71Iofukv9OVho9XD3aSnOFsEtQ/uXbAYg=
	=
X-Google-Smtp-Source: AGHT+IGasHzf8RADx0sR4W4IR9jAv3v7gUYD16HYEwEckmqEkiI2MKiFjtP94LMP4CQe3FeCcnOu7w==
X-Received: by 2002:a05:6000:2703:b0:391:9b2:f48d with SMTP id ffacd0b85a97d-3911f7706fbmr2303167f8f.33.1741185515722;
        Wed, 05 Mar 2025 06:38:35 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:939e:c44d:2366:e8da])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7d69sm21656302f8f.60.2025.03.05.06.38.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 06:38:34 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH 2/2] config.py: Drop *-tc targets from a-quick
Date: Wed,  5 Mar 2025 14:38:32 +0000
Message-ID: <20250305143832.2119244-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250305143832.2119244-1-richard.purdie@linuxfoundation.org>
References: <20250305143832.2119244-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Mar 2025 14:38:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64921

These were mostly skipped for a-quick anyway, simplify the code
to allow easier standalone triggering of the builds.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.py | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/config.py b/config.py
index 429fa763..6f6546f3 100644
--- a/config.py
+++ b/config.py
@@ -74,13 +74,13 @@ repos = {
 }
 
 trigger_builders_wait_shared = [
-    "qemuarm", "qemuarm-alt", "qemuarm-tc",
-    "qemuarm64", "qemuarm64-alt", "qemuarm64-tc",
-    "qemumips", "qemumips-tc",
-    "qemumips64", "qemumips64-tc",
-    "qemuppc", "qemuppc-tc",
-    "qemux86", "qemux86-alt", "qemux86-tc",
-    "qemux86-64", "qemux86-64-alt", "qemux86-64-tc",
+    "qemuarm", "qemuarm-alt",
+    "qemuarm64", "qemuarm64-alt",
+    "qemumips",
+    "qemumips64",
+    "qemuppc",
+    "qemux86", "qemux86-alt",
+    "qemux86-64", "qemux86-64-alt",
     "qemuarm-oecore",
     "qemux86-64-x32", "qemux86-world",
     "multilib",
@@ -109,7 +109,8 @@ trigger_builders_wait_full = trigger_builders_wait_shared + [
     "qemumips-alt", "edgerouter-alt", "qemuppc-alt", "qemux86-world-alt",
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "oe-selftest-centos",
     "qemux86-64-ptest", "qemux86-64-ltp", "qemuarm64-ptest", "qemuarm64-ltp",
-    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt", "qemuarmv5"
+    "meta-intel", "meta-arm", "meta-aws", "meta-agl-core", "meta-virt", "qemuarmv5",
+    "qemuarm-tc", "qemuarm64-tc", "qemumips-tc", "qemumips64-tc", "qemuppc-tc", "qemux86-tc", "qemux86-64-tc"
 ]
 
 trigger_builders_wait_quick_releases = {

