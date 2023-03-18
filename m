Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D792CC761A6
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 20:00:06 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.3804.1679169595374383544
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 12:59:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=imqGDjT2;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id m6so5549576qvq.0
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 12:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679169597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2CsX3xo5RX/yLjq/AOCaWPnFypIVf6Ggf0fjkKj9T2A=;
        b=imqGDjT2laZIsWTKPODi9X0ZcOyOCIYJFtOIn8GFzfAnEfuC/I/fAEmND0ZqxG5EDe
         HUpOQ9evbhOxE3WgMxZ1Bve2p+OTKbpi5ejOzvMcB529NHuC97RDYQ7q5QvKEtnALkUK
         tyra2pm6H+vyiYnst4j/TCNNzCeOfBZ9VGZerk5/9X/PkDqM8yg/dBTEkQ2HxHIPRUXd
         sZciwU8HnfQZ2Rx2hIQZafmtVGVcg5+OE5ovaqNfYSOBrrBemdgNgfYn4NPZVdu40Sk0
         Y4tcmIomfztNCqjMPQsGkn72KlQDFxigyEWLbzgZEwWRxoGXPeOATmUPSNUFZ/QFQ2Vf
         E1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679169597;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2CsX3xo5RX/yLjq/AOCaWPnFypIVf6Ggf0fjkKj9T2A=;
        b=pvqX3ublhYdHDbGp2ZSSjCLT/Y2/31Up+zEbS5OjXnCbofUE2E/8arI0xDwt4KlZ9U
         hIzexiO+BD1xVUole1xckhUjUJgFg2AafhmFpuxqYu2Xxf+EO7tWmTO/ZbmY3Z8+6vwI
         ee+QETj2qRKU2s50vkBKKAcGURgs6c6iBV59rBxmP0hPZl+WejCWH1b02UXj49C2T5db
         AieCywll0CDr0hvb/qfweNlsyaGHgLyBbTmkUd0m5tsLprdtQAUpZjNJ5SO6Wuy+Pct9
         ZHfFytRG3a3GR/h7iqOY80GaKEzpn/SP0c7kBb++YFydd6Snz7b/V5Ido0Wq/lvLwhNM
         AT9w==
X-Gm-Message-State: AO0yUKWP4nBhZJ0gDbZQEsmbmhRHwubE/SjpZMT/CbQ2y379aOuCCb0K
	9weZ3Gfvz/JuAFgmadiiKjTMNg8Nr/s=
X-Google-Smtp-Source: AK7set8HWn80sdu7pm+tRYykTWh4S2y2+34WFuZ8xStPMHN+WMftTmGAMDLQ7k6LjgNlEz6ZTPg00A==
X-Received: by 2002:a05:6214:c88:b0:5a9:c758:ba0e with SMTP id r8-20020a0562140c8800b005a9c758ba0emr37451968qvr.16.1679169597458;
        Sat, 18 Mar 2023 12:59:57 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id r80-20020a374453000000b007465ee178a3sm2765473qka.96.2023.03.18.12.59.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 12:59:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 8/9] libmspack: update to 1.11
Date: Sat, 18 Mar 2023 15:59:51 -0400
Message-Id: <20230318195952.538375-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230318195952.538375-1-akuster808@gmail.com>
References: <20230318195952.538375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 20:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59460

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../libmspack/{libmspack_1.9.1.bb => libmspack_1.11.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/libmspack/{libmspack_1.9.1.bb => libmspack_1.11.bb} (88%)

diff --git a/recipes-security/libmspack/libmspack_1.9.1.bb b/recipes-security/libmspack/libmspack_1.11.bb
similarity index 88%
rename from recipes-security/libmspack/libmspack_1.9.1.bb
rename to recipes-security/libmspack/libmspack_1.11.bb
index 1b91f46..59df84b 100644
--- a/recipes-security/libmspack/libmspack_1.9.1.bb
+++ b/recipes-security/libmspack/libmspack_1.11.bb
@@ -6,7 +6,7 @@ DEPENDS = ""
 
 LIC_FILES_CHKSUM = "file://COPYING.LIB;beginline=1;endline=2;md5=5b1fd1f66ef926b3c8a5bb00a72a28dd"
 
-SRCREV = "63d3faf90423a4a6c174539a7d32111a840adadc"
+SRCREV = "305907723a4e7ab2018e58040059ffb5e77db837"
 SRC_URI = "git://github.com/kyz/libmspack.git;branch=master;protocol=https"
 
 inherit autotools
-- 
2.25.1


