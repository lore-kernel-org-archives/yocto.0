Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A6E0EB64D0
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 17:05:08 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web11.19229.1686675904116643515
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 10:05:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=qY4hDJ1T;
 spf=pass (domain: baylibre.com, ip: 209.85.222.177, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-75d4a4cf24aso115161185a.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 10:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686675903; x=1689267903;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=tnokgMgwK4xr7Ueyrzly72ps5Ccdez0fHRRy4P5X4mw=;
        b=qY4hDJ1TOlBN5l0c6Hz9q5sb+rSv+E2KzamnVaLRX1IywTsu5JLgHRrEU81LAisoZa
         X9Ze/9uoBBzqU+IMw0+aveGfmaUWs0oBZhauVLB92yKxpzfEOGmciE3zO3OMBWEqukLN
         tcvN/HsOJzcDSECwgOwvaHVmmdkC4ByECoYf9T6nKSjU7XWtOF590BZ3FmB5u7E5MzHH
         GW2RqdyXg6oUTZTQDr63Z7x6QBMI4NUFhhGmc7Hmx5j0rCH08np2Ljo7LCoOiSUjRoen
         7omEQbFOqX1vWsVooDfrj0I8c2cOZDtygkystroscKC+TDLux1PR38DmXkVN+BjIwGif
         qxBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686675903; x=1689267903;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tnokgMgwK4xr7Ueyrzly72ps5Ccdez0fHRRy4P5X4mw=;
        b=Xf258W5VqFnsMlBbVDZstpLbHl8G7lLnCHoPZfHOTqS3Nf0U7aSgylSgLG1vS7NAeH
         if0hYlmzQjbAHyLxpCJb4lIHOijaza9NoBHL4Y05zJLnDGD55mxJP2GpHBqkziDAujr7
         lS5QpgQH0xqpwzCSuJ6GJ+Wj5cECsDAFyrXY2daQm0EinZU+EbhT0fU0A2kATrEazAsD
         8U8G8hSU5TrMBiHGgnNQKJpZgfHNfO3DBJRtiRMjLQ58+cbD0PWHlG5G8SFTFeKGp7Ut
         mMqDYuZleOaYa7GKW0VyMWGuTC16K2V5GnYw0ejtmjYC7nbRUhPAZ/8CFHUXLsvKj7in
         SWPA==
X-Gm-Message-State: AC+VfDxE3KjKHmUmIqCUDZHACICHuXEDt+uxqHrTWkOeY3DBvnoP5sxc
	ldaqrALZoBtad4W1BvDTiis+Z6avhECzL88Sepo=
X-Google-Smtp-Source: ACHHUZ7IWJ2nzqWWmaeTlLeSNeU3jv/k5vnTRa+ejBeeaYOsbjARLZl/xdh2VAegN/ClGHeG8APBkg==
X-Received: by 2002:a05:620a:4511:b0:75f:1456:9d5f with SMTP id t17-20020a05620a451100b0075f14569d5fmr14155987qkp.29.1686675902740;
        Tue, 13 Jun 2023 10:05:02 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:fc4e:ec42:7e5d:48dd])
        by smtp.gmail.com with ESMTPSA id f7-20020a05620a068700b0075b196ae392sm3736715qkh.104.2023.06.13.10.05.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 10:05:02 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] ab-janitor: only rm trashdir files over 60s old
Date: Tue, 13 Jun 2023 13:05:01 -0400
Message-Id: <20230613170501.2326478-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 17:05:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60272

[YOCTO #14952] -- https://bugzilla.yoctoproject.org/show_bug.cgi?id=14952

Help avoid contention by adding a check to ensure files and directories
are at least 60s old when attempting to delete them from the trashdir,
in case bitbake or another process is still actively using them.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 janitor/ab-janitor | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/janitor/ab-janitor b/janitor/ab-janitor
index 080b598..659817e 100755
--- a/janitor/ab-janitor
+++ b/janitor/ab-janitor
@@ -43,7 +43,13 @@ def trash_processor(trashdir):
         try:
             files = os.listdir(trashdir)
             if files:
-                os.system("nice -n 10 ionice -c 3 rm %s/* -rf" % trashdir)
+                for file in files:
+                    file_path = trashdir + "/" + file
+                    file_age = time.time() - os.path.getmtime(file_path)
+                    if file_age >= 60:
+                        os.system("nice -n 10 ionice -c 3 rm %s -rf" % file_path)
+                    else:
+                        print("Not removing '%s' - age is only %s seconds. There may be another process using it" % (file_path, str(int(file_age))))
             else:
                 time.sleep(120*60) # 30 minutes
         except Exception as e:
-- 
2.40.1


