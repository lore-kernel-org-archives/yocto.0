Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB3EEB64DC
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 23:13:12 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.1799.1687389185166515999
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 16:13:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=TzHLc0ok;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-bcd0226607bso83312276.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 16:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687389184; x=1689981184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pbr0SsRV5xR5fmbGlfZWr2FtIqVgUu35GrdBLr4Nlkg=;
        b=TzHLc0okb1aRTtp+ujq+15Zdv3ACCC2fAraylLkDGghPyvAy5kjyb78y84iI5ldOJX
         4nTKXeHTTsRXiya6SQ/rkwzVxArqUqb5/e81QEX4Wcu040ZQJkckZVkJzNsDv/lhg48g
         jYQL7ODHxxKR5e+W0qjumhFZ1SIwnT21SmIVr+vt9VgySnAJiFq6xKdvgIN/z6ljOEPx
         aiV/H2luQ0DILV3MFxWmZhnKOtIU8Gayv5RgDUjoH39XKBqfVPcjLerbP7HaH5r9qcj9
         Hq52N/PY+8ikruKUVEoWNyv71RNJVMu3RIJ+viVKCK6JuPVhTsv8/LSwgUZY3l6Ax8lJ
         vltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687389184; x=1689981184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pbr0SsRV5xR5fmbGlfZWr2FtIqVgUu35GrdBLr4Nlkg=;
        b=H/hG20D9dvwpI4fCrFSglPCD9iZyD8WiTMVQ3bVg13HVQRBnkJUgZpYzHBeG8lVwFO
         z05YxGP7xeYQc2Bb+K6Olu7khpWNHrARG+pZAAN9FlEFvGBK+x4Djb3RHDvuypcMQWj5
         q3D9Vc+CjUKZFVL8eVKfHfiulVch+Yhzee7jwgc0taezeqKHLXWupUAzrAl5jgg2rn3n
         QS8tjzfFvNxnbrpaJoqk4xywXznB7qH64gHYgZpWTf1WUM4tFScBwxKfdq3OWkwAp5+N
         87DHFVHRZ9N4IWtqPXJ7Z9vsPZ8hEtD44imi85SAuagNnuUBN1PypTBJF6o90WhAMGjN
         Guog==
X-Gm-Message-State: AC+VfDwbjVIbfYjfyqTJeP8uHi8K6P7/tt++dn+l+ntGluSC0N/L+MBx
	+44N5iLbV+y8cQ4T3LPNu0T8jU7G56U=
X-Google-Smtp-Source: ACHHUZ6S9uH4QXb6q/fNqUIyV7FF9Agj9jISWS0+4YnLbDQjrHGaAxogRW9yKkzzJSmlkgLNdNfYng==
X-Received: by 2002:a25:24d4:0:b0:c00:7285:f943 with SMTP id k203-20020a2524d4000000b00c007285f943mr2741265ybk.19.1687389184039;
        Wed, 21 Jun 2023 16:13:04 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dc27:e982:11fd:2a21])
        by smtp.gmail.com with ESMTPSA id l1-20020a252501000000b00bccc2241e14sm1228067ybl.28.2023.06.21.16.13.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 16:13:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] isic: fine tune Upstream-Status
Date: Wed, 21 Jun 2023 19:13:02 -0400
Message-Id: <20230621231302.476147-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230621231302.476147-1-akuster808@gmail.com>
References: <20230621231302.476147-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 23:13:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60389

These are changes I did so apply the appropriate label.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/isic/files/configure_fix.patch     | 5 ++---
 recipes-security/isic/files/isic-0.07-make.patch    | 4 +---
 recipes-security/isic/files/isic-0.07-netinet.patch | 4 +---
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes-security/isic/files/configure_fix.patch
index 801fe0c..ed2bf7a 100644
--- a/recipes-security/isic/files/configure_fix.patch
+++ b/recipes-security/isic/files/configure_fix.patch
@@ -1,8 +1,7 @@
-Upstream-Status: Pending
-
 isic: add with-libnet remove libnet test
 
-Inappropriate - builds fine on non-oe systems. We need to exlude
+Upstream-Status: Inappropriate [embedded specific]
+builds fine on non-oe systems. We need to exlude
 cross compile libnet test. Pass in the location for libnet.a. Path
 did not support mulitlib either.
 
diff --git a/recipes-security/isic/files/isic-0.07-make.patch b/recipes-security/isic/files/isic-0.07-make.patch
index 838c873..94349ce 100644
--- a/recipes-security/isic/files/isic-0.07-make.patch
+++ b/recipes-security/isic/files/isic-0.07-make.patch
@@ -1,8 +1,6 @@
-Upstream-Status: Pending
-
 isic: Fixup makefile to support destination
 
-Backport:
+Upstream-Status: Backport
 http://pkgs.fedoraproject.org/cgit/isic.git/tree/isic-0.07-make.patch
 
 Signed-off-by: Armin Kuster <akuser808@gmail.com>
diff --git a/recipes-security/isic/files/isic-0.07-netinet.patch b/recipes-security/isic/files/isic-0.07-netinet.patch
index 4b03880..448ba68 100644
--- a/recipes-security/isic/files/isic-0.07-netinet.patch
+++ b/recipes-security/isic/files/isic-0.07-netinet.patch
@@ -1,8 +1,6 @@
-Upstream-Status: Pending
-
 isic: add missing header file
 
-Backport:
+Upstream-Status: Backport
 http://pkgs.fedoraproject.org/cgit/isic.git/tree/isic-0.07-netinet.patch
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
-- 
2.34.1


