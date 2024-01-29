Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DD88C48285
	for <webhook@archiver.kernel.org>; Mon, 29 Jan 2024 01:29:33 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.4710.1706491768138550503
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jan 2024 17:29:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PBG+XkFe;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-686a92a8661so18473316d6.0
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 17:29:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706491766; x=1707096566; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QaTO5xq7UXM7zYUpqogRI8WcUfLliCXA50wVIaLdUBc=;
        b=PBG+XkFeTlUcyVftxiVO3ckl+evtpdzWObboauBiAJYbWtnv45ImMzOChwRB+KK9py
         bMGE4CkoeShit2R97LBY1B7knIjS0SxRwH/H6vgPZCXJPV1Ta9wUOAYjmgtWop25SQSv
         kWc21XNWXyLmhOer6PJL6h/HjXCGW0pL3QjPgzAEBnZRxSLIMBg0GI2I27JZYKVSoZfu
         +FZsn+YamerwCNkZtq41mUg2AhMhB4gIZYRttGYryM1bZupNR4AoPgHvSbBkRjU2MX4G
         d9m9dEgti3EBEXRs7Lhi2+yGbhZIeY9aIJnZalPht63618zm1asTAj/1K8vaQzaHDGD+
         MohA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706491766; x=1707096566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QaTO5xq7UXM7zYUpqogRI8WcUfLliCXA50wVIaLdUBc=;
        b=t2KEd0cLeCHnaz81jxbAaMnDcCYC6Vx7KU+X/FI+5kKetRBcChho/s/WjOuJQqfrN5
         oCon/iMwd7pwUBeEl5uNgb08xn5DhT6M38ixU0SmdOdPt0P0fJHJir1p991jbtJzqAxc
         Lw2C01yrEPYWKHI2ijYkP0HZqV9l/eJo2MLoIVqer7LqXb4ysUgqs2CSUEYdQbDEb2Ar
         xwi2gYDkgaeuEwLXphmouSg4SD6zFWSzFFJSDJUgOIBgLNcfMpchQxX9KaTLDtXrhVmv
         bvqC+mhFnxLmGcOcir8YqXfnP55CSPevWJA7FjbmoQy3CQHOR3oeegptgIoFYB/pJFTv
         n4Ow==
X-Gm-Message-State: AOJu0YwA8LPpWcbmY3ObeClpMr/0LHNwf8qDT6weSaLnETnuMBezvSNw
	MdVS5p7KfC7jfvT0m7PBmxu0VtPE9L5NLSuoIqVr4ffCdW58f1gXD+HIbAe3
X-Google-Smtp-Source: AGHT+IGZEW8+3r3XhksYQMiZwqQDMztVPSs6C4op7x8ou2FWxbMB1D5DsCzEkWTYtuNwaSOUZ1HYOw==
X-Received: by 2002:ad4:5c62:0:b0:685:aa0e:6600 with SMTP id i2-20020ad45c62000000b00685aa0e6600mr6186460qvh.48.1706491766170;
        Sun, 28 Jan 2024 17:29:26 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id jh21-20020a0562141fd500b0068c4e3ed145sm549283qvb.135.2024.01.28.17.29.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 17:29:24 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/2] rename u-boot bbappend
Date: Sun, 28 Jan 2024 20:29:20 -0500
Message-ID: <20240129012920.23122-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240129012920.23122-1-twoerner@gmail.com>
References: <20240129012920.23122-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 01:29:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62320

The bbappend provided in this layer only needs to apply to the
u-boot_<version> file itself and not all u-boot files in oe-core.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/{u-boot%.bbappend => u-boot_%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-bsp/u-boot/{u-boot%.bbappend => u-boot_%.bbappend} (100%)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
similarity index 100%
rename from recipes-bsp/u-boot/u-boot%.bbappend
rename to recipes-bsp/u-boot/u-boot_%.bbappend
-- 
2.43.0.76.g1a87c842ece3


