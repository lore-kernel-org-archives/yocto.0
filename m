Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B1BE776E2
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:47:51 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.98905.1696294066302180117
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:47:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BSEdP7P3;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-4180f5c51f8so2800621cf.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696294065; x=1696898865; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=cd0qUIISW321ZJodzX4MOZeVrfTgDYJg4qd4n0kyZ2s=;
        b=BSEdP7P3aKHWZv8FzftzNXvo0zijV0IirdoN4KB654q6+H3CbnA/yDOzEoOnxigYw1
         3qhYZTnozQS9Be9laBD83cK7ksWORnisr7U6EUFfRHRzHclEQkvBhSAwfH+Ok6Sz0wQ+
         vYswkvVvAigluB5jaP/bhlyox86N1ZV9igSxDSj9sYR+BTzufjeNF/B4p6g94AyZTsmk
         MWttFZNm7IFlIXfleW43bZjpjVr3MX/NIVNhhG2HsQzzu2HchV55uszGuXc0cNqBSg4o
         ppx3WUC7UK4mo0cuH3sPkLtyqHnAYwmaAZiAg+lbKH9bxUjPTxy4w7opRUwsjq8iGB/g
         juyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696294065; x=1696898865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cd0qUIISW321ZJodzX4MOZeVrfTgDYJg4qd4n0kyZ2s=;
        b=KtkMYPr8KRfA5jLBzKFhnkNKEi7bTwWOad6WRLRr9LFXg00osK7+U8tIdWaj4aoYHP
         lANGnVLezAWc+p9vssvATQ8zTpGrTVNuUXksVbGN3WNcX5PlnjRg3a+NRojQizz+qJ7H
         lIUB0BPcv2v2F+kbI5vibJR39IloDDPo5VIAOvVhdE3yCYsAh7UDif3pr75s1YkpgyVd
         SXMT+X39NpEib8vxGTrtAXd6q4qy1/ljRwcRlpOPV9jUBkxy91s73RVEe5ykC8OBLyRP
         yArh2xn/4kwxr0HnIPqhVGkTm502Nj47V9NRh0iVHunKvZLg+CAiCW5Z6+8BUg7krlYz
         WgHw==
X-Gm-Message-State: AOJu0Ywm4xTbkALjiyIQW5PonG0bFug4CH6PDVEhkz20zYWt5ZpFmtXE
	z8ec52TlwKcgHV+74aVq/CrFcf6VJs8GDw==
X-Google-Smtp-Source: AGHT+IHkaAYPDMWYlpq9v96MIQlQwvOf4MBPxEs/QPlEyGI8XFg/48RUmn9LnLdxRDHuMK2+31u+WA==
X-Received: by 2002:a05:622a:19a9:b0:417:fa13:a8f7 with SMTP id u41-20020a05622a19a900b00417fa13a8f7mr1547221qtc.4.1696294064603;
        Mon, 02 Oct 2023 17:47:44 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o1-20020ac86d01000000b004199c98f87dsm48877qtt.74.2023.10.02.17.47.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:47:43 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 0/4] u-boot cleanup
Date: Mon,  2 Oct 2023 20:47:37 -0400
Message-ID: <20231003004741.6021-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:47:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61203

The U-Boot bbappend recipe was in need of some cleanups.

v2:
- breakup the original 1 patch into 4 to make the steps easier to
  audit/verify.

Trevor Woerner (4):
  u-boot cleanup: move task
  u-boot cleanup: group dependencies
  u-boot cleanup: group EXTRA_OEMAKE
  u-boot cleanup: organize DEPENDS

 recipes-bsp/u-boot/u-boot%.bbappend | 32 ++++++++++++++---------------
 1 file changed, 15 insertions(+), 17 deletions(-)

-- 
2.41.0.327.gaa9166bcc0ba


