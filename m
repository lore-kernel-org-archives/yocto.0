Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB90C61D9B
	for <webhook@archiver.kernel.org>; Wed, 22 Nov 2023 19:08:51 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web11.32816.1700680130404441788
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Nov 2023 11:08:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LAzB0PSN;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6c396ef9a3dso145330b3a.1
        for <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 11:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700680129; x=1701284929; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0w2/7gCO8NpS0HKZPPdZ8FgKMHcmF+MJ+J/IBAWXYBc=;
        b=LAzB0PSNG5farG78ftAa2sR1ekYzo8WJgiqLNoeU63i3g3nKMbqSAKMtNuEv6y04td
         e02plwkINzzHlWHd6w7fpFTSXw/OQQXt3h6sr1tVTYib4IDOWFubJMjyEk9KN57oH63k
         usnIwCFfFHdUzpxQKftbWSzN+JSnaX+uRwzf/ace6Zqq7eHITLm+zFhynnDB18q9GH8Q
         209H6N8Was/zpbLW/ngcTU5ya49liFz4ymIDVfSyvqqlFdry/Q3y/+PMxz2WrUh2IFLI
         tyNg4uf4jWphnTBBh+MFWR2cRLPUYZ6lDh4JlxnSdIciacz39MPdiH+ZWs9MpiM/R1pL
         fy5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700680129; x=1701284929;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0w2/7gCO8NpS0HKZPPdZ8FgKMHcmF+MJ+J/IBAWXYBc=;
        b=UwYQjlcWM638qOO6SCWRFWbOtnlaqzUveIpEPvi+LIwR9VHsHahm+Umd1TeBlWXXlY
         7+V5AdhIf2qKVhk5cmVhBj1ywXcCmYbj4so3PvDxPDLuSuWS/GnUoeUFsL2HQXhsUd/Y
         UTQUjDywm0/kQNDB4aq7XWhzNe/ZnA0fHeHHrZxL+G6W5bB1f683nm0zjugVdA2UqsgN
         iZe1m3Y3JDsBHEZimJIdYYgKvMgPcDm58TfvrcuprTTtof7rUMrVwGVs8qhW3U5iGk6x
         w+OOZg7qG+6+c4pzJXV3ir3bWXCVy+t+L6Tee3DKMSy+ttFLQp6ePkgDEIHDxEoVArZd
         xg3A==
X-Gm-Message-State: AOJu0YyAXSJPOHE+M6moy3Hs8bRbGh5z5+jUZdUtL3mgRYANe5+NQWaX
	gcVG5/GA47AqcIJoxRsZ5gxG9FWGfqGnXQ==
X-Google-Smtp-Source: AGHT+IGGLGzOe1QYjBS7XC6WtBB3CgQkhTsPHSxP/LL7QwCx8WdHfJ8hwN3rVnuXM66BgZW18GphuA==
X-Received: by 2002:a05:6a00:1484:b0:6bb:8982:411c with SMTP id v4-20020a056a00148400b006bb8982411cmr3648272pfu.8.1700680129443;
        Wed, 22 Nov 2023 11:08:49 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0::b328])
        by smtp.gmail.com with ESMTPSA id e21-20020a62aa15000000b006cbb44f9108sm69160pff.170.2023.11.22.11.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 11:08:49 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] utils.py: fix unclosed (
Date: Wed, 22 Nov 2023 11:08:28 -0800
Message-Id: <20231122190827.23641-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 19:08:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61731

File "/opt/layerindex/layerindex/update.py", line 525
  failed_layers[branch].append('%s: Failed to add since LAYERDEPENDS [%s ...] is not
  SyntaxError: '(' was never closed

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index cea085e..f9a216d 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -522,7 +522,7 @@ def main():
                         for layer, value in deps_dict_all.items():
                             logger.warn('%s: LAYERDEPENDS: %s LAYERRECOMMENDS: %s' % (layer.name, value['deps'], value['recs']))
                             if value['deps']:
-                                failed_layers[branch].append('%s: Failed to add since LAYERDEPENDS [%s ...] is not satisfied' % (layer.name, next(iter(value['deps'])))
+                                failed_layers[branch].append('%s: Failed to add since LAYERDEPENDS [%s ...] is not satisfied' % (layer.name, next(iter(value['deps']))))
                             else:
                                 # Should never come here
                                 logger.error("Unexpected errors when sorting layers")
-- 
2.34.1


