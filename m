Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.4597.1616474193463499740
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 21:36:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cOU6BYjt;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id 94so14137853qtc.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 21:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+Io0R7n6f9GG7iScrvbvuqohPcS4pKoWSNbNQG8dM0o=;
        b=cOU6BYjthN3n09NZNznoKzbofgib/MH3bHEZPoKd7tFhporTYE13OMjGSWQOa6dwGV
         VJgitlwC98yvKGKbdnye4kqOPhoepzIuyL/G32ag40MBwMxlNXtVK25AQgoh7rGEBHOF
         wQz8FA2ksO4WfBMCm4qeXSONwuS+WMhLg5dyBlui78kdcXHXaNB+PY7sMWsfN8X4SzTn
         FoiA/Oi0Gbkq4jDj+2Otxt/6QvGxoqd4S7Fna8I8pBk69PZ72W8VEc9yaOBOFmg3GomX
         0XJ2OAYx5PJew/kt+TC1/EwPPX3bCdpLUDuVc39LBZRFep+NDlZjOfPptBi9ARLiqJA+
         BZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+Io0R7n6f9GG7iScrvbvuqohPcS4pKoWSNbNQG8dM0o=;
        b=FFuoADeUFytRpIOK8zSOOYxjdR34bgMWjfLAgvpuAHRCDeZ4BVEIZOEYK3cxCiSikm
         tEl5rmJXuKOsFglFE8jwJifvNyGonaryuYumiY908mCX+QZefmd+uhXzozCoYVWtoMxc
         TKU9lI9oua0TwBgrAmX9qn0XqLGaPqoI6iy5H5bjEzDriU/j5WQMQ2cpCks3Mo28CXN5
         zZDL56bDhrW59GN69DLyMp4fPK86Z2qp4SsPp+dJw3PoO62REV1R1SrXtXeeMJou1Ppr
         a/v2aOwTuMXtAIhI3DlBBioHT/ehmDQ/4dkCiZq8Ee6WHJA1eZbxO31EpNjKxnjttc3y
         8AYQ==
X-Gm-Message-State: AOAM530O5MkEZtSnom+58fiKzxIed//LZ7cca4+h621rQw+Lv8JcB0aL
	oS3SujeF7kl9q9Wh8F5yQ1Ab2SHhzIg=
X-Google-Smtp-Source: ABdhPJz+Goap768HwZZrdr5CbWMR/59sEvZgVqA/5eQ7fo125tyqeOz2PLz1bIIEqoIWWYr7Vu3l7Q==
X-Received: by 2002:ac8:7dd2:: with SMTP id c18mr2913497qte.301.1616474192252;
        Mon, 22 Mar 2021 21:36:32 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id u63sm10412586qtd.40.2021.03.22.21.36.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 21:36:31 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] README: update mailing list info
Date: Tue, 23 Mar 2021 00:36:21 -0400
Message-Id: <20210323043621.19976-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Yocto Project mailing lists migrated to a new system and email address a
while back. Update the README with the up-to-date information.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 README | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README b/README
index a751fce..7272c3f 100644
--- a/README
+++ b/README
@@ -31,7 +31,7 @@ Status of supported boards:
 Maintenance:
 -----------
 	Please send pull requests, patches, comments, or questions to the
-	yocto mailing list (yocto@yoctoproject.org) CCing the maintainer
+	yocto mailing list (yocto@lists.yoctoproject.org) CCing the maintainer
 
 	When sending patches, please make sure the email subject line includes
 	"[meta-rockchip][PATCH]" and follow the community's patch submission
@@ -42,7 +42,7 @@ Maintenance:
 	For example, to send your most recent commit (i.e. just one patch),
 	please use something like:
 		git format-patch -M --subject-prefix="meta-rockchip][PATCH" HEAD^
-		git send-email --to yocto@yoctoproject.org --cc twoerner@gmail.com <your patch file>
+		git send-email --to yocto@lists.yoctoproject.org --cc twoerner@gmail.com <your patch file>
 
 Maintainer:
 ----------
-- 
2.30.0.rc0

