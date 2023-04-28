Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27C5FC7EE25
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:49 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.19835.1682688760533967896
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=CpXxgS63;
 spf=pass (domain: baylibre.com, ip: 209.85.222.180, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-74e12e93384so483533485a.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688759; x=1685280759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZIOdNm4paZoa9Lln1F+ukmy2cHtIOuFb6FwMTLtjmQI=;
        b=CpXxgS63jiJypT09pbUQ9Xu3+GS2/e8XzXc8VkDJWcmB2DPEnuLpLrlk+I5694I57Y
         Y5Lj6QniLnMzrOg6t5W3v3ND/lbSyE07cZARFq4bVHMHJePSE5drFMwnqnNowuKwiE8N
         gdD0blv0Ejy2uY9CAaEe3WvXF3IsruwnwcABGqOa/zWyk20x8IbPAJGDK9JDr2HZV8LZ
         mOW7mYvYSl3z/MollK+q6hpQcIjXwZhlOg+RUez0QAVrAWcSrdLvo1wE7T42MCI3tTuf
         IG5H+GWGUSsbezE7nfJmtsFLLxAJh0t69aPMoJIA5sO+52Dt7E/l/LWEj09/zyEAjkLI
         UvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688759; x=1685280759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZIOdNm4paZoa9Lln1F+ukmy2cHtIOuFb6FwMTLtjmQI=;
        b=aMhIjylYec1qzZauLZzqztdokbgyTNCJoLKEkQk3gE+iI5nUaLeXutqlh040c1vhq8
         VekphnnrjNLIhr2uQ2Ijp4a9+3LRou+6PwuJHXJTNx7zIELPO4onIVcXyyLFAy6Ce5Ut
         EEszNAnMBN/S7SOAgoQ7x7izMtfyInLkk5RxF0dw1vGyjdHV54hfLkCCeTKt41Aqerg6
         4VCeIxyxUlQrj4Lr5ID7Vo3gq7sdfddx7au9T14tZFzTLS+mss0Tm33ZTPl6eCt8+/A1
         LrJ7Uk3Uah256XkFrjSfL3FJT/OOZcZTi93Q4ED4UgBXjuTjBJ7+ZxtKlaSoSRwcbZni
         XRVQ==
X-Gm-Message-State: AC+VfDzuQbo+10RkSAilsEXPbLo38MMOzWI29sdYU4o2VpGTmI4IEUBV
	Le5ld/aaMiW2/rou+BISVijGW6KK+SvVasE3VmE=
X-Google-Smtp-Source: ACHHUZ4Fz5EUc6IkN1XCAcIrzrQyQ4V5QQZgMulzj0OPahR/P+uXMloOWgxZJuwSgITZ0lZA5sT+0g==
X-Received: by 2002:a05:622a:143:b0:3ea:bec4:ef57 with SMTP id v3-20020a05622a014300b003eabec4ef57mr9584063qtw.13.1682688759465;
        Fri, 28 Apr 2023 06:32:39 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:39 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 7/7] README: Update maintainer list
Date: Fri, 28 Apr 2023 09:32:33 -0400
Message-Id: <20230428133233.1155096-8-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59815

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 README | 1 +
 1 file changed, 1 insertion(+)

diff --git a/README b/README
index 8e0ae71..b978855 100644
--- a/README
+++ b/README
@@ -44,6 +44,7 @@ Maintenance
 
 Maintainers:
     Paul Barker <pbarker@konsulko.com>
+    Trevor Gamblin <tgamblin@baylibre.com>
 
 Links
 -----
-- 
2.40.0


