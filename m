Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAD4FC47DA2
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:32 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.90066.1705341810622554064
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V54L4LyP;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6da4a923b1bso4526351b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341810; x=1705946610; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AXK/9s/cGYYQg2qqCTRGGFRnoUFjT76loV+A8iu1ens=;
        b=V54L4LyP9eArrk1mb+ElFSLv403TJjKGqKRNozsgiqHMhfYetlVC/e2smwQHIOxgwS
         I2Q4bCPpLSkOjv1pm7fOhXEj6e4kjonSV4OLApDyTBTF3AExSaJX9YLQcoA1Xf+g8FiT
         /e9wD37OjNkukG/4EyCln9vYAqCUOLOuwisH+hMVKPbmS5xbxR0SbMQtUpa6un4jphvj
         iqNsn9DCaYlAfU8GaXOunM+gjfeEiQkA6SwI9cySz2BIb5gHFIr57Lo0OO/Skdq4x+2S
         MZ94Gccw1tFtSzo12ec0/WqxWZ9IT6HAYj7LVKOQv/3Q/xCdFh6w+DGPR18zQuRFUUiQ
         r6Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341810; x=1705946610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AXK/9s/cGYYQg2qqCTRGGFRnoUFjT76loV+A8iu1ens=;
        b=T3JVEStWP7M9VzbBgiOc5Q5YFX/bsFlcCFxY8VShyQ/g3jC1Gt0gYS4g1fX6dVx26N
         RFKuRt5yVnaH6y6/j1npv908QOG6OWNeMX19YxNrg2GD0ea7hF6NBtagyNJAFaUOS1kv
         xtwRropFi/132vIThwtxgCaDxs4Vs9cJ2oHFCKwbHtMInAfJlrAUYM4NHCL/elyq8le/
         fdAAG+7GMgmupdegiU0dVmtH+1D9DT1DCAY7cSYI6T06akY2LU6k5Qs2fS9xSuCjvESB
         wrOf6/2Hfi69HAL/q9GZ+TSgJsp7JcYoOJLzvaXk2XE8sUZZo58EUFRiu8w5Enudt4zT
         ghfw==
X-Gm-Message-State: AOJu0YyOWCDl5VpFF9IIOvjSj3z2NcSR1wMATr3CKVCSOfoBt6jWhq/k
	L6LFQ6vQlArDmOQ6m+zNe6fYwc+1Gsk=
X-Google-Smtp-Source: AGHT+IEg3RDIenLmIdfX3t+zBmmMcYMfd4njsULdjjDHAazv5zHDKdyPoDKMBcMGnYcHKFfsebGuUQ==
X-Received: by 2002:a62:844d:0:b0:6d9:acc8:a326 with SMTP id k74-20020a62844d000000b006d9acc8a326mr2633516pfd.8.1705341809730;
        Mon, 15 Jan 2024 10:03:29 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:29 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 5/6] rrs_upstream_history: fix get_recipe_pv_without_srcpv
Date: Mon, 15 Jan 2024 10:03:16 -0800
Message-Id: <288b2eeba489d89fdcaf579bd7c8a712eb6711a4.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341467.git.tim.orling@konsulko.com>
References: <cover.1705341467.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62158

The get_recipe_pv_without_srcpv function was renamed to
get_recipe_pv_with_pfx_sfx in:

84794b59 lib/oe/recipeutils.py: accommodate SRCPV being optional and deprecated in version check regex

Try to import/call the old method and fail over to the new method.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/tools/rrs_upstream_history.py | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index 25f4b20..bf32c5d 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -87,8 +87,11 @@ def set_regexes(d):
 
 def get_upstream_info(layerbranch, recipe_data, result):
     from bb.utils import vercmp_string
-    from oe.recipeutils import get_recipe_upstream_version, \
-            get_recipe_pv_without_srcpv
+    from oe.recipeutils import get_recipe_upstream_version
+    try:
+        from oe.recipeutils import get_recipe_pv_without_srcpv
+    except ImportError:
+        from oe.recipeutils import get_recipe_pv_with_pfx_sfx
 
     pn = recipe_data.getVar('PN', True)
 
@@ -109,10 +112,16 @@ def get_upstream_info(layerbranch, recipe_data, result):
         ru.type = ru_info['type']
         ru.date = ru_info['datetime']
 
-        pv, _, _ = get_recipe_pv_without_srcpv(recipe_pv,
-                get_pv_type(recipe_pv))
-        upv, _, _ = get_recipe_pv_without_srcpv(ru_info['version'],
-                get_pv_type(ru_info['version']))
+        try:
+            pv, _, _ = get_recipe_pv_without_srcpv(recipe_pv,
+                       get_pv_type(recipe_pv))
+            upv, _, _ = get_recipe_pv_without_srcpv(ru_info['version'],
+                        get_pv_type(ru_info['version']))
+        except NameError:
+            pv, _, _ = get_recipe_pv_with_pfx_sfx(recipe_pv,
+                       get_pv_type(recipe_pv))
+            upv, _, _ = get_recipe_pv_with_pfx_sfx(ru_info['version'],
+                        get_pv_type(ru_info['version']))
 
         if pv and upv:
             cmp_ver = vercmp_string(pv, upv)
-- 
2.34.1


