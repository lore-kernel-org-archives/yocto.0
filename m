Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEE2EE49A4
	for <webhook@archiver.kernel.org>; Sun, 10 Sep 2023 16:34:30 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.39419.1694363664484754776
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 09:34:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=rnTPp8BQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-9a6190af24aso451426166b.0
        for <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 09:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694363663; x=1694968463; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IiTpmXspSEBwATxjHXZvvP7jXix4tXEh4kDNS+NR98A=;
        b=rnTPp8BQB0Q6ywh5Oh+wamS5BoraXuOhvFzp492SHA17vIUpXMN08eVQgH8zTZn42L
         2ZVDqA8Yzc7sJBoQonJcZKiLu8tqsv9J1YVmzH5PwYgusxtsr3K1ZrwZ3jgyEGysI7H8
         +WFdyeON3VHjGEy9Zbw/FH1ud6EetsJF8Ja6UnimfLQlWXf358AU5A7p9PCVt31ryDzE
         QEdOTYDdnhIl/A0rOXFLU+kDD/LR/tN/hBNcBuOy1sYARITHimUW6W2Z/AThCsEyekSn
         wTCUJznUViu06ywSXsQKTt80WU0CXusogYYZiudGmR44qqcIY/MT2chWuDyM2N7QCt1D
         tTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694363663; x=1694968463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IiTpmXspSEBwATxjHXZvvP7jXix4tXEh4kDNS+NR98A=;
        b=Q7gn6sc+ydr33ZEaNJm0ggyZVDsNR3jmXer5WOXrg+c2gq1S5a0wBGgzU4WHwInCH2
         k0Adnn3nSxr2v1cl0maVSTddCcOJK+fWvB8R92/HHIJlLqI1VvfohjBF6wDrDvxtbChi
         NZF2/pA8VABl2TREfw7lt+YXLXGfn4GVNA5yLx8r3OIGjf+qFvb2Ibsffd0n48M6QBmF
         mS2ZP5Dn6c5TosJaqGDNPLWflNFpXHH5Q7RDMRusb0SoUqjKojzUw8Mx5fbaRuzCa4o/
         9lh54/Ix96TjYWeIYrNR+jFwf7QXnuYxWzK84GJ7Sq4ASiuoGc1GTFDz/gdvWz0AWzJz
         BmRQ==
X-Gm-Message-State: AOJu0YyT1EWjQ3iDXd1ee26q9RC93HLTt8PA3Il8Z+5WoJGBVk1kzE78
	QX6rBwFYcCd+JEYygcaGS52cQAMt4Js=
X-Google-Smtp-Source: AGHT+IHlymAzuj9r+X1aMgqazLMdXfQCj5UPLreUGmFjGN5uqYuTNp6g1/5n561AGS6nzDnQ8PKPdA==
X-Received: by 2002:a17:906:3151:b0:993:fba5:cdf1 with SMTP id e17-20020a170906315100b00993fba5cdf1mr6427450eje.22.1694363662681;
        Sun, 10 Sep 2023 09:34:22 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id ss11-20020a170907038b00b0099364d9f0e2sm3973597ejb.98.2023.09.10.09.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Sep 2023 09:34:22 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Martin Jansa <martin.jansa@gmail.com>
Subject: [meta-rockchip] [PATCH] layer.conf: update LAYERSERIES_COMPAT for nanbield
Date: Sun, 10 Sep 2023 18:34:15 +0200
Message-ID: <20230910163415.3899620-1-martin.jansa@gmail.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 16:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60957

* oe-core switched to nanbield in:
  https://git.openembedded.org/openembedded-core/commit/?id=f212cb12a0db9c9de5afd3cc89b1331d386e55f6

Signed-off-by: Martin Jansa <martin.jansa@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index e8c50f8..10bcce6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "mickledore"
+LAYERSERIES_COMPAT_rockchip = "nanbield"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.42.0


