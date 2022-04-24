Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96992C3A589
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:12 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web09.22418.1650834633958483503
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CJe8c9sr;
 spf=pass (domain: gmail.com, ip: 209.85.215.182,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id t13so11796245pgn.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 24 Apr 2022 14:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZbwkSJUrCllzXWN9HauNQrTsBTii6BE3nhLc3vINlKk=;
        b=CJe8c9sr7CrffAbA6Or7TbQhI6zhKrSqKTrmTCSpMcSci4RLTUq7tqrXX2z8faqzJw
         jgQrRcegjn+Nn8rHcibT0FZHaLBdd3P869dW/SGr9CMemSAuUk9Ew6ThWnUOCBesVPKE
         QXVlSM3itZdT8tG6EVuAYKQqQhJLOZEzsWgtBoR98TAcJ8dFqppPVyPvqzhYT3c8h/HW
         DWfVbfQdXl674y6NqAoAEhob2roBmu714VDKAknWw9ZnVVublST+bK3XfTKMTe1mJP9B
         +mXX4YPoYLx50rcCNbBcemB2JHYfWHFWMCubB11yn17ZL65kUhDAiPU3mysWuZDDBnpO
         b00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZbwkSJUrCllzXWN9HauNQrTsBTii6BE3nhLc3vINlKk=;
        b=sNo+dIZWK2Tf6MFHVNBrqWg5JpoCavMN8Fs5PlrxZz1eMpm6wLv/2X8FfvQagpYS/V
         7IwG6csSrjuMk8N4Vje3Zm1P+Gm/S634D1dW6xqumwoPmSwfuC0hVw8/b3ePgz0j9IxD
         8lsrru9SFHM+w0DffStEc/QBVAA6Fj2ARfBr6S0l41LcxpCCpns3T1b4rzcfugKq8nHY
         ASCZIpE8FiHwMUEOz9gJf+Xwhwfb0t84H5VhhgUlURSbS58U6fvXufledW8fTH8LrD6X
         6wKG+bvRUf0BWAqhfWxXcrwvhNUZt1J7MYlnCIuKJikruV1q4Io8uVjYcSWmwzlAJ9YX
         1jCg==
X-Gm-Message-State: AOAM533HNcm6c1ZIg21TdArAv2S1yl0cH2R6Ftv1EHuSxuTqKaMoW8K3
	wIr4xwBK/Wnph1JZeMNJEdiU9rgy648=
X-Google-Smtp-Source: 
 ABdhPJzQvgi9lcnbQ8Yk0wTR6tu7X2oRFftyxLjkBj03xxEHhHzBrOCr6DXi53PIroh3e0nJg7ipbg==
X-Received: by 2002:a63:6809:0:b0:3aa:93f5:c6f3 with SMTP id
 d9-20020a636809000000b003aa93f5c6f3mr12566946pgc.342.1650834633085;
        Sun, 24 Apr 2022 14:10:33 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:7392:b24f:9023:5aa7])
        by smtp.gmail.com with ESMTPSA id
 y30-20020a056a001c9e00b004fa9246adcbsm9019250pfw.144.2022.04.24.14.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Apr 2022 14:10:32 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex-web][PATCH v2 3/3] layerindex/utils.py: ignore 'core' in
 BBFILES_COLLECTIONS
Date: Sun, 24 Apr 2022 14:10:09 -0700
Message-Id: 
 <5682b26bdd4fb7d99e21b57e52cd92396b90e63f.1650833930.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1650833930.git.tim.orling@konsulko.com>
References: <cover.1650833930.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56858

Many layers append BBFILE_COLLECTIONS and therefore have 'core <layer>'

During update.py, this means we are likely not handling the collection we
expect:

WARNING: /opt/workdir/git___git_openembedded_org_meta-openembedded/meta-oe: multiple collections found, handling first one (core) only
BBFILE_COLLECTIONS = "core"

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
Changes in v2:
  * Use logger.debug instead of warning for the case where 'core' is ignored

 layerindex/utils.py | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 46e109e..414bbe5 100644
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
+                logger.debug('%s: multiple collections found, ignoring the first one (\'core\') and handling (%s) only' % (layerdir, collection))
+            else:
+                logger.warn('%s: multiple collections found, handling first one (%s) only' % (layerdir, collection))
         if var == 'BBFILE_COLLECTIONS':
             return collection
     value = config_data.getVar('%s_%s' % (var, collection), True)
-- 
2.32.0


