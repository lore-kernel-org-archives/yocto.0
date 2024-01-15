Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03053C47DA6
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:33 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web10.90057.1705341806869364366
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hz36k8Bk;
 spf=pass (domain: gmail.com, ip: 209.85.161.51, mailfrom: ticotimo@gmail.com)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-598d168f253so1742776eaf.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341805; x=1705946605; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PjXg9NKiFSL8Lm1s7gTvlUIdXnp++64MsH4tD0kla1g=;
        b=hz36k8Bk3nR5BYx6KSjy0/b1EivEqtLFWffpbY/5OTgLwSbIzCMInrgJjijdkqWHCe
         Wt6aW/aTApD3QDx5Xl35Kn67Y2zrTWzg3V90xYqPr3L/Y6MgcP44jIBFBAii0SJsaIyr
         rMUIf+3O7n1AkBxHYtSzUBq1hdzMy5R+ruzhxPkFLDVxTBdMMoL83bloyp3Q/IaBvwVD
         PGO+Ty8/3bsuwP+wFXlBwcINgcXH5DJGfnTcMQ6/D99Zg52I1R369AOsfQNHYjyftBoB
         msCwt4nzR1hrgI1oqSdzvCFq0LestnbP4Gsq0SGKm8GCBRIxHx4554BetIeAMRHg71VH
         oqZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341805; x=1705946605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PjXg9NKiFSL8Lm1s7gTvlUIdXnp++64MsH4tD0kla1g=;
        b=kEBUX7Tix/xSqkTx43rl9EqFnW6Ny2LXWp+MmmeBnkp5OFlPFPQaOpTDUJ8HB+vQtf
         6HMT4BYcxfXZjJ4Ap6gSOtUi4f27bHOtSoPotI43Shp/NllE+BYCrN3iS3gZcm1OqwR4
         JMw0Rg3AfirIHRoohqjRFYhrLwv+PapuMHnsvc/sECtNo15n52LgJm7R5uWjvHz1y5Dz
         a9wriGNIz81xljQADkZRIBQ3Wbq7NG7ok541lsduCAT4oRwC5XJgKNXSqArtpmoZUeJj
         1d2PPtVosK6IBAOeiQ6KmwGHMf4uoc9b2kc9lqOjLDdGfI+y4zN3o/cf0Q1zTiUScu2l
         nZUg==
X-Gm-Message-State: AOJu0YyGL17aPvpTLuyJeJDGc26Lb+htNdBTimk1xO9Y7Idlx4EPYh3x
	gJm/Hf+NvIomjJC/khIj7kTAaJvzJEM=
X-Google-Smtp-Source: AGHT+IFg2PxFjf5TYjN+mKR3ccc5R506+60UCjq1v/B12U9UKynBgDsblBUt7bEJhnFn961eCOjHLA==
X-Received: by 2002:a05:6358:60ca:b0:173:8b3:71c2 with SMTP id i10-20020a05635860ca00b0017308b371c2mr8906945rwi.45.1705341805452;
        Mon, 15 Jan 2024 10:03:25 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:25 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 2/6] rrs_maintainer_history: fix syntax
Date: Mon, 15 Jan 2024 10:03:13 -0800
Message-Id: <836eca1d82cdc4d9335e741fc5ef4a6c67dedd69.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341467.git.tim.orling@konsulko.com>
References: <cover.1705341467.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62155

* Fix the link_maintainer.recipesymbol.pn syntax for debug logging

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/tools/rrs_maintainer_history.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/rrs/tools/rrs_maintainer_history.py b/rrs/tools/rrs_maintainer_history.py
index d2dd94a..a6da861 100755
--- a/rrs/tools/rrs_maintainer_history.py
+++ b/rrs/tools/rrs_maintainer_history.py
@@ -136,7 +136,7 @@ def maintainers_inc_history(options, logger, maintplan, layerbranch, repodir, la
                         rm.history = rms
                         rm.save()
                         if link_maintainer:
-                            logger.debug("%s: linked to maintainer for %s" % (recipe.pn, link_maintainer.recipe.pn))
+                            logger.debug("%s: linked to maintainer for %s" % (recipe.pn, link_maintainer.recipesymbol.pn))
                         else:
                             logger.debug("%s: Not found maintainer in commit %s set to 'No maintainer'." % \
                                             (recipe.pn, rms.sha1))
@@ -155,7 +155,7 @@ def maintainers_inc_history(options, logger, maintplan, layerbranch, repodir, la
                     rm.history = rms
                     rm.save()
                     if link_maintainer:
-                        logger.debug("%s: New recipe linked to maintainer for %s" % (recipe.pn, link_maintainer.recipe.pn))
+                        logger.debug("%s: New recipe linked to maintainer for %s" % (recipe.pn, link_maintainer.recipesymbol.pn))
                     else:
                         logger.debug("%s: New recipe not found maintainer set to 'No maintainer'." % \
                                     (recipe.pn))
-- 
2.34.1


