Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D429E776DA
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:48:01 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.98547.1696294073119710015
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c9i0KGmE;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-417fc2da919so2696201cf.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696294071; x=1696898871; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HFrox42TbyVi9faQ3E8dapwLF5rDn6+dA+EQLqKqvyA=;
        b=c9i0KGmEfL+yhl34S5t8EwqWJXfaWFHcAPS8h5wRDCJgWGPfGIP/C6lG3xUW4mdpSI
         iI2SCup2drLmqBlmLDN1k+96EqwAr510eV1QeAGa8o3iQmJ5GiN3bYfgD4HqRTDEFDEc
         tttel/505X8rb1hdGVSwZwKl9Uob+TfPd1Mt60CW6pYqNOoEJvZv1wrDskhadtLjB08Q
         uDhZSjlRSbTeiLMjf1o8bgQ7s60BMnmg4aiRMehiNHs+9csH7CaxmPPYzbRaZo7IX6Hm
         ZLMi1wPEu9OaJVSCYeQEtoxg+hPGJPaaV97+B1klEWkqsJklzS7iLJdU9CMbTWHjUrg+
         QpYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696294071; x=1696898871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HFrox42TbyVi9faQ3E8dapwLF5rDn6+dA+EQLqKqvyA=;
        b=dap3Lfd7rgft8+NC8rf93z0ZoPN74QpNl71PpDouDqYwAgl2kSsKm4dkSeiL9SgElg
         wZ3AbBYByeXdluRVGmPImn2wbOtY6bQXKiZxc/9jk40R6v4G21p/EHAlZoAIybJosa1i
         3UrMFuTVkL6dROWWp5fKhM5oQ0+OF3Ogw767FMfy891/Q97d1NmRFB4FoHFcakQQyuZL
         0Z/K/Zbcy9DlDmHU6vdGCMxtw+v4+sRCMPjlo6hW+oQYaE8EnjXCxty/pH7Kmz84ixyP
         sV7demmD6gyP9Fy3li844OjcGSdQSDTK2v9UCq88CBwO9Xg8D2BW1pgFyrSXpVE0oWRp
         /AEQ==
X-Gm-Message-State: AOJu0Yw7RwtkxeDffQz5rToDN0yZDN4rnAqgNrwdqhYTKHvv+xy2/JDX
	F6j58jygvQxWm+s0EpYazkoflTdoE4nHfA==
X-Google-Smtp-Source: AGHT+IHpss4dZtnPz3LNSn8a7dP+mjEbpUUFFBtpHkov8UelZY2n6TsC7K3K/ydZmkUbYj7JF+QITQ==
X-Received: by 2002:ac8:5bd2:0:b0:412:1e0a:772d with SMTP id b18-20020ac85bd2000000b004121e0a772dmr14775500qtb.12.1696294071291;
        Mon, 02 Oct 2023 17:47:51 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o1-20020ac86d01000000b004199c98f87dsm48877qtt.74.2023.10.02.17.47.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:47:49 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 4/4] u-boot cleanup: organize DEPENDS
Date: Mon,  2 Oct 2023 20:47:41 -0400
Message-ID: <20231003004741.6021-5-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231003004741.6021-1-twoerner@gmail.com>
References: <20231003004741.6021-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:48:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61207

Group and sort the DEPENDS.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 951e82af7743..e79c471cf5ce 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,6 +1,6 @@
-DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
+DEPENDS:append:rock-pi-4 = " gnutls-native"
 
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-- 
2.41.0.327.gaa9166bcc0ba


