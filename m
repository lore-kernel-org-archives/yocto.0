Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6800BC47081
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web09.20666.1649617741571034262
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:09:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lWnT7UPX;
 spf=pass (domain: gmail.com, ip: 209.85.215.174,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id q19so12319358pgm.6
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zVM07lhquWmRCr5i9bpefNnS+WKtFfYejTKV7Iz6XE8=;
        b=lWnT7UPXKETj6Xqf4CFwgKiurvuNM8+QYlye48HKHnHzmsZ1C3aG3DE3fB3ya/rBBn
         MCZN9p9NfooNd3oRXH3ceF81a1KLbSOYusKt4xesMUOet4pLo3+NPXonvHFhHLh6K8ly
         K46D7eZMsDuHLcFc6uXWETMkUnBxi4j3Ltmf9hdpXTZ99LedSwmKNaDtCqmX70n99SrO
         QTvcxUcPE9OqmiU1vARTprjZKzLbm2y58a6fQaIwNjqyjrVig058Wdur2H4SWwbs4fya
         E9Moun+jE20wBYf9C3F6yS1ocw31mDiKOGbNKTABlfSRO+KljHecQR+YAYNgFZ3rXbW9
         6ZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zVM07lhquWmRCr5i9bpefNnS+WKtFfYejTKV7Iz6XE8=;
        b=p2kcqf8PqHBfufhQ/YsPVSP0schV2G6u0susWOrRneqpFQPXwzxEzjiuUz+iqHxDue
         eZanzgCZoTh//x/iFC/v/yxXISZ+khpcMfJj1VHcwa1ic6wdtajVi3wZf/1bhnFb5Hy8
         JzVu17k5EWanHMJKqF6DjRYtoQMnbPzinor2nWgYxjNNdAY4LAphv6X31I3jdU2B1dNn
         9WwIIeduB+ECsE4/QwEdWMAfn5dRD156vMFCQpH5gtMf/x6Z59CZiWxj+4z0a/rOz6j+
         DmYa/mQU3/2gr21uttir1X9tl0+o9U7AzA3uO4z9vJa8Tm2cyF5KwcYVYTkuAnIuk2FM
         G9fA==
X-Gm-Message-State: AOAM532HiK+ZV81jCTKOOer2DXNomAgb6yc2lO0nkAO8uWniQthaVkqH
	RCjh/Y/547Kz21yihh6kvMXezIpOzAM=
X-Google-Smtp-Source: 
 ABdhPJywynePTQgj509a0TxgMg26+fC+58pdzM+MuV00Q7QjRH/qvHFMXygAXAxPnpjA6fZ9Azg7uw==
X-Received: by 2002:a63:4625:0:b0:39d:4a92:804f with SMTP id
 t37-20020a634625000000b0039d4a92804fmr2272181pga.258.1649617740812;
        Sun, 10 Apr 2022 12:09:00 -0700 (PDT)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:48cd:8d9b:66c9:7179])
        by smtp.gmail.com with ESMTPSA id
 f16-20020a056a00239000b004fa7103e13csm34001213pfc.41.2022.04.10.12.09.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 12:09:00 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex][PATCH 3/4] recipe{desc,parse}.py:
 BB_ENV_PASSTHROUGH_ADDITIONS
Date: Sun, 10 Apr 2022 12:08:41 -0700
Message-Id: 
 <271107f0247da1ba777cde3347f560d3627e1856.1649617288.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649617288.git.tim.orling@konsulko.com>
References: <cover.1649617288.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56713

ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
ERROR: Variable BB_ENV_EXTRAWHITE from the shell environment has been renamed to BB_ENV_PASSTHROUGH_ADDITIONS
ERROR: Exiting to allow enviroment variables to be corrected

Replace BB_ENV_EXTRAWHITE with new variable BB_ENV_PASSTHROUGH_ADDITIONS

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/recipedesc.py  | 2 +-
 layerindex/recipeparse.py | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
index ee7f2fe..7ed1bae 100644
--- a/layerindex/recipedesc.py
+++ b/layerindex/recipedesc.py
@@ -63,7 +63,7 @@ def main():
             sys.exit(1)
 
     # Skip sanity checks
-    os.environ['BB_ENV_EXTRAWHITE'] = 'DISABLE_SANITY_CHECKS'
+    os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] = 'DISABLE_SANITY_CHECKS'
     os.environ['DISABLE_SANITY_CHECKS'] = '1'
 
     sys.path.extend([bitbakepath + '/lib'])
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index c918677..d93d27e 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -36,7 +36,7 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
         utils.checkout_repo(bitbakepath, bitbake_ref, logger=logger)
 
     # Skip sanity checks
-    os.environ['BB_ENV_EXTRAWHITE'] = 'DISABLE_SANITY_CHECKS'
+    os.environ['BB_ENV_PASSTHROUGH_ADDITIONS'] = 'DISABLE_SANITY_CHECKS'
     os.environ['DISABLE_SANITY_CHECKS'] = '1'
 
     fetchdir = settings.LAYER_FETCH_DIR
-- 
2.30.2


