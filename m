Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADD1E92FD4
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 02:44:54 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web11.4785.1696560285966240578
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 19:44:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=O4PQ1BZ7;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-690bd59322dso1413790b3a.3
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 19:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696560285; x=1697165085; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRO6kpPWXHHhKJm+zkXoUNReE5BINGr244Q5GT6t364=;
        b=O4PQ1BZ7xTexDQzZgGPzC0jgaivZs5UCINtJHtnmHO2Ky6bMySPGTTIrJk7xoMHARu
         FWmK7rBCdUEhgQOxE0kamsJvYwzWFmE9QH6pO46/bwBAM0eJCI9gFj5jlxmF9xBLwGgE
         0U4DG4lBjq/Xgdo5MLCRmBQQznXpryYu72dlHYDUcSML8e1E382AfDta9AfJ0spPp5G+
         lWQ9Owd9ZKY0hPyo0YwDd6GVaHtXIceAOd4y8UkcW2ej8yrQClCLTr1y+LjHCbzipBqA
         M/DyF7RK49ApwFr3hw4VlImTZOo4XUnkJDhaw4rG3tv3PsLsJSAJWazcbuLx0xqsjfsN
         9dHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696560285; x=1697165085;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRO6kpPWXHHhKJm+zkXoUNReE5BINGr244Q5GT6t364=;
        b=EgtoImm/CMSK6mXqtL1rU1EKISgzuElqhLU82thfuI1KZqUujwfCw80hXIW8ODMFkR
         Ej63X5EHBee0LryP5rogVUCoAgTFgGm/Yi1+MpN+HSY5ciZNDwivKAZuD9rsIAHVgjAJ
         5gENn18oS3hAo+qv5tW6HGVCYHXKtrmRpVOCvX1i1oP70zZYczlpEeduKkQmNztKv6Un
         EqhE0WHwhjpXKxIK0VjJrLGpUlnxDWbgfJBoAs5Ca9BEr4bNgOHkoMr0cUWUbxsSpGc+
         +qiqxeLTUzCkTULRuHSmlO9KbUq7lSeuhGD1rO87jzm+cvBgjZoWR3LjTM/eXePZqR47
         Az7A==
X-Gm-Message-State: AOJu0YzZdYjAOImhIIoh9i7i7zDZFgj4wGGlaZyHuum6CMA+7ZlbQHrD
	6u6zunznaqsX2OMneaSAPqpu+BFnQNs=
X-Google-Smtp-Source: AGHT+IGay3pQMr0NigwKU7A7s7kUVIeV3XpvluHRyP+JcpRh6W8vdU3ZX7u0TRR9gV3zrnXn+WPlgg==
X-Received: by 2002:a05:6a00:2191:b0:68a:4261:ab7f with SMTP id h17-20020a056a00219100b0068a4261ab7fmr7790705pfi.31.1696560285138;
        Thu, 05 Oct 2023 19:44:45 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id fe21-20020a056a002f1500b00690d7da743dsm293303pfb.161.2023.10.05.19.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 19:44:44 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web 2/3] dockersetup.py: databasefile zstd compression
Date: Thu,  5 Oct 2023 19:44:01 -0700
Message-Id: <20231006024422.38381-2-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231006024422.38381-1-tim.orling@konsulko.com>
References: <20231006024422.38381-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 02:44:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61256

zstd compression and decompression are significantly faster than gzip.
zstd is also "splittable" and is streaming/real-time friendly.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 dockersetup.py | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/dockersetup.py b/dockersetup.py
index 6a0ab67..d6e8f33 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -4,6 +4,8 @@
 #
 # Copyright (C) 2018 Intel Corporation
 # Author: Amber Elliot <amber.n.elliot@intel.com>
+# Copyright (C) 2023 Konsulko Group
+# Author: Tim Orling <tim.orling@konsulko.com>
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 #
@@ -52,7 +54,7 @@ def get_args():
     parser.add_argument('-s', '--https-proxy', type=str, help='https proxy in the format http://<myproxy:port>', default=default_https_proxy, required=False)
     parser.add_argument('-S', '--socks-proxy', type=str, help='socks proxy in the format socks://myproxy:port>', default=default_socks_proxy, required=False)
     parser.add_argument('-N', '--no-proxy', type=str, help='Comma-separated list of hosts that should not be connected to via the proxy', default=default_no_proxy, required=False)
-    parser.add_argument('-d', '--databasefile', type=str, help='Location of your database file to import. Must be a .sql or .sql.gz file.', required=False)
+    parser.add_argument('-d', '--databasefile', type=str, help='Location of your database file to import. Must be a .sql, .sql.gz or .sql.zstd file.', required=False)
     parser.add_argument('-e', '--email-host', type=str, help='Email host for sending messages (optionally with :port if not 25)', required=False)
     parser.add_argument('--email-user', type=str, help='User name to use when connecting to email host', required=False)
     parser.add_argument('--email-password', type=str, help='Password to use when connecting to email host', required=False)
@@ -804,9 +806,15 @@ while True:
 if not args.update:
     # Import the user's supplied data
     if args.databasefile:
-        return_code = subprocess.call("gunzip -t %s > /dev/null 2>&1" % quote(args.databasefile), shell=True)
-        if return_code == 0:
-            catcmd = 'zcat'
+        filename, file_extension = os.path.splitext(args.databasefile)
+        if file_extension == ".zstd":
+            return_code = subprocess.call("zstd -t %s > /dev/null 2>&1" % quote(args.databasefile), shell=True)
+            if return_code == 0:
+                catcmd = 'zstdcat'
+        elif file_extension == ".gz":
+            return_code = subprocess.call("gunzip -t %s > /dev/null 2>&1" % quote(args.databasefile), shell=True)
+            if return_code == 0:
+                catcmd = 'zcat'
         else:
             catcmd = 'cat'
         env = os.environ.copy()
-- 
2.34.1


