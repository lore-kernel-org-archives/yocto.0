Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A4FFE748ED
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 13:08:24 +0000 (UTC)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web10.59352.1696165694572062941
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Oct 2023 06:08:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=izE/4sfU;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: twoerner@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4547428694dso1509635137.3
        for <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 06:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696165693; x=1696770493; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G46a/nr5nyKvhe5OBIC0d++/mfn+/8qOT/NLdROh6ts=;
        b=izE/4sfUwont6kO9di0oyGkj6uKqMseUjXDC6KQTIs7YIekqfcs7f6GR47X6LyZyHw
         jQnDO9bKhyG4P9RUwo/PjJYA2hV3SUjfus3Gjm6KjU3hEzxA/6/j1m1+Fy9rAodx3Iig
         qakNTPX/0xkiAvB0y+hoSYvLve8fxv8j0+mEJdOt+I/LhXBMONMpfR2q+v/SpvsXJVvK
         RHuzoMBwCMW1xKRg8UdutcA7tabgfJW/t7bmjb5f8o7NgdPZ1yKq1reTGlMmU+PboCYa
         yl8flCC6Kte45X30pGrD9kpunHZqBWTWCRt2CIJJkwEuxM/uCTLq0pwkBeex3BLzJIup
         ZCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696165693; x=1696770493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G46a/nr5nyKvhe5OBIC0d++/mfn+/8qOT/NLdROh6ts=;
        b=MR6swu+TLgI+STBq6ze1Ty9TuhDENh+2ZLJyyxUoHS42vxIz2R9VKTLOJ72AMqsBmk
         j84bTwEAtBplgJlz3pu4Lpzku9w59KCqg73Pd7YrU0cNT4Umin0Vjl6P/Ivb7YD/gPlt
         HelXE4Z3r81OKHtLAmNltvw4BNpCov0Ha/heaapjPP+KiYgSzU6QTC5HG6In0NAib63b
         i88gHq8JBbFsmH9eXdSHBKG+nkCcfEJE+gR6CYbohkUNx+4bVe1gGRH9TAdBNgpHU69f
         Cxsi3eAy9zGJKLihyE5HzzQF4G0Mk+cCx2cO2XH9n6HAopSvbQmRS68rF8IvYTpP7TXq
         DxrQ==
X-Gm-Message-State: AOJu0YxtfBF1S2a1WtfvP9QL+g5orWUAK0noFgLsFq0Ij6d5jwNshsCF
	mr6e/mPkyap6/t1e/+OdWd0UKkxM0cs=
X-Google-Smtp-Source: AGHT+IEkxftaOEdJBVbDuNV1X52y6f6A1dLdpNWtI8XQRA4OzynRHd4qETgug41vtg9x8raGQ6l+RQ==
X-Received: by 2002:a67:ec87:0:b0:452:6d8f:7454 with SMTP id h7-20020a67ec87000000b004526d8f7454mr6906309vsp.15.1696165692764;
        Sun, 01 Oct 2023 06:08:12 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y12-20020a37e30c000000b00775afce4235sm115553qki.131.2023.10.01.06.08.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 06:08:11 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/3] rock-pi-e.conf: remove redundant MACHINEOVERRIDES
Date: Sun,  1 Oct 2023 09:08:02 -0400
Message-ID: <20231001130803.18662-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231001130803.18662-1-twoerner@gmail.com>
References: <20231001130803.18662-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 13:08:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61180

The MACHINE name is already added to the MACHINEOVERRIDES implicitly, no need
to add it explicitly.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/rock-pi-e.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/conf/machine/rock-pi-e.conf b/conf/machine/rock-pi-e.conf
index 0e2856ffe1a7..517956c4b9db 100644
--- a/conf/machine/rock-pi-e.conf
+++ b/conf/machine/rock-pi-e.conf
@@ -5,8 +5,6 @@
 
 require conf/machine/include/rk3328.inc
 
-MACHINEOVERRIDES =. "rock-pi-e:"
-
 KERNEL_DEVICETREE = "rockchip/rk3328-rock-pi-e.dtb"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 
-- 
2.41.0.327.gaa9166bcc0ba


