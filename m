Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89ADDC47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:17:25 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.4260.1705983441272237193
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:17:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZNLJ5M+X;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1d6ff29293dso23422685ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983440; x=1706588240; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3v92YiXzlK026DqoKSXaBDzSqgr6i8vYgmQ8oOtI+w=;
        b=ZNLJ5M+X+7BlFlKNsAOhYEvn6eHRDATxTKk/KPBH5JjZqC5z90iKIQfrz3/exQMagH
         zTvMTHOB7x32NHANxbMQAQP4IIsVbMAFL3GTfdorYCTxcY1YbnOskE2jpHXxvCDc6QYo
         slb1eA30k0NhQTffSN7TYH51xOEv9XAsDdvD07CnIeMUNyZt73A0QVSdUMt0PspkwQ88
         uXeiO17iL0L61q2gXCqCavNb7Wlbs+Cv97ma7CP73fzB9H9H6E3rVGbbtrfr+hdNQ187
         1R9S9GgeOfQmUvebnol81OB1YOztYidNLptAn61HWObsvh6W4Jg+LeeqvN4kuUSVJNx9
         dzwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983440; x=1706588240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H3v92YiXzlK026DqoKSXaBDzSqgr6i8vYgmQ8oOtI+w=;
        b=QCVEIhAQ/XabOFxSu2FOwVOl8XEl9UBp81XVlhl23I59LSvIid+NN68Wj6WPDnFxcG
         mO20DbFYS+dzwvxUcqgRyYHLYl8hTOS8yaSR7yNaznvsravtvVue/kaWIH84z0LSnu0X
         hFhOMlSHHgbCMQo/zqp42oGDPZWfOIub5Pr4a8x2aQSLipIAKvqL7ONxXKHHinEsh4Ii
         u2zdxYC/gZjiRUx570Vf6HWjiIW9pngrJTDSTay0m/m1fLt2KUz47XqJw1Xq6Nx7tRTX
         AHbIiVQEw1ZJqXekF3lJKWFEk3uqFUcI8NmoUmn0ztstgYLWIDACd1aJV+Gnv8dbbuDk
         0K/g==
X-Gm-Message-State: AOJu0YyTMLzBQwCMouUHSVXXDLy408EULOX9A0Zn87OtJmZpMotvbmUS
	RrojbmelZ+E8pzSB8Bwia5Nv+MkVy6+3U7PYb0o9Rd0Qd1+dqOMGAyojWRHu
X-Google-Smtp-Source: AGHT+IFIPG4btZ+fuuG6MGpnHLALH95uXizPnfC+c46qFm63fvyyrvv3dS4VIkbHIdCOSDy79y8MPw==
X-Received: by 2002:a17:902:6943:b0:1d4:4467:97dc with SMTP id k3-20020a170902694300b001d4446797dcmr2905939plt.6.1705983440342;
        Mon, 22 Jan 2024 20:17:20 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id iz11-20020a170902ef8b00b001d73126cac1sm4380274plb.173.2024.01.22.20.17.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:17:20 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 5/5] layerindex/update_layer.py: enable classes-global,-recipe
Date: Mon, 22 Jan 2024 20:15:27 -0800
Message-Id: <ac0ef0540a918768728f07b1c64c6637f2fad695.1705982792.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705982792.git.tim.orling@konsulko.com>
References: <cover.1705982792.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:17:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62237

Add support for the new BBClassGlobal and BBClassRecipe
sub-classes.

[YOCTO #15238]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update_layer.py | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index d9bec0c..33c5cfb 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -296,7 +296,10 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import LayerItem, LayerBranch, LayerDependency, Recipe, RecipeFileDependency, Machine, Distro, BBAppend, BBClass, IncFile
+    from layerindex.models import (LayerItem, LayerBranch, LayerDependency,
+                                   Recipe, RecipeFileDependency, Machine,
+                                   Distro, BBAppend, BBClass,
+                                   BBClassGlobal, BBClassRecipe, IncFile)
     from django.db import transaction
 
     logger.setLevel(options.loglevel)
@@ -644,7 +647,12 @@ def main():
                                 update_distro_conf_file(os.path.join(repodir, path), distro, config_data_copy)
                                 distro.save()
                             elif typename == 'bbclass':
-                                bbclass = BBClass()
+                                if '/classes-global/' in path:
+                                    bbclass = BBClassGlobal()
+                                elif '/classes-recipe/' in path:
+                                    bbclass = BBClassRecipe()
+                                else:
+                                    bbclass = BBClass()
                                 bbclass.layerbranch = layerbranch
                                 bbclass.name = filename
                                 bbclass.save()
@@ -765,7 +773,12 @@ def main():
                                 update_distro_conf_file(fullpath, distro, config_data_copy)
                                 distro.save()
                             elif typename == 'bbclass':
-                                bbclass = BBClass()
+                                if '/classes-global/' in fullpath:
+                                    bbclass = BBClassGlobal()
+                                elif '/classes-recipe/' in fullpath:
+                                    bbclass = BBClassRecipe()
+                                else:
+                                    bbclass = BBClass()
                                 bbclass.layerbranch = layerbranch
                                 bbclass.name = filename
                                 bbclass.save()
-- 
2.34.1


