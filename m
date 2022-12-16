Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ADFC4332F
	for <webhook@archiver.kernel.org>; Fri, 16 Dec 2022 16:43:15 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.18014.1671208995132770459
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 08:43:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PNcRZNhp;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id x2so2817374plb.13
        for <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 08:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bbM430MS0yHjCjJ2m7+ui/RSmHawPTXHRNVMsVhvivU=;
        b=PNcRZNhpGLfKpqut7wVrWe+AT4JUFZJqczhzSl7qvHFeVh1JLMXMklLJDp9joe/Qpq
         ffe3VhIk3gIaNi7J56inCkzLOkLxqR2LERhzrJMmzgIniFk/t7E9VoWweYs4ZqMhf+C2
         kiU4QUrVqB2X8nMpGtsoAZ5P2TNEQTeMJgfAB6wTstdXyxGc0xNC4rBXddufjJCtiuy/
         33A0zihffGVsEM0zpMVo+vO4Hq4MsREP0K74jheE48grR60NAs63TXOnThEGYqqH4YUn
         jeO500J3PeWkJN2oNt5FRYI+QhJBfk1u7v4N98OrvmRJBpqBUPMIsr96UY+4kzK+0vIJ
         ltEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bbM430MS0yHjCjJ2m7+ui/RSmHawPTXHRNVMsVhvivU=;
        b=maSo50PRvaIRrk3K8k3p2gcXAM33HYtY86Vi5aF04XZZvsVoYVatKsfBvavhGouSvh
         DQXzTplBo5QBD9xoCFCiWKwtvZmgXmENRSoTk/cSYf0B1TEy5hsJroMQkSDPywg4wXRH
         RapiqB/x0AIDtP4h3luZFG3TDcOpcvXlFLiHO20mr/wjIKOHTDFLLmWbZHRi0+YNcNDh
         JsHqFvPBqpl/2HVNE/1cUsqS5LFZvpj/R7ohjtQRv25yCi6mNsQ3rvpIvuIV67Jm8YZK
         +EZvhGglWTbtGL01GGPDMYh6oz5uU1vJ9f5FjM0ZJ7XnjYc0DxlY4GU2AliAATXdIQDX
         qkDQ==
X-Gm-Message-State: ANoB5pn+VmrFvC7ie6vr1TvBeKBa2MurMXwIdWreNBBAALalfK7yM/Ln
	GhWKTMb+XicwTeFQEZTEb7AC4TRUb6c=
X-Google-Smtp-Source: AA0mqf76K+Eg/D8k71RPzeSmnBqGr7QK+EUK7QcaAL9kCBsblYdFGQ7GoxDB4cahqJ6IFVT/KgjfsQ==
X-Received: by 2002:a17:902:f292:b0:190:d283:7faf with SMTP id k18-20020a170902f29200b00190d2837fafmr13157610plc.13.1671208994170;
        Fri, 16 Dec 2022 08:43:14 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:6325:4753:57d5:805f])
        by smtp.gmail.com with ESMTPSA id v1-20020a1709029a0100b001897e2fd65dsm1874588plp.9.2022.12.16.08.43.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 08:43:13 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 2/6] utils.py: Use get_layer_var() to get BBFILE_COLLECTIONS
Date: Fri, 16 Dec 2022 08:42:51 -0800
Message-Id: <3743999127b48ee332fdbf3ed25cc3bdd76dfa74.1671208436.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671208436.git.tim.orling@konsulko.com>
References: <cover.1671208436.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Dec 2022 16:43:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58825

From: Robert Yang <liezhi.yang@windriver.com>

The commit 38e6288c7dad579518b0de2b6664f23be58889b6 has added oe-core to
BBLAYERS by default, and then there will be multiple BBFILE_COLLECTIONS which
causes update.py failure to update layers (most of the dependencies or
recommends are missing), use get_layer_var() to get BBFILE_COLLECTIONS to fix
the problem since it can ignore the extra oe-core from BBFILE_COLLECTIONS.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Fix minor typos. Minor rewording.
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index efd18e4..ed7fb47 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -188,7 +188,7 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
             logger.warn('Either set REMOVE_LAYER_DEPENDENCIES to remove them from the database, or fix conf/layer.conf')
 
 def set_layerbranch_collection_version(layerbranch, config_data, logger=None):
-    layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
+    layerbranch.collection = get_layer_var(config_data, 'BBFILE_COLLECTIONS', logger)
     ver_str = "LAYERVERSION_"
     if layerbranch.collection:
         layerbranch.collection = layerbranch.collection.strip()
-- 
2.34.1


