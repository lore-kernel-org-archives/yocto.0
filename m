Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EF2C35280
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.20908.1649617745151706129
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:09:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bb/gszOE;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id md4so4906958pjb.4
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ztaNX79eXDXJeCygs10U2jXFnpfaK4+J2CnKsfRvMdY=;
        b=Bb/gszOEmlYxNnG+zoYE4vpbDFvEq98FI2gB+HSMO7toKqYmBI8eXiUC+4797C/769
         2JK27oM0VGT36PCs/SJY77DS5sZRpHX+EjlkCaePISxvfwO9ohaJC3/+fIDRrAW57NBl
         e2SCpFX5i7IuKNxhtrn/5ybJHsgZD+4FObfYs9xDhoUtIVTIJ7KXZgqC9u8//9IO7ODT
         LPhQ6K6DmfznSrmB3EArTe9Kx84Cx+d+QNXlresH2NuEdbD7+woC7JzmqvakpHlNE9Q1
         fGGJQZBLHTz4b+JbYddd78jl7vKq4556JCnHGqoideHleuZ9EKSHIEjOaVfsmFXoI92F
         zVWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ztaNX79eXDXJeCygs10U2jXFnpfaK4+J2CnKsfRvMdY=;
        b=RRkomP0RtZyyqjr/Z7e4f5a2z2g+/bwfnf+tLubYGsLow2M0WNj2qhlQIrloquZhDB
         IIedtd6oFirlVUGdsIRW6+Q8MLIUSTS0eIHBptzYaOL0CrP9NlKPHZIgDSyjla6/r5ca
         fIQnU5dvZrM2TOzmrI15GlzrpyThaFqighiemV2ktGRR22rM9/c4LApu6VE9aeGO5ha5
         ZdmEtqlzXQsJgN6fmgptoI7AjDz/XAIDBqC7kFh2R1WSdggMCORDPr3oZOERCqzu1HtI
         B5SX971uY44q0Er4CbYfrCZgWSwMVCT6tNcpdWmjXHby1r0vt8aSc/DyfOlzYY4BmJYt
         h8uA==
X-Gm-Message-State: AOAM532pl3Z2lN3UX8C0E6FYUvODjdxMod9C8vuYTleEdU9JiviwiML9
	xANE5k16KrgDixCiICuQylah7gncmBs=
X-Google-Smtp-Source: 
 ABdhPJwn6Z5ix/gXj+psimB9IGvry7FuINkWuqcagylEVDosBnNa+wVK5PdWDPrX3RVPpqCAFa1j6g==
X-Received: by 2002:a17:90b:3a91:b0:1cb:955d:905c with SMTP id
 om17-20020a17090b3a9100b001cb955d905cmr2837603pjb.164.1649617744334;
        Sun, 10 Apr 2022 12:09:04 -0700 (PDT)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:48cd:8d9b:66c9:7179])
        by smtp.gmail.com with ESMTPSA id
 f16-20020a056a00239000b004fa7103e13csm34001213pfc.41.2022.04.10.12.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 12:09:03 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex][PATCH 4/4] layerindex/utils.py: ignore 'core' in
 BBFILES_COLLECTIONS
Date: Sun, 10 Apr 2022 12:08:42 -0700
Message-Id: 
 <2fe25da55e38e9335037f962893c83d20d7e3752.1649617288.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649617288.git.tim.orling@konsulko.com>
References: <cover.1649617288.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56714

Many layers append BBFILE_COLLECTIONS and therefore have 'core <layer>'

During update.py, this means we are likely not handling the collection we
expect:

WARNING: /opt/workdir/git___git_openembedded_org_meta-openembedded/meta-oe: multiple collections found, handling first one (core) only
BBFILE_COLLECTIONS = "core"

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/utils.py | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 32be16d..497ab99 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -44,7 +44,12 @@ def get_layer_var(config_data, var, logger):
         collection = collection_list[0]
         layerdir = config_data.getVar('LAYERDIR', True)
         if len(collection_list) > 1:
-            logger.warn('%s: multiple collections found, handling first one (%s) only' % (layerdir, collection))
+            if collection_list[0] == 'core':
+                # Many layers append BBFILE_COLLECTIONS and therefore have 'core <layer>'
+                collection = collection_list[1]
+                logger.warn('%s: multiple collections found, ignoring the first one (\'core\') and handling (%s) only' % (layerdir, collection))
+            else:
+                logger.warn('%s: multiple collections found, handling first one (%s) only' % (layerdir, collection))
         if var == 'BBFILE_COLLECTIONS':
             return collection
     value = config_data.getVar('%s_%s' % (var, collection), True)
-- 
2.30.2


