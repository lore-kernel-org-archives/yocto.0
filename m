Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33593C433F5
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:16 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
 [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web09.3759.1642139715490146862
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Omyob99I;
 spf=pass (domain: gmail.com, ip: 209.85.210.169,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id 128so1871477pfe.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=l8ysniZplmLc+XEua/PM0VuSFHMFchtEer+ZRU61PNU=;
        b=Omyob99IB1+GRV+mdFDpKocrD3G8fmA99Fr1LAu8mQhp/9mj04uVs+F8yRsVfzig/N
         6sDRJDSrokIvaLRRsEe6zBtivIsrEcWJTlYlo0e3CiNYAU64xrmQk/lIAZTFhTVmAlPD
         m/8sy4KEiwgN2vTKL+dQqWX3H3x9SbjlxY9BYqU2MuSOOAdsRG8ZXm8JYoChGoPlSag+
         Bxxnig/gX8Nv04L/sY9WB2TTZ9Gf2GmEX/NHy5meLZXHOHTEUbqQdpSSMOc5idfXuE4H
         enGWQGxuZ/FCwxJdPj3AOA541xOp9mwkZjkfIWvMyt452bOH2TNOG8WPiYiPBorIQRsv
         V31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l8ysniZplmLc+XEua/PM0VuSFHMFchtEer+ZRU61PNU=;
        b=xPVMjRQ9ZR1mcXYfeQJSTClleXacEQMBDorH2wsC9Goy5rRxJ6dHPdu1sHC8maZby5
         Xy2AurhUSK1D8QyTjN0nQIUk4Q9Bu8YjRC938kcpO1MYjzuu7GA7sL40uDaymHgsiaLI
         Z5apTaRQ3EAYm4A7BeE5iTb+hwGIZv1Vx6ZFf9f90gPwslKDr8IXLDDCcbhbrcEj/nTF
         K1xBGhI8Us4h3wUpsZ0EAUY3W6LOYYo/dRD9hcROPjHIj332HNGAmcccO7flAtVs8nfS
         omW+SG8ZHLfOnvqkRIvaBkmnYslTq4X+9Mhre6RS4zLxDD6Hfp7TezdBi0/qx2gux2D3
         WQ9g==
X-Gm-Message-State: AOAM533uOtQoZuOt+g1UybgqGNFp805vfA5EXEFYD4K1YkN4LYDkmCoV
	D+7Ezt8a+ozf8PK/bHYqF/ztozhMr0pwnQ==
X-Google-Smtp-Source: 
 ABdhPJyafuR4A0hh5W0wcqhHuBPVrYT5zmgIo3cl1242v299LbqvM5q6C+qdCOqk8OY1UuxpIzkSJw==
X-Received: by 2002:a63:84c2:: with SMTP id
 k185mr5411747pgd.544.1642139714738;
        Thu, 13 Jan 2022 21:55:14 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:14 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 04/18] layerindex/*: make all shebangs python3
Date: Thu, 13 Jan 2022 21:54:27 -0800
Message-Id: 
 <4e857f68f43bca721a5f8f3e3dcd49cb32434c55.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55855

Several scripts still had /usr/bin/env python

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/bulkchange.py                  | 2 +-
 layerindex/recipedesc.py                  | 2 +-
 layerindex/tools/import_classic_wiki.py   | 2 +-
 layerindex/tools/import_wiki_layers.py    | 2 +-
 layerindex/tools/site_name.py             | 2 +-
 layerindex/tools/update_classic_status.py | 2 +-
 layerindex/update_layer.py                | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index 6382053..0ec4058 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # layerindex-web - bulk change implementation
 #
diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
index be47f6e..ee7f2fe 100644
--- a/layerindex/recipedesc.py
+++ b/layerindex/recipedesc.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Test script
 #
diff --git a/layerindex/tools/import_classic_wiki.py b/layerindex/tools/import_classic_wiki.py
index aa33b7a..bd7ab9a 100755
--- a/layerindex/tools/import_classic_wiki.py
+++ b/layerindex/tools/import_classic_wiki.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Import migration info from OE-Classic recipes wiki page into OE
 # layer index database
diff --git a/layerindex/tools/import_wiki_layers.py b/layerindex/tools/import_wiki_layers.py
index 707d90e..2c82411 100755
--- a/layerindex/tools/import_wiki_layers.py
+++ b/layerindex/tools/import_wiki_layers.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Import layer index wiki page into database
 #
diff --git a/layerindex/tools/site_name.py b/layerindex/tools/site_name.py
index e1cff02..0f2782d 100755
--- a/layerindex/tools/site_name.py
+++ b/layerindex/tools/site_name.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Updates site name in Django database
 #
diff --git a/layerindex/tools/update_classic_status.py b/layerindex/tools/update_classic_status.py
index 0bcf2e7..aa5d2ef 100755
--- a/layerindex/tools/update_classic_status.py
+++ b/layerindex/tools/update_classic_status.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Update cover info for OE-Classic / other distro recipes in OE layer index database
 #
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index f3f5e17..e8b210e 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Update layer index database for a single layer
 #
-- 
2.30.2


