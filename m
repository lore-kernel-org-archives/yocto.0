Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29AEDC433FE
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 23:45:25 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web12.94.1664495109871019762
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 16:45:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hFbxldfT;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 h8-20020a17090a054800b00205ccbae31eso7398522pjf.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 16:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=i507IeLWaYUPG3xmmnUVdwwTwS3ckaHvK8GFQJmJ9kQ=;
        b=hFbxldfTlqkzyTdwbN8tJ0c5jaBHVRyJrNKUvHP6z659VpkEetB2TUF5715HpVXnWy
         GEh4/W5M0F5mDe8Jhm5GY8yufHgVh90hDrmWM1TuZUzilXvS2XwSLp3KbdWBn8JpG/po
         jcxQIVtHfJCjjcLbAT70sdbkvmRmcVeFNYls7zy18UEVvzCv5BfeVZWE2ba7u904Sjxo
         1pBXFdCjxGMQu6UMV0XqlxNjUVf7gOKPEKj82GKOUDATGj2WoA1GHL2t0DJf1yyT1wwq
         LFkmB01MHOke2tFme4xQlH9zUtcOL5+adf3fpx51RanxMN4jb4ZB1m+f3qHnQ23JfRPq
         IsXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=i507IeLWaYUPG3xmmnUVdwwTwS3ckaHvK8GFQJmJ9kQ=;
        b=7zCJZfb15ycb0JVPPifua9hZQlQ4XRlmG/wOM/hzfqDoBvQYwYcsUJawvvdfgbWorR
         x/wfOFo2FuIN01xptDJjH2zEUoHcu0kubAD4QEpwJmCeHaDzwe0vmjv+2D3D/He2gPOP
         tgY2UxJcx8ie7Z2a8xIsA5np+HnCu3MNaiglSnMdhJNcE/jw0UpI7vvn7ygU/zEBUfOz
         H536UcuVvjG64v+7t4NQ5whuBhfC5mMt1IKnoow9MG4+qobjlWmrimz0gNrZjWwyJdhd
         kPYoLH2cCgIEBYZheUQvtybowhwUhd3tmpTEsu1j19Cg9HIK0V25kK802YT0x6GTg6iU
         OrYg==
X-Gm-Message-State: ACrzQf36yvBBk/oO5xL5EAPxmO5gQmhW2h+tNWtzoafqZkz5TxHNm1Rn
	WcICJO9vYb6oeagUeDWh+Qkx+9ud1Mqm9w==
X-Google-Smtp-Source: 
 AMsMyM5q1rIfaqqOBCPV455ZZseV/8QgT+uX3tttoNp4su3yump0VQ48nryDPrnMX4qFwyYv7GrUMQ==
X-Received: by 2002:a17:90b:4a89:b0:202:d56e:e202 with SMTP id
 lp9-20020a17090b4a8900b00202d56ee202mr6277818pjb.22.1664495109119;
        Thu, 29 Sep 2022 16:45:09 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9181:1cf0::dee7])
        by smtp.gmail.com with ESMTPSA id
 a7-20020aa79707000000b0053e4cec4763sm241886pfg.160.2022.09.29.16.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 16:45:08 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] layers: Add langdale to LAYERSERIES_COMPAT
Date: Thu, 29 Sep 2022 16:45:06 -0700
Message-Id: <20220929234506.3681015-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 23:45:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58224

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index a2661f9..0e28857 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "kirkstone"
+LAYERSERIES_COMPAT_rockchip = "kirkstone langdale"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.37.3


