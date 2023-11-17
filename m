Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DFBC072A2
	for <webhook@archiver.kernel.org>; Fri, 17 Nov 2023 20:12:46 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.5441.1700251965939882246
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Nov 2023 12:12:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=etHQfxZv;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6c4eaa5202aso2394874b3a.1
        for <yocto@lists.yoctoproject.org>; Fri, 17 Nov 2023 12:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700251965; x=1700856765; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2sXfzafuc89qLgsqZy341ATg7QUpNd9/umjVHlBesbQ=;
        b=etHQfxZvVJhJJqrFRUGHx2yqXmmoKvZDGcVp0QE/6g2BKFfuVI8IzcVtQIrw+Do3gV
         x3rdMmCHz6uUnA0b0H3vMYPbAxNCrM5UgAnF7vyWbTJomGyP6t6L/EmEKdNcM4rAxIFp
         po0VwCEvHpUvFZ4KdCEdniEEae3H1gaSlIvyEn10a43gVYQEw3lpkQqQ4X7rUZCvlhUv
         VzrDx214KUptyJqx9krG9mBphzG9gd3pMH8tcICeNSjKJizw0j3G/3RCTuZc5ilsCpgO
         X9lJmt1RT/spYCS/ufNFICVnAXx1C9nTah6UTD9duofmNsb3KE5YmBD6PYVJU8iRdZta
         Xihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700251965; x=1700856765;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2sXfzafuc89qLgsqZy341ATg7QUpNd9/umjVHlBesbQ=;
        b=dqlq6lDih5zmtFKjsKjCmyC6RZ0FjWTv/VdhMlC3ZNJyG6amyH2ppmpRzEVcZPZHkh
         M4GG3Cqmk5mJ21sQKxz+gCYc9swfcZewR6bb/TkA6qUvmMMRRtcGwdAeiz1IWJJ7ffby
         WbW1ownTfCl4AMMz93r1fL/X+zTMZFwBE75LLXeugfnulkqRxceWi9d813gaCSCJ01SP
         tJvae4OJu0XUSOPfv+7Q8UCIIjoVdO4zhi4u3QZIi1LlvV6F+TtrBBPDPWaVrDu5Wtfe
         ujprCM37aFmGbTZXBuQogxf3DkSkNRi0it5GUL9ykuVU3Bo0lpTbL3uMFuAQx5HGvHvh
         qvrg==
X-Gm-Message-State: AOJu0YwzkkWMK1yn5LNOluWmkwBtQTUnm8zjIZE8RHTxmGu0UvM7GPUy
	vGYANg98aXJNDWTsT8MC3yN7dmj623Q6CQ==
X-Google-Smtp-Source: AGHT+IHCtSvcXr3mCj1LaEGRFOf7LHqwhdBvpnfteZ7uEr8BW4uqsypP07N99UgP7yZawQaEpBvvxw==
X-Received: by 2002:aa7:88cd:0:b0:6c6:9c3b:f0c5 with SMTP id k13-20020aa788cd000000b006c69c3bf0c5mr620937pff.24.1700251964911;
        Fri, 17 Nov 2023 12:12:44 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:8558:9692:c091:58bb])
        by smtp.gmail.com with ESMTPSA id z20-20020aa785d4000000b006c6f794e712sm1782015pfn.166.2023.11.17.12.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:12:43 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] update.py: display first unsatisfied LAYERDEPENDS
Date: Fri, 17 Nov 2023 12:12:09 -0800
Message-Id: <20231117201208.678294-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Nov 2023 20:12:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61716

Make errors like this more useful:

ERROR: Issues found on branch nanbield:
    meta-luneos: Failed to add since LAYERDEPENDS is not satisfied
    meta-luneui: Failed to add since LAYERDEPENDS is not satisfied

In this case, meta-luneos depends on meta-luneui, but we cannot create a
'nanbield' layer branch, because meta-luneui LAYERDEPENDS on qt6-layer
collection, which currently has no 'nanbield' branch.

Use next(iter(value['deps'])) to get the first element in the OrderedDict

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 7caaca5..cea085e 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -522,7 +522,7 @@ def main():
                         for layer, value in deps_dict_all.items():
                             logger.warn('%s: LAYERDEPENDS: %s LAYERRECOMMENDS: %s' % (layer.name, value['deps'], value['recs']))
                             if value['deps']:
-                                failed_layers[branch].append('%s: Failed to add since LAYERDEPENDS is not satisfied' % layer.name)
+                                failed_layers[branch].append('%s: Failed to add since LAYERDEPENDS [%s ...] is not satisfied' % (layer.name, next(iter(value['deps'])))
                             else:
                                 # Should never come here
                                 logger.error("Unexpected errors when sorting layers")
-- 
2.34.1


