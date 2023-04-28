Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2730AC77B7C
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:39 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.19761.1682688757456598955
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=joDFndki;
 spf=pass (domain: baylibre.com, ip: 209.85.160.178, mailfrom: tgamblin@baylibre.com)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3ef31206cbdso47507091cf.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688756; x=1685280756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RDnnY0XpkD+KR4DNV71uCLLpBnDZkvnl51q1ABYx9tE=;
        b=joDFndkiF6xDtfYtBmJw66uVvNmYKDxFCKILm4E7VpP6TnTKjrLvd8mc0eqJh/c35e
         Oa0xlvHZox5EQUOvGkv5TtV2I3aFmmvv0IH8gp6NjLX9/LeiRyDdD6NrVaNREryiC6vV
         Fay0pItjwCvIPcS3bWfkwXYTXH6GmwSjMqA2lcTRsVqTAbsnXy9a0TLcpfocgEEKYAzf
         wshDEeTkBH7iXtMZMHyH47fMoS9ZmXOkwt2h+MR+zdFs3LG3U8Kor4btBBHT63aOPQId
         xackvZRRy/3nhvwE4pWsr+Mr6heczJvROERp0FtgXuSq8viSlkbUkdfrbm+FYubJ57/S
         CAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688756; x=1685280756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RDnnY0XpkD+KR4DNV71uCLLpBnDZkvnl51q1ABYx9tE=;
        b=ZLk1m97XPt9D7yJRBWJBcJF4L8I1eX516E0cvzeA2RQpNVfYBJKtUS+rBmz0v8A6Aj
         w0pJx/GGnnZEtopnzoDJ8Tn7iUB/pxb8BuRke7kgioJfZNj4T6R5Z7pdP15n96P4jz2D
         OeXJjhU4JG3U3hPOT8pshltUw6Z/Tfe87a0QL0gzSNHBSMhvqMDt6hYORxsli9d0XkJ7
         EFHeTGVzrFvGsgdtgLAEJ+ohT7zte1CbVmBA0xwxgQ2DCn/LgByZWiOB2hZ6943l8cSA
         48LQpR7YGMPaIUPf3/MY3Kba6FeiE1JeH6eu2n90wJ5imuuPG3hbGhanvLw/O+QTjh5p
         RN1Q==
X-Gm-Message-State: AC+VfDyRoRYHuDAQW6swO9lfJqoZAuWcXTW3N1pl1qKV2rOUGnNoAPLG
	zTuhHbopY8zu1YyAEXKQZjRgMhLlvf129nSUtHc=
X-Google-Smtp-Source: ACHHUZ4Ql5LUdNnYzYcUECHcKDdA0evQdHxxrLCjDw0qvVcELhqV7uEjz7X/+ecv1hht/1d3A86Zag==
X-Received: by 2002:ac8:5acc:0:b0:3df:50ef:fafa with SMTP id d12-20020ac85acc000000b003df50effafamr8355306qtd.4.1682688756324;
        Fri, 28 Apr 2023 06:32:36 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:35 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 2/7] qemu: update to use new override syntax
Date: Fri, 28 Apr 2023 09:32:28 -0400
Message-Id: <20230428133233.1155096-3-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59810

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend b/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend
index 3ad9f03..4e5918b 100644
--- a/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend
+++ b/meta-patchtest/recipes-devtools/qemu/qemu_%.bbappend
@@ -1 +1 @@
-PACKAGECONFIG_append_pn-qemu-native = " virtfs"
+PACKAGECONFIG:append:class-native = " virtfs"
-- 
2.40.0


