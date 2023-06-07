Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA45C77B7A
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 19:41:06 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web11.7855.1686166865217111369
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 12:41:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ERvsDZTT;
 spf=pass (domain: baylibre.com, ip: 209.85.167.174, mailfrom: tgamblin@baylibre.com)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-39a4eb67c5fso4992687b6e.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 12:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686166864; x=1688758864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Cpw+/BlKkilX4P+q6BGtzmIefjD6E2BWYaTJh7W1uDg=;
        b=ERvsDZTT1wUXgoGINBu17/TEhqv6UAzydmUSZ4sZM5WOSBXzqUe/BgqRHyU/qw853t
         17X6h1wQhbI9q51Rh3h/btJiaXjC4vj8w/2asocWL8DrrR2s8NFC1KXs9oTB2uay0mKk
         eDojjVQ44+uCd5/R18YKWdEgLv4Q7gZJ5Wk7xOOXEpQrWD2zeLsUCHX/CNJ+9asLM5M9
         0npjG3++UFnzwOkXoiog76zjhUZVAtz5vYR66VkxjJ9YkJ8HChMz2GgDApYrIYthLYim
         rbBMt5q/0WuINRV65OlClHD4yZbrTTWnzvc0905CingdUI+v7XGkiFqo/WRQhJFqmbXe
         UYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686166864; x=1688758864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cpw+/BlKkilX4P+q6BGtzmIefjD6E2BWYaTJh7W1uDg=;
        b=FcKNnjHs5L788OobeSqYhnyu7cfS92bEUSs5UfGw/Y/PkUwu7v4cWuXAyKnW+I09z1
         Rw1M7Krh5cVNGuKnZcZyuQ2oVcEX35TrH/HJEMc3GbW4CfIUTAgCjE1bfsWgJM4I67vZ
         rfDQ3ZbX00A7luwwT8UMqwlFGinodsjC9Mau7Yx1Cr8IAhNAIK98tbYc4oDniYRF4IiU
         cdRg4kAhIs9KwYBahE4uPsP0SVIbV5zd6+wKCExivNf34kMzQFNQHvzkDgQRtocBftIN
         xuKKT1iu6u0qk6c6P7zsSprMlqIXLfsnPzpdIiXNi/6Q4DgSGeqrhdAu9eDAXr9V9cdq
         2EIA==
X-Gm-Message-State: AC+VfDzYctVoW4tO96ZoTs1haIWyhd0/lkHepDDYhdI9cSpLSnGseUKc
	hcAPEsJ23teR92x3kF4FxzXIKL3Bh8bGhRdnw0A=
X-Google-Smtp-Source: ACHHUZ5IPXP05gU8zVJYAbOocpBydtuPITVqJgUWn3J4GJQNGhaGbIYzGwuA1Ba2WrLcFYkHQjTuoQ==
X-Received: by 2002:a05:6808:5c6:b0:398:1151:a434 with SMTP id d6-20020a05680805c600b003981151a434mr3748248oij.21.1686166863786;
        Wed, 07 Jun 2023 12:41:03 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:fc4e:ec42:7e5d:48dd])
        by smtp.gmail.com with ESMTPSA id i17-20020a0cf111000000b006262725bc89sm141643qvl.73.2023.06.07.12.41.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 12:41:03 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] clobberdir: only move dirs more than 60s old
Date: Wed,  7 Jun 2023 15:41:02 -0400
Message-Id: <20230607194102.3785739-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 19:41:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60216

See: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14952

Help avoid contention by adding a check to ensure targets are at
least 60s old when attempting to move them into a trash directory.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 janitor/clobberdir | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/janitor/clobberdir b/janitor/clobberdir
index 16b019e..832173c 100755
--- a/janitor/clobberdir
+++ b/janitor/clobberdir
@@ -52,8 +52,12 @@ trashdir = utils.getconfig("TRASH_DIR", ourconfig)
 for x in [clobberdir]:
     if os.path.exists(x) and os.path.exists(trashdir):
         if (os.stat(trashdir).st_dev == os.stat(x).st_dev):
-            trashdest = trashdir + "/" + str(int(time.time())) + '-'  + str(random.randrange(100, 100000, 2))
-            mkdir(trashdest)
-            subprocess.check_call(['mv', x, trashdest])
+            x_age = time.time() - os.path.getmtime(x)
+            if x_age > 60:
+                trashdest = trashdir + "/" + str(int(time.time())) + '-'  + str(random.randrange(100, 100000, 2))
+                mkdir(trashdest)
+                subprocess.check_call(['mv', x, trashdest])
+            else:
+                print("Not moving '%s' - age is only %s seconds. There may be another process using it" % (x, str(int(x_age))))
         else:
             subprocess.check_call(['rm', "-rf", x])
-- 
2.40.1


