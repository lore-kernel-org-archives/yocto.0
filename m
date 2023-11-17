Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3136DC197A0
	for <webhook@archiver.kernel.org>; Fri, 17 Nov 2023 05:00:11 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web11.5959.1700197207166101536
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Nov 2023 21:00:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iOkC5mNR;
 spf=pass (domain: gmail.com, ip: 209.85.210.44, mailfrom: ticotimo@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6ce2cf67be2so829360a34.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 21:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700197206; x=1700802006; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xyLL9pifvBbqCMKX5JR4tjXzoKUCHplleAOIESqjvgY=;
        b=iOkC5mNRaFFjF9rbB4XhR+xy3KnqyFQEI0LK2wjJUHXClRMw7f/IUd/hMKZsgyrJrA
         Q2/08m47fVFt1hlVArOOo5nQ1alFtQqcmbc/6M4BbgpZ7C7AXO0R8UAh7AGgzutdYxcq
         af1K+yB9tX5gn3dkB9wJKtengcPV6eW2ELBNwZAW6w2tyBuhyjEqq7Eyj+LkCXBxYFsS
         YNpII+hZqcr5fy6UBqDUwbal7ZD8LrwrfpYmVIogI3QcwDUGKqZprX8EgpYzJ8LOCb+7
         Lmd4X9EKO/Tpgu7pZlzlRayLzRB21jOgbURfPSRaDtFnpWpptXihcdGp2FbHekYIt9y+
         2msw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700197206; x=1700802006;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xyLL9pifvBbqCMKX5JR4tjXzoKUCHplleAOIESqjvgY=;
        b=UVBxN/bnvB2fw/BrQWEQrUcvzJHOKF2FvU4R0+qozJijsmWeYvnO0hiA+pbsdP5ao8
         gh28GCHSHWGVsGLGgDbBUjzPV6VCV6XiBTtyhwNCathfHyS+kCxShcIdiiMvzSJQ16Oc
         k22UDNQ5xIxCf6baxeUj686eENp7+pfQ9NMaIvjKDypNmstUM5jyIDR+6aFuQANkabBh
         r07ggBBRkcXuBHSAk+gdb50A4+eOlwYWui7CTpNLgJoK6OFbbUFacSKzTkoO1OFWKamF
         Hr+/ERmTlJhuYa694jNQJd4OASQMS7ibQuLOBgqQB+jrxBSjspyOCM4Zxbu4ebogcbTa
         C7Fw==
X-Gm-Message-State: AOJu0YyKS+Y6OTf+MLq44GbC1ZCez7ZdghQEQ83PS6FbU8WmqZAPY8dR
	ZLi3n77LLDakwcJFr6mXXXYOYSKS5YTSEw==
X-Google-Smtp-Source: AGHT+IHjyBrj3CwMl7Nvh1/LFVhyb0Vc/gCZXXUB11JYD6wvZE4P4ioDvzh5sPfQ0KE1F6NkcZoAKQ==
X-Received: by 2002:a05:6830:446:b0:6ce:2c8e:79f0 with SMTP id d6-20020a056830044600b006ce2c8e79f0mr11638386otc.21.1700197205794;
        Thu, 16 Nov 2023 21:00:05 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:3fa:1e17:52a9:6eff])
        by smtp.gmail.com with ESMTPSA id j24-20020a63e758000000b005742092c211sm547301pgk.64.2023.11.16.21.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 21:00:05 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] layerindex/models.py: fix Inactive-Upstream check
Date: Thu, 16 Nov 2023 20:59:30 -0800
Message-Id: <20231117045929.2824603-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Nov 2023 05:00:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61712

The regex for Upstream-Status had (\w+), but this
does not include hyphen/dash. Explicitly add it to
the pattern.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/models.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/models.py b/layerindex/models.py
index 397425a..676f05f 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -550,7 +550,7 @@ class Source(models.Model):
     def __str__(self):
         return '%s - %s - %s' % (self.recipe.layerbranch, self.recipe.pn, self.url)
 
-patch_status_re = re.compile(r"^[\t ]*(Upstream[-_ ]Status:?)[\t ]*(\w+)([\t ]+.*)?", re.IGNORECASE | re.MULTILINE)
+patch_status_re = re.compile(r"^[\t ]*(Upstream[-_ ]Status:?)[\t ]*([\w\-]+)([\t ]+.*)?", re.IGNORECASE | re.MULTILINE)
 
 class Patch(models.Model):
     PATCH_STATUS_CHOICES = [
-- 
2.34.1


