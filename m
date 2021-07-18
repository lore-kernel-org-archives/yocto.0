Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.20850.1626649660532641823
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:07:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MyhpzVr7;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id x16so8625823plg.3
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h6xXwVAO/AuWsILrGHvpc1IbKbGatgi+xVv5WwFQ26U=;
        b=MyhpzVr7R0StHz10VshBz95F41xQahKPjFaAiJgsj/IN1neemXxnpe5grBppm8O67l
         COwQqlN/tS1LMd9//1JLnbIs9qFXZYF81MqI/7a+xe8vmOW61JUopvAT/t9watpIGurw
         HFbnUyH3x74LJIleqI/8kFd5d5jpW06/HgnCfIM/VLTS01M1Wj8HWiGPNqbDA2jkCU36
         VSK6RD15JFVfYdjSeaMAHdXAtawJdHZbrrbIomYoze+3RRo8Hhcwk2S4EgaY6vXeYZO4
         bTUzgB/ss24LkRIMjZis6NVXUIr0QskXzx1IGXYn4QPFBhko7xil4+Vc2A5Vorz2n4RC
         KrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h6xXwVAO/AuWsILrGHvpc1IbKbGatgi+xVv5WwFQ26U=;
        b=DtINAE4ifcgEGBeziszprEehGziR75LknjocEwuQSIYyWsE9Rdt77j9Zc6q5vv7VjV
         ow0VF+of1hAfVJsi0QZ3NCvLNp7UGpS+bpVvfDOdZXTi67943nrTJ7Cv41HXMNPpToHy
         gq6HsK7POFs0QHGfSnbVqoywO3r43aK9aIqb6JsRb31p1ivbQSXK+uFBhJTeiiit/uMM
         Qg7F6j+U1leQcNbHhEPkGuTaq9SWSxNP4XC0S6EsgG//ji1qUnVrURvKGa0pImELCz58
         angwUMrBrExN9lv2IZ9wOnc5TcpAV4/4TAtWnxwLE14XtletgPO4jQUgcMpKX+HePFTh
         jb5Q==
X-Gm-Message-State: AOAM531euDanI1a13BEzKgN6Eyt4ZztcEWB7TUbQNbmsXoZnBKT9Llag
	iFz8JRurHiLbM+ZEnvXo8ccARmUzsctM1A==
X-Google-Smtp-Source: ABdhPJyuGWvPmHzwOPljxRSS8Jbj+X/gdUk4J4DglGasOh1nlpHwtLRC5EeK+FK6VJrBAf9Hdov4cg==
X-Received: by 2002:a17:90a:a27:: with SMTP id o36mr27703471pjo.32.1626649659862;
        Sun, 18 Jul 2021 16:07:39 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:07:39 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 05/15] layerindex/*: make all shebangs python3
Date: Sun, 18 Jul 2021 16:07:10 -0700
Message-Id: <bc3f9a0da5ab1c241464138dc25a2f364ab516d6.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Several scripts still had /usr/bin/env python

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
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
index 42f99be..f51884d 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -1,4 +1,4 @@
-#!/usr/bin/env python
+#!/usr/bin/env python3
 
 # Update layer index database for a single layer
 #
-- 
2.32.0

