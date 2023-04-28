Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E95DC7EE22
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:39 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web10.19830.1682688756755484761
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=sLmwRqJ9;
 spf=pass (domain: baylibre.com, ip: 209.85.222.176, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-74e1aec175eso467605585a.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688756; x=1685280756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31fmLgPVff3BZlpSZHaYQTPy+cC5kB05xYgBIgPTQqo=;
        b=sLmwRqJ95/m97AOIQJo/hHFEkApT9mkumwB3pe0MZBparT57p0R2LHXVWHGwYXDZJ/
         TU8HNcumY1dWQzjoRIHk2BTfs2+ZRff3/tx5ubshYad2Eii6HYefmJ1yO7kcyTyAcJ/L
         Vum0bxBVBoVvg9tmvb8ifGeAs0gVM82vgsbdfd3XBXJduYoLL9yvU0Ao0QTzkCVxkXBZ
         ydH/UKvLxtk17fXtB97IAMXfDj33/IFmWF40LlnGC4bwFVPge9abinuILKlt77B98mKP
         3Zm2J1FBvM0cVsFzJJqZ1b4o92kmJhKKxZhP8PejX4KkOtkJG4/95RxAf7R/70SpbxN5
         TOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688756; x=1685280756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=31fmLgPVff3BZlpSZHaYQTPy+cC5kB05xYgBIgPTQqo=;
        b=EE/obNi3Q2RgsaKhEoaoyNgkaPj5sjq4mZ8TEu4WSTe4KxZQwdZdFVKoSKAGe3cvtu
         910HdUpY8p1NAXsSxKIOP0VaRkIbxRWvdmdOa3K40n+I40nfdAhZ1E2eS6+7WwEACrfr
         7cNu0y7oxhIzAx3s37daSnB4KSvqHP9XJL9rctW+kWWtYwqgYkI1/dDMb3YQr6FdFbVH
         +gHMTtxkeOVCR/Wxgo7IkEAi6Irn7UICVEyX7ztJ9TJIAxB9Ba355YxnIqxs41/yJqGQ
         ADcvTo19wrjNVkCJkc5frB/pFD1TezvFZ3oaLrUsoXM3qOFTxucgC82dewbz8I8yKxFT
         KOTA==
X-Gm-Message-State: AC+VfDxhsTuUIeuHcVflJ6Gyhugx1qqEx8QRUXL5++GxWP9T2jZWgpv1
	5q7HSoQ76id2HkWACBQBN0g4C9fizCD5GW7BHCY=
X-Google-Smtp-Source: ACHHUZ7Cur8kBGJ/Fkwc71ruZo3p4Wv4591N8fnrebftkoEl6lRIWc7E/NjHt6B0V+eBhNjEoJfrlQ==
X-Received: by 2002:ac8:5e0b:0:b0:3f1:fa37:c82e with SMTP id h11-20020ac85e0b000000b003f1fa37c82emr8150621qtx.57.1682688755589;
        Fri, 28 Apr 2023 06:32:35 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:35 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 1/7] python3-pylint: update to use new override syntax
Date: Fri, 28 Apr 2023 09:32:27 -0400
Message-Id: <20230428133233.1155096-2-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59809

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb b/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
index 269983b..0bb9e3f 100644
--- a/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
+++ b/meta-patchtest/recipes-devtools/python/python3-pylint_1.6.5.bb
@@ -22,7 +22,7 @@ RDEPENDS_${PN} += "${PYTHON_PN}-astroid \
                    ${PYTHON_PN}-netserver \
                   "
 
-do_install_append(){
+do_install:append(){
     rm ${D}${bindir}/pylint
     cat >> ${D}${bindir}/pylint <<EOF
 #!/usr/bin/env ${PYTHON_PN}
-- 
2.40.0


