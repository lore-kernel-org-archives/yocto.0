Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6638C433EF
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 15:45:53 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web12.684.1654184748499949240
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:45:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TNKe7HH/;
 spf=pass (domain: gmail.com, ip: 209.85.214.169,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id i1so4835232plg.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=dnt+4wpJuJhjQDoUu0+KvNGt3ycFBPlNdbR8kSN6llc=;
        b=TNKe7HH/tYOJPs+el6NoGWqTwvDwSjblIXAQFI0i2TfxV73Hge8spKQduJYx6AgLmx
         Nc3wWYEJ/xoV6nrocWiM7wTnPi05+TpayaUkVVvbuu8WzIV63MufJhl/sJrGs8EqF+xd
         6YaFn3h419PxoaLWwSNPecJkIYieg557JgK09jGTBKmEZ9sXaaesii6N36/hLIRs2baq
         xUbxzSLd4yq8vsDhiQcsbVHxTtwKmnRZJZY8dRLgFBqfWxGYKZJQuHBdDv9p8oHsh+UC
         VY2cO9wC7xspEFi3r1ukrpA8B15gLmzG6aDrJT6/DcaW/rR+L8/6U8S/8W/zap+mKy/M
         UrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dnt+4wpJuJhjQDoUu0+KvNGt3ycFBPlNdbR8kSN6llc=;
        b=qSPfdFHKenfS1u4gaNYQFg7eCLdabZ3k+2LGgIG8KIqOpmNa39usNFM4nB7MlFP3Mo
         MOpqhChI3EUfOulVbhh/WnYN6NDTnhEZVvXrFCgaZNYM3eNJJ73QQkPLA4Jtq5Cq7/7c
         NXiZ+/04ylFRC/ztr62VgAxQ5gQgr1CMm9D4DLHTk7Evf991qUORqcJB6+czSeq6fzXg
         ryz42cVbBC49vlqAbUg9A5OhkDYfKChla7kqqr+g4ChygxChm9RQavcOfPdbfWzmX3Jw
         wg2twJ2k4AyurzuTOswv6QLDGtPySpX05xeNDeD0SkQb0jX+qcjzERtK2asayzMH2G7u
         66Cg==
X-Gm-Message-State: AOAM533+QHRu/4KI/Pv7PqRV4aiPnUBGq5Atn4frBuopfGo+FICSqi89
	oIgmRTKi0l8LTkgdyhG/BXCtcjkKrR4=
X-Google-Smtp-Source: 
 ABdhPJzdrD/xfPaRT1KP4A/Onn6ISpxFVRE+Uzf6D3VtTpp1p1fvoiOY00tXqNlFxUd05sNKhSzUTQ==
X-Received: by 2002:a17:902:db12:b0:160:df9e:99fa with SMTP id
 m18-20020a170902db1200b00160df9e99famr5414180plx.108.1654184747708;
        Thu, 02 Jun 2022 08:45:47 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:e8e8:b71d:2c05:ffc8])
        by smtp.gmail.com with ESMTPSA id
 jh22-20020a170903329600b0015e8d4eb25bsm3705154plb.165.2022.06.02.08.45.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 08:45:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] chkrootkit: update SRC_URI
Date: Thu,  2 Jun 2022 08:45:43 -0700
Message-Id: <20220602154544.245869-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602154544.245869-1-akuster808@gmail.com>
References: <20220602154544.245869-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 15:45:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57249

0.55 no longer hosted from main source. Use Ubuntu archive

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/rootkits/chkrootkit_0.55.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/rootkits/chkrootkit_0.55.bb b/recipes-scanners/rootkits/chkrootkit_0.55.bb
index 20015a1..4293aec 100644
--- a/recipes-scanners/rootkits/chkrootkit_0.55.bb
+++ b/recipes-scanners/rootkits/chkrootkit_0.55.bb
@@ -5,7 +5,7 @@ SECTION = "security"
 LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=fdbe53788f7081c63387d8087273f5ff"
 
-SRC_URI = "ftp://ftp.pangeia.com.br/pub/seg/pac/${BPN}.tar.gz"
+SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/c/${BPN}/${BPN}_${PV}.orig.tar.gz"
 SRC_URI[sha256sum] = "a81c0286ec449313f953701202a00e81b204fc2cf43e278585a11c12a5e0258b"
 
 inherit autotools-brokensep
-- 
2.25.1


