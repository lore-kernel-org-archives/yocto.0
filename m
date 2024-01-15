Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D90C47258
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 17:56:42 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.89705.1705341399690264597
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 09:56:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dyMzfROO;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6dad22e13dcso5488969b3a.3
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 09:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341399; x=1705946199; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LssExPjnJeSIUbBmgIQy2Yh1hS2ido5qZdpc7MmHXcE=;
        b=dyMzfROO7ZPar4AMLM2f2bYGJL+hA9NewzDl0s29tgeeKQ08PRX0q3RhPO9bjeExLB
         ra2qIhgJtbwqQMq4aMjKW3/3h7PwEIJFW4zIsDEjhZnULXnKXE9C6A9ELerEiNqKbc8I
         PyrNzDduFe0Vv2afE5t7onQhtuRGzqZxRkY79JADQlKjv2/2EfvLh3BvEub0MLgK289i
         1tO/Gp8UTCtXUCwKlUPOIGK6btpujPuOEpeyDqGChVqVtEuAopceGOL/a1lcWCq01sdt
         a4We3sNHrLR7slgt4Lchordd/XmJhk9+ZkGbyf5TcTOdVCJQpYs/y12NVUOWTnZ9v8kT
         1z5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341399; x=1705946199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LssExPjnJeSIUbBmgIQy2Yh1hS2ido5qZdpc7MmHXcE=;
        b=v7p5ZT7o6/gfQffqq5XP5ciBaRpXr+RM9x7TOPdGdOacPs1CAaucLOOrv6oa3dWAEv
         B0Kktd89pB643UsB79uj1MaSNbOiCs00hjN15Rz4GNoFrugxtmorkeaaB1jIt9F42TXY
         Uvd5Mh+66CXkcOqDmTz3DuPQGh9ja6MCWs6/pDEL8rQXngn9HbKCxMk5n8bvbZBpHIaG
         e9aoGwACHZ4DIlVwSaqNJsK3AucxA5UzVRbTQrzIyY08IpW4DdSq8A6tmlAkjwENbgni
         GSLf46aXOLXz9ArFBtx26YoGuLXGQf4u/7T5kIrnUJO+iED0h751prZDAYJhKC+uNaaP
         U89A==
X-Gm-Message-State: AOJu0YwB+mdcQb1kZ9c3E1fW8OYB3aY1Gl3Fxa+M+d2jVhz6qOEBaxwI
	bA5WJTaGmZcxJriOgCFGaOeE/x/hoI4=
X-Google-Smtp-Source: AGHT+IHBIllJDq4rba8bpyEJsYeKCA8LUQOYkLWKQNDzAYwq37vBiNW1wEbThBFvBtKjvFZGjlephw==
X-Received: by 2002:a05:6a20:ce4d:b0:19a:8556:8caa with SMTP id id13-20020a056a20ce4d00b0019a85568caamr3153653pzb.13.1705341398783;
        Mon, 15 Jan 2024 09:56:38 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id h12-20020a170902f7cc00b001d59432a29csm6282455plw.282.2024.01.15.09.56.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 09:56:38 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 1/6] dockersetup: use .zst not .zstd
Date: Mon, 15 Jan 2024 09:56:27 -0800
Message-Id: <98ae2206b5afa5df0d23d4da9cd49fdf84faae55.1705341088.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341088.git.tim.orling@konsulko.com>
References: <cover.1705341088.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 17:56:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62147

The default file extension for zstd compression is .zst

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 dockersetup.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/dockersetup.py b/dockersetup.py
index 56458d3..21be0da 100755
--- a/dockersetup.py
+++ b/dockersetup.py
@@ -54,7 +54,7 @@ def get_args():
     parser.add_argument('-s', '--https-proxy', type=str, help='https proxy in the format http://<myproxy:port>', default=default_https_proxy, required=False)
     parser.add_argument('-S', '--socks-proxy', type=str, help='socks proxy in the format socks://myproxy:port>', default=default_socks_proxy, required=False)
     parser.add_argument('-N', '--no-proxy', type=str, help='Comma-separated list of hosts that should not be connected to via the proxy', default=default_no_proxy, required=False)
-    parser.add_argument('-d', '--databasefile', type=str, help='Location of your database file to import. Must be a .sql, .sql.gz or .sql.zstd file.', required=False)
+    parser.add_argument('-d', '--databasefile', type=str, help='Location of your database file to import. Must be a .sql, .sql.gz or .sql.zst file.', required=False)
     parser.add_argument('-e', '--email-host', type=str, help='Email host for sending messages (optionally with :port if not 25)', required=False)
     parser.add_argument('--email-user', type=str, help='User name to use when connecting to email host', required=False)
     parser.add_argument('--email-password', type=str, help='Password to use when connecting to email host', required=False)
@@ -808,7 +808,7 @@ if not args.update:
     # Import the user's supplied data
     if args.databasefile:
         filename, file_extension = os.path.splitext(args.databasefile)
-        if file_extension == ".zstd":
+        if file_extension == ".zst":
             return_code = subprocess.call("zstd -t %s > /dev/null 2>&1" % quote(args.databasefile), shell=True)
             if return_code == 0:
                 catcmd = 'zstdcat'
-- 
2.34.1


