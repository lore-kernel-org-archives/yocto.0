Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08B85C54791
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 17:04:39 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web10.18291.1708621477890674326
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 09:04:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DJ6h67yX;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-42dc86cc271so43319841cf.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 09:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708621476; x=1709226276; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyuVZxPwo1oDBYPFaoNzkWHOZG4dTjGGw2i+iW9lvOo=;
        b=DJ6h67yXJtLWRoIHbi4CWFctHB6aFoxGK0OD+uflsZaWJ5mHGudhyoEKTC7Mom+wog
         1DeOyGqWNH4tCTAspBnLgLBrWkUUBvb4d/vUp3uplt7ObUQ1sh63NsILmsSdLzRVmnob
         z31mtLrCbGaAPRiRDyCHhwEe7cDK+Ko0UAvFakcXdbNm4D4sRuBlRfOlSG5gbWTqlCOH
         J1qvwU4mxhM7FXAXxBRcZU9qob9ib7dTSXliHBmhC0t5CCkTtwmqww+kUSu09S0x4zGe
         +BW8EJDcGFpu73MKJA/mfqsGkOhrmqdfhAh6duOFfLjvjsUvgFaosYENSIXd2/RTOSqZ
         12/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708621476; x=1709226276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VyuVZxPwo1oDBYPFaoNzkWHOZG4dTjGGw2i+iW9lvOo=;
        b=o6H5DjBbNe2YSfAOEQMRvL00P0i5RfdAYlFIKZeU6g9lIaqIS8+aozmX/qRBSMVusq
         km1diGtLadVY/v+Fb2YTm+TYu3BqsxoRD7jOtMgayVWvnIeZ9qDwTAlkT+ZWSpwAdygw
         8sVfo5p770YQq6pKtmYvwtvoiJUkuCLk99AKjJCwtTaGotHhcuAqwHhBoL19pVTsKhEZ
         0K77tB+yMsO1Hn0d03Zi2+lOEQmCiU05TzxuIg8oIpglo99SalnuiNNZPgrglXwRIsbP
         tNOk5f/67kCGSI4T8XUoTt0wwr4XYlmjK0lje4mXwqAOTYSyp8s6QLOzP4iaEIlrXG3u
         OlIw==
X-Gm-Message-State: AOJu0YyfzU/k5bSVQ70BoUfG+FUSNUgimG6o48Qzg4k7d1QsvaxgrTyg
	J79StHF+NAA4vAIxcnv9NSADLZUfl3hchFYTM39OTueZwtwySuYOFPzeEefc
X-Google-Smtp-Source: AGHT+IHnHhtRBKhHVGaShtPioReLi88JICaDAOFgFuLH+L5FgPRq1F15LrCiavO8L83SQUlrp9Qnhg==
X-Received: by 2002:a05:622a:11d6:b0:42e:35dd:4f9f with SMTP id n22-20020a05622a11d600b0042e35dd4f9fmr6571849qtk.11.1708621475578;
        Thu, 22 Feb 2024 09:04:35 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id qj17-20020a05620a881100b007872541c53bsm265848qkn.24.2024.02.22.09.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:04:33 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: [meta-rockchip][PATCH v4 5/5] rockchip.wks: wks file cleanup
Date: Thu, 22 Feb 2024 12:04:15 -0500
Message-ID: <20240222170415.7061-5-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
In-Reply-To: <20240222170415.7061-1-twoerner@gmail.com>
References: <20240222170415.7061-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 17:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62572

Cleanup the elements of the wic/rockchip.wks file so that they take up less
horizontal space.

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
changes in v4:
- updated for latest rockchip.wks

changes in v3:
- tweaks to accommodate the existing changes

changes in v2:
- add Quentin's tag
---
 wic/rockchip.wks | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/wic/rockchip.wks b/wic/rockchip.wks
index 6622e395ee2f..ee660b06d78e 100644
--- a/wic/rockchip.wks
+++ b/wic/rockchip.wks
@@ -18,14 +18,14 @@
 #   atf         24576           8192        (trusted OS e.g. ATF, OP-TEE, etc)
 #   root        32768           -
 
-part loader1    --offset 64s    --fixed-size 3552K   --fstype=none            --source rawcopy              --sourceparams="file=${SPL_BINARY}"
-part v_storage  --offset 7168s  --fixed-size 256K    --fstype=none
-part reserved   --offset 7680s  --fixed-size 192K    --fstype=none
-part reserved1  --offset 8064s  --fixed-size 32K     --fstype=none
-part uboot_env  --offset 8128s  --fixed-size 32K     --fstype=none
-part reserved2  --offset 8192s  --fixed-size 4096K   --fstype=none
-part loader2    --offset 16384s --fixed-size 4096K   --fstype=none            --source rawcopy              --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
-part atf        --offset 24576s --fixed-size 4096K   --fstype=none
-part /                                               --fstype=ext4 --active   --source rootfs  --label root
+part loader1   --offset 64s    --fixed-size 3552K --fstype=none --source rawcopy --sourceparams="file=${SPL_BINARY}"
+part v_storage --offset 7168s  --fixed-size 256K  --fstype=none
+part reserved  --offset 7680s  --fixed-size 192K  --fstype=none
+part reserved1 --offset 8064s  --fixed-size 32K   --fstype=none
+part uboot_env --offset 8128s  --fixed-size 32K   --fstype=none
+part reserved2 --offset 8192s  --fixed-size 4096K --fstype=none
+part loader2   --offset 16384s --fixed-size 4096K --fstype=none --source rawcopy --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
+part atf       --offset 24576s --fixed-size 4096K --fstype=none
+part /         --label root    --active           --fstype=ext4 --source rootfs
 
 bootloader --ptable gpt
-- 
2.43.0.76.g1a87c842ece3


