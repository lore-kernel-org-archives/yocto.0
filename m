Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1576C47258
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:32 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web10.90064.1705341809245631495
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IPTuSNEf;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6db82a57c50so651126b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341808; x=1705946608; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7yWiaaX+OhGqfWmdz0ecJW1uP+ldd2UxoB4tzNiZE4=;
        b=IPTuSNEfXcrJb1EwzSx7Tq5pFWLAtfVoKJnIramREBmFcO4qPQKn4nKvLyK7UEILmp
         QAU3Fk5AQUYOSswRbghvfc4Ok4qtsFm3EVWhGvizyGxoZ1PsPvmCS/6jXjHc66z42fDX
         Shnhl4eHL/Kbrjync5Zyki47xq7aNaV9VVqzOsOfgZp/Gu6Ad5QwXbXCYwU0bHkJjf4L
         bhkBXdHv5tqrLFyumNTQ2FXbXvRjzrTxeoY1WswRjuO3NRIlhSnJwk1vNqL0EpAm+ju7
         B9S4HqNBm4pSfvIjF1Ez5/G0yaP6g6k12yh9JZ7BJSEHiWQvbPvKxKpMDhbm1HDuBMD6
         qNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341808; x=1705946608;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u7yWiaaX+OhGqfWmdz0ecJW1uP+ldd2UxoB4tzNiZE4=;
        b=PVtd7aR8aXXkCYiIEUfDmBjxFho4QIm/NBK8FRU9r/WqgRMsGQWqzdcdzhQ2eTyGSY
         YuulnwaiRxdiLf9zcP0BXZoJiQy5a6zmm9ReX8CHvVBm/y+WYrqFMT2HgMujvPv+gE/Z
         ucoraM9cbeVPVpvvZv3ADkcGW1f9hPU4riyWCpaORFnhegyuv3ETv6vi92DyleiTeUGV
         BCcxMdZG0f3GEuxAkRRsbb3QXGPL2dktVlmHJlHbF8vGUmgCwVo52AdNfq/XRBxCLBsE
         c4qCGkb98lgYn0qVUqxUK/Su/kdrms19oJlUCoC0ijU7vQcIlhZB5Z9Mr6QEmQBWID3h
         AqDQ==
X-Gm-Message-State: AOJu0YznTNmhLHfm6TE6FTBBR5RXAFvuYxu/J1XXKj/rzTYfICaSLQK6
	UueE2SzlGkHGT5kdHPcX6T7s19ZbeRw=
X-Google-Smtp-Source: AGHT+IHCoF5Mr7qt1AN+HKY+QaG99tfZM1SiahWpHnT3wyWijcrgf/Hgv6NVPQR3/qxILFlxhS+9EQ==
X-Received: by 2002:a05:6a20:d80e:b0:19a:f083:1824 with SMTP id iv14-20020a056a20d80e00b0019af0831824mr1161374pzb.25.1705341808353;
        Mon, 15 Jan 2024 10:03:28 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:28 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 4/6] rrs_upstream_history: allow skip update_data
Date: Mon, 15 Jan 2024 10:03:15 -0800
Message-Id: <eeefc7c341e863ee5f571648baea7b7083d431ee.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341467.git.tim.orling@konsulko.com>
References: <cover.1705341467.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62157

Fixes:
Traceback (most recent call last):
  File "/opt/layerindex/./rrs/tools/rrs_upstream_history.py", line 210, in <module>
    set_regexes(recipe_data)
  File "/opt/layerindex/./rrs/tools/rrs_upstream_history.py", line 73, in set_regexes
    bb.data.update_data(localdata)
AttributeError: module 'bb.data' has no attribute 'update_data'

bb.data.update_data was dropped in:
584989ed 'data/data_smart/build: Clean up datastore finalize/update_data references'

While we are here, drop some trailing whitespace.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/tools/rrs_upstream_history.py | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index 7dbf64c..25f4b20 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -70,7 +70,10 @@ def set_regexes(d):
 
             localdata.setVar('OVERRIDES', "pn-" + pnstripped + ":" +
                     d.getVar('OVERRIDES', True))
-            bb.data.update_data(localdata)
+            try:
+                bb.data.update_data(localdata)
+            except AttributeError:
+                pass
 
             for var in variables:
                 new_value = localdata.getVar(var, True)
@@ -107,7 +110,7 @@ def get_upstream_info(layerbranch, recipe_data, result):
         ru.date = ru_info['datetime']
 
         pv, _, _ = get_recipe_pv_without_srcpv(recipe_pv,
-                get_pv_type(recipe_pv)) 
+                get_pv_type(recipe_pv))
         upv, _, _ = get_recipe_pv_without_srcpv(ru_info['version'],
                 get_pv_type(ru_info['version']))
 
@@ -143,7 +146,7 @@ if __name__=="__main__":
     parser.add_option("-d", "--debug",
             help = "Enable debug output",
             action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
-    
+
     parser.add_option("--dry-run",
             help = "Do not write any data back to the database",
             action="store_true", dest="dry_run", default=False)
-- 
2.34.1


