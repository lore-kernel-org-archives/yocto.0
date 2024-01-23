Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86458C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:16:55 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.4233.1705983409438031136
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:16:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WkJ5nDPu;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1d731314e67so8100035ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983408; x=1706588208; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ea/u4GlbSVQPP9JZ4Vie0xkz5yM2JIhwedV383xElg4=;
        b=WkJ5nDPuWq5ulCBWtrMMQe17zwnMVLXKhy5dbUMXtuXCpphW3bq9Wr4AqkI3UtW5Wp
         4pzwt/yC4DdLQqc5bajuEoqA4TcJxEHYe8Gj35FtTSAhk+r67PhcHWIzkRxatc7NCpBO
         /H9LJHvR4FywizNRW5r1yCC0R6fg4CpUgWH7Gt4kf5sVz2ZwUJJ+n4z6wiYvC1NE/IfK
         VdJbNDUEQgfy+eWKM+e+MuqyzAVftd8pT/+hAJQ0an7M94GKUhT+xlodPLiqffBEYBDW
         qCqD3bR/YmDOmEogzOpcbk48wJOUTJGfW6w7U2BSjqpp2+D12Wte4YUyvtN4UhZvAh5V
         30hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983408; x=1706588208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ea/u4GlbSVQPP9JZ4Vie0xkz5yM2JIhwedV383xElg4=;
        b=sgUczQB0H6v4Jx4JdJNQ0WWya+0WvSgSZ6pChBO5yMOPMZMKfnjXAocZADJAxZNeuH
         lRMhjkNiWZhltF/FyhVD7TPc1A7+HFE91zX4Geq3mInEZQms0JN6IiLF74ziW1ehPM2j
         xf2uZNE2826d2echx43mN2U6oSqJmKKEgQB+E4I83yOW88iRtDgvDpVLg9FgndDQAubo
         rlaOc3T8XESJuuzo8Xv+EfV7F/j99M9HWAEuiRGZgbGMt8vOxHnGx4lBiK1B1EsSARUr
         //tc5lVUAIPAjl+N/mQp3xOYM/1ZNTz8BZgjEoQBOcMazamRw/YtUJdAj8iNs0KC0Zj+
         w5Cg==
X-Gm-Message-State: AOJu0YyLWgaawviTVfGM9dt6oNNz5HifuBoJDGP1opI4sUvFk9CtycJ3
	MXwZLoTEZaL/n6B3GRJA61Y9Uduw+sI3wqoywuV3tU/TVuDiR0sP+4KDTqG4
X-Google-Smtp-Source: AGHT+IFO54WPkMpYm+/P2P566eECoKFYFmpJ6xpP/OG4uB/a5zzPKR+tPgVNDqdyCnI4DqGAtahK+Q==
X-Received: by 2002:a17:902:d4cf:b0:1d7:691e:2704 with SMTP id o15-20020a170902d4cf00b001d7691e2704mr969887plg.35.1705983408429;
        Mon, 22 Jan 2024 20:16:48 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:66cf:30fc:9774:9e5a])
        by smtp.gmail.com with ESMTPSA id iz11-20020a170902ef8b00b001d73126cac1sm4380274plb.173.2024.01.22.20.16.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:16:48 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 3/5] layerindex/views: add classes-recipe,-global
Date: Mon, 22 Jan 2024 20:15:23 -0800
Message-Id: <c99a7beddf5698ff13bcc1cd4937af21eccd7b34.1705982792.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705982792.git.tim.orling@konsulko.com>
References: <cover.1705982792.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:16:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62235

Since commits:
bitbake f33ce7e7
    'BBHandler/cooker: Implement recipe and global classes'
oe-core f5c12800
    'classes: Update classes to match new bitbake class scope functionality'
we now have a lot of the oe-core recipe classes in meta/classes-recipe.

We are also missing any bbclasses in meta/classes-global

[YOCTO #15238]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/views.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 04e39d7..c7a1f09 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -51,7 +51,8 @@ from layerindex.forms import (AdvancedRecipeSearchForm, BulkChangeEditFormSet,
                               LayerMaintainerFormSet, RecipeChangesetForm,
                               PatchDispositionForm, PatchDispositionFormSet,
                               BranchComparisonForm, RecipeDependenciesForm)
-from layerindex.models import (BBAppend, BBClass, Branch, ClassicRecipe,
+from layerindex.models import (BBAppend, BBClass, BBClassGlobal, BBClassRecipe,
+                               Branch, ClassicRecipe,
                                Distro, DynamicBuildDep, IncFile, LayerBranch,
                                LayerDependency, LayerItem, LayerMaintainer,
                                LayerNote, LayerUpdate, Machine, Patch, Recipe,
-- 
2.34.1


