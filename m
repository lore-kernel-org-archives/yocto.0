Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3BDC4332F
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 23:28:19 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.42319.1699658891477494365
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 15:28:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gNBMrThW;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1cc3bb32b5dso22487285ad.3
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 15:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699658890; x=1700263690; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=19om76OuXKDs2OZiR7wrYnI0ZeTSmQB0HA2QpqokElA=;
        b=gNBMrThWD2IteIfwq4oUCdeCNEFQKWpae9eSuJ4udl08uqshXYAytjIH8l5mZcs44l
         jhzUjluuMn0l6ZKqDE1V8zWDWWB56gPEt0bFSI6u67ISdehqI7fkRX3jopmZ/v2wRylX
         IE/we6t5F0wssNczak1P+ARxI2N2GKps7jz8NRsjOx9yQpl90eB4RUS78cjw856AMxqa
         VDAamtWNRdCUHbQQShIc1DrFVi3na7yHrEpFFRulDAhoMc+q5XYFUzqcLfZvSUENIFe5
         KORO+YnWKp1MbhI/TIHE+5Hm+W878bCl9mSxvcTHcS5i7i+Zigphlf1dk9+XGnMCVoLO
         K4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699658890; x=1700263690;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=19om76OuXKDs2OZiR7wrYnI0ZeTSmQB0HA2QpqokElA=;
        b=WvDeGk8j8rHx0TiF2VBRoWiZKrUVHBtHkxAACLpFe3zBudAh7Yn9Zs+3QFikj02yIO
         kOzUpxH4IDXF8Ss6l3y38hwopipC5pZJaFNcz5m5WObWYq8rMcG/TEzty50+OzNthJEn
         8cQzyUzk/uCiXO0PoLyG++nk0c1zQbXlZpTcBTr5msrYgCgbHI0o22zIGiVwxtY7PNEC
         Bqn/uFGKEgXJnKhtZePklW/4Tk75IpciA1gQ5oRvZwWTkMRRled0l2+76yzKPF6zeeIl
         JnIbDeHOPbvn9Oo94aTioTQzGWo8LuFFKNs6yg69NhYsSkKbVctiRG9w80HHVkJmKYt6
         oafQ==
X-Gm-Message-State: AOJu0Yy/BWDdv8vV2Rm+ucbmRDGupzAenhlgKb/cn+p6/yDdgQJYAHwE
	S0pfl0xlW1CrMNPIhzc8gH4/EzMC2VG/JA==
X-Google-Smtp-Source: AGHT+IG1QuQYmLMjBaSyPZIsR6lV3qM6H9tp4JB3RBosi3qqw2Ghs6lUacdyBAJ1LClCt5lfzzU0wA==
X-Received: by 2002:a17:902:aa48:b0:1cc:1dde:8680 with SMTP id c8-20020a170902aa4800b001cc1dde8680mr782523plr.45.1699658890348;
        Fri, 10 Nov 2023 15:28:10 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:3313:4488:79b1:32e])
        by smtp.gmail.com with ESMTPSA id a22-20020a170902b59600b001c9ab91d3d7sm188398pls.37.2023.11.10.15.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 15:28:10 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] update_layer.py: checkout dep layers as well
Date: Fri, 10 Nov 2023 15:27:09 -0800
Message-Id: <20231110232708.339590-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 23:28:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61655

We have never been checking out dependent layers at the same
release/branch. With the introduction of 'addpylib', this
became obvious due to parsing errors.

Ensure that known LayerDependency objects are checked out at
the expected branch/release. Since openembedded-core has already
been handled elsewhere, we skip it.

[YOCTO #15236]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update_layer.py | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index e0ecc94..6d73fad 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -293,7 +293,7 @@ def main():
 
     utils.setup_django()
     import settings
-    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, Distro, BBAppend, BBClass, IncFile
+    from layerindex.models import LayerItem, LayerBranch, LayerDependency, Recipe, RecipeFileDependency, Machine, Distro, BBAppend, BBClass, IncFile
     from django.db import transaction
 
     logger.setLevel(options.loglevel)
@@ -374,10 +374,25 @@ def main():
             layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
             layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
             layerincfiles = IncFile.objects.filter(layerbranch=layerbranch)
+            layerdependencies = LayerDependency.objects.filter(layerbranch=layerbranch)
             if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload or options.initial:
                 # Check out appropriate branch
                 if not options.nocheckout:
                     utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
+                    # Ensure dependent layers are checked out at the same release
+                    for layerdependency in layerdependencies:
+                        logger.debug("layerdependency: %s" % layerdependency)
+                        try:
+                            # bitbake and openembedded-core are handled elsewhere
+                            if layerdependency.dependency == 'openembedded-core':
+                                continue
+                            dep_layer = utils.get_layer(layerdependency.dependency)
+                            dep_layerbranch = dep_layer.get_layerbranch(options.branch)
+                            dep_urldir = dep_layer.get_fetch_dir()
+                            dep_repodir = os.path.join(fetchdir, dep_urldir)
+                            utils.checkout_layer_branch(dep_layerbranch, dep_repodir, logger=logger)
+                        except Exception as e:
+                            logger.warn("Unable to checkout dependent layer %s - %s" % (layerdependency.dependency, str(e)))
 
                 logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
                 try:
-- 
2.34.1


