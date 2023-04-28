Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26871C77B7F
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:49 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.19765.1682688759895228702
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=CLKaTHVk;
 spf=pass (domain: baylibre.com, ip: 209.85.222.179, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-74e0180b7d3so465770085a.2
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688759; x=1685280759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2zmSyBb4oygb9PGFJCmaRj58zsSggml5o8Q+gEGi/3w=;
        b=CLKaTHVkzkQtA5MEijO77gle4bTC68jzlYfmXZpgRqqoHD1v4MAPBfUpleeqBt/fOG
         itRfHbmRnyeesOeAj8+ydbzo7GjD3FwKlcVcXTpxCCl6mfaj6r8OKC6jEXY2GU3ltuOF
         /tNDYthh7aVJEeCyD8vzq0S6n6u1PzWMzo9iHaUWu/7BGY0QXg9qk58ZUSspFPrqqckx
         UeqlF67f/uvmtp0m8TkHN8hThzWhd0wg5awdXvHv4YvSmdPfspQGjhKQiBA7UShxoTs4
         k9kw2omLaZM+zfe0jNm9t19TIMy/VPkQb49vJYB9LenfwlIO+fh6GfGiF6XPFkkO3J9u
         jzUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688759; x=1685280759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2zmSyBb4oygb9PGFJCmaRj58zsSggml5o8Q+gEGi/3w=;
        b=HHkraAy/MwSEuy1mljAkf/5hesWp9t98n67l+nGcr7iyiA6NsbUVKjGFw338dSFRLf
         hblUgy2tuccreMnJw4u8GLLahkAjIt2ybmcVMYAipBfI8twfKP6pVItwFIWtyelQeIpA
         oopw7xsWMFDja0h3qihSaMqSl6biL33Z1hRiXAhaH5vbCKIfcsbATqqRszItVTQ7tZMq
         TJPlIfUaOauXeofsXzKSxxay18V+vO5E4a2qD20D8P+UXIBg3lu3DFpWsYQs8PMfOf3b
         xsjdErnla0iUjmTuk9XOnMKc9BDAg2gqjoHc8bv3UjSRUZN7RS09WtItEM7pDIBO2uY+
         04KQ==
X-Gm-Message-State: AC+VfDw/KlGEsb8mpyEHf6QuIRcmDZ7J/8XUVgbhE0YGrKAugPtJcNNa
	Ktu/qKF1nuY1xNd5JPnDIa48fXfxz9APO2KlKL0=
X-Google-Smtp-Source: ACHHUZ7rCXnBZ6lZpcXTDkqN1cUVPPXjT6IO5N8FV9ITT8uaVftLEW8TCZ+MVL9jbqDgMSGqH4ENcg==
X-Received: by 2002:a05:6214:1c4f:b0:5c1:59b9:40b4 with SMTP id if15-20020a0562141c4f00b005c159b940b4mr9453159qvb.48.1682688758801;
        Fri, 28 Apr 2023 06:32:38 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:38 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 6/7] qemu-system-native: add virtfs to PACKAGECONFIG
Date: Fri, 28 Apr 2023 09:32:32 -0400
Message-Id: <20230428133233.1155096-7-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59814

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../recipes-devtools/qemu/qemu-system-native_%.bbappend          | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend

diff --git a/meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend b/meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend
new file mode 100644
index 0000000..4e5918b
--- /dev/null
+++ b/meta-patchtest/recipes-devtools/qemu/qemu-system-native_%.bbappend
@@ -0,0 +1 @@
+PACKAGECONFIG:append:class-native = " virtfs"
-- 
2.40.0


