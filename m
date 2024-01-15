Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC9B4C47DA7
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:32 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web11.89458.1705341811997828746
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BK4Z7hYj;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6d99980b2e0so7446207b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341811; x=1705946611; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X1+739vPgFDT7MOtwCUP4mRY7NX/Hynhh1vqQtdUeDU=;
        b=BK4Z7hYjC2jewRTOTGjXVMVS0xwWhLtFXEh6KNa2m+NBFVdPCt6plIYaLTcoJdVTXg
         gN+A3RBJgg8R+DIZqesm2YH3go/Ag9t+9F+NyzrvUIv8NQBkgR8OK/x0s5ITKsx7N/1r
         sKvB4iGDp91JG6kGUjupFGJ9ncryBisrLIBdiCp8iDPkz7PTNk/H8OcHdbBnHyoA3AZD
         ZFO69SGRkJokuduE87vBE+W5kJWvJisbqvf1ERsnE0hy0uc375YUzes/thbKSdutaIqb
         rU6FkpDqzxM2uXOmXo4kRrwsldFXaOoMMRlZYBszo5q1DBc3wcgmNYOxkEY//x4jeH2o
         Facw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341811; x=1705946611;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X1+739vPgFDT7MOtwCUP4mRY7NX/Hynhh1vqQtdUeDU=;
        b=ChwOd2aBwzadNdqcZjTcu+j17P0SEVVqw+uY01kJcTSrqtF8DbBSJuUjRIdkua2LKa
         Dk/Ofg5kUKVzIXAh73MT3ABZ0oQytHZu5SWM9aGoLgUXk6FcHRCHMX1/1a8ezg43ViKV
         DgWFVPQJ5Nwk9YDoujci84fHehKqRiZtDL+7o1sxP/lU2pomvqnLzN6pHZRqUggMDE/W
         EKxwmeNg+fyk5m5c/CWnlaGcwUIO2UgYJ1VDBa9t8gf+D0iCNp8W4VwxJd/lwUamuHWa
         6XfMW9b0a+18T7Jp9ZXayFs3eQzdvuj2ZHuJmDvj21oAJGVjEAzRyB4mu9inSxOSBbRa
         /Seg==
X-Gm-Message-State: AOJu0Yw1FA84ufcPlUoag2jELZDY7OfIDCXrmByRm57n7kB8M6JTLIII
	ckcNP0+X8BBErgvkPe3i1ZeM7hcpIrc=
X-Google-Smtp-Source: AGHT+IFRaqk11euphfQDpfUdombLM9AN1sau70M3Tql5YMdbRmR4x5dNb4SK9ald7PXn9pMjXlXvuA==
X-Received: by 2002:a05:6a20:3947:b0:199:9e93:4ec3 with SMTP id r7-20020a056a20394700b001999e934ec3mr6130537pzg.49.1705341811129;
        Mon, 15 Jan 2024 10:03:31 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.30
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:30 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 6/6] rrs_upstream_history: fix get_upstream_info
Date: Mon, 15 Jan 2024 10:03:17 -0800
Message-Id: <0f3299e4a3664face731afce56e6c29c7d93ee72.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341467.git.tim.orling@konsulko.com>
References: <cover.1705341467.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62159

'result' is a list of RecipeUpstream objects... drop legacy 'recipe, ru'
syntax. In the current code base, result.append((recipe, ru)) was
appending a tuple of the last value of 'recipe' (in 'for recipe_qry:' under
'for maintplan in maintplans:') and the RecipeUpstream object.

Fixes:
AttributeError: 'tuple' object has no attribute 'history'

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/tools/rrs_upstream_history.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index bf32c5d..73b6d91 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -143,7 +143,7 @@ def get_upstream_info(layerbranch, recipe_data, result):
     ru.no_update_reason = recipe_data.getVar('RECIPE_NO_UPDATE_REASON',
             True) or ''
 
-    result.append((recipe, ru))
+    result.append(ru)
 
 if __name__=="__main__":
     parser = optparse.OptionParser(usage = """%prog [options]""")
-- 
2.34.1


