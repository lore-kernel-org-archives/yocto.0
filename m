Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F60C4828F
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 14:01:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.11904.1707487264921049446
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 06:01:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZHtkqgJp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33adec41b55so387790f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 06:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1707487263; x=1708092063; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LJt7bpLZYgDC++mD/vE6ou2aXGCL0+Hcr2vQnPvvHh8=;
        b=ZHtkqgJpJjdBCAiU1dIO6AxMU+iBO6dwCJLP7xA08g/aojdr0jxfUp/hIvDX1yU/iC
         j5scLzhbH/VSYKhnBYGvRDQ3peQ1CcL0nTcvU4byWcsXE7HadMMqHMpytQhhNnZljZ55
         YzI9SvCZ3+m4u0C4+U3umNe//EAYTna+mgEn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707487263; x=1708092063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LJt7bpLZYgDC++mD/vE6ou2aXGCL0+Hcr2vQnPvvHh8=;
        b=UdcRT9SSpJpH5yllBejePGsUVngPl2W6CbY0DTMuuixnoTbx/JrvR/SCniM7cFQoVw
         eWziAj5ienPLyI6neeYzEWJtKQNocVxYPvNyDNWGIG/hp37Nu8zHcO/ym51GzyW7PoZm
         qiZcgxBAhOkC6E1v786AevmCI+xrWBxDUC6INm1iy1LTt3a274ugwmIbnrzlMpbPD00J
         xhvXy3Us6LsQwjtDAPqJDBEV2hJqI8RCk9Te6a+hpJ7DufltFXDLQl9977TbBwGNZ8TU
         Bry9c3Q06dWjf0BG327bOL21b+MSVo2dsH3ofQ/E9TwhhwFRGJKhi8/GXYq4XAM7COWX
         ownA==
X-Gm-Message-State: AOJu0Yxxv3pnpGGTn8++MnKxvuh1OeAszSiR4hrNMgGNQs9aJbTEa1Ei
	y1kRkd11nmvIFXqZwBDP2OrYgSfx3UZGv04Ci/oMiwCsoGLIF3iWMbRWOolpEAcprMCbc0/uKDp
	1
X-Google-Smtp-Source: AGHT+IEmO59I0k+RxG4XdQsWWP/uVDZ1d+HoV7VDZvUW7NoLKNDRPThxLniGLYi+Cuyr4FrpyKTpZw==
X-Received: by 2002:a5d:6506:0:b0:33b:4668:8496 with SMTP id x6-20020a5d6506000000b0033b46688496mr1305728wru.64.1707487263175;
        Fri, 09 Feb 2024 06:01:03 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:47e1:ee11:154c:e6b3])
        by smtp.gmail.com with ESMTPSA id d23-20020adfa357000000b0033ae50e2c6asm1895009wrb.83.2024.02.09.06.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 06:01:02 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] layer.conf: Update for the scarthgap release series
Date: Fri,  9 Feb 2024 14:01:02 +0000
Message-Id: <20240209140102.3395109-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 14:01:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62449

Prepare for the scarthgap release.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index e34163b..ff34e6f 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -16,5 +16,5 @@ addpylib ${LAYERDIR}/lib oeqa
 
 LAYERDEPENDS_meta-mingw = "core"
 
-LAYERSERIES_COMPAT_meta-mingw = "nanbield"
+LAYERSERIES_COMPAT_meta-mingw = "scarthgap"
 
-- 
2.40.1


