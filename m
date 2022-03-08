Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E188EC433FE
	for <webhook@archiver.kernel.org>; Tue,  8 Mar 2022 09:27:11 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web08.6264.1646731630843586616
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 01:27:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GMNqCtkq;
 spf=pass (domain: gmail.com, ip: 209.85.218.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id qx21so37739167ejb.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 01:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gP42T8zT3mePw609OfmZ1eBasEJR+G6ExT5RdmkKYZs=;
        b=GMNqCtkqVKmliMEnxxXFpz5O7/9PDoOP8cU4jF5ZJRBYOBqU1aw8ZfbzYZskyebctW
         Du8rYC5mhrBHjCA7o9Tv3O+17aubmjkPqq/q2r8gZ9IoSL0RAHI8vHRCvTdDhCneJX5g
         lxxC/GjVcMT2i2ljdeDjjkHc0AGgLQJVPBFDpE3cTnisQb9QW3NBav/CcPA/Oiteg/k4
         /cFQpcw8lcVmacKeugaXMxj1bQvEVv1xoyQRNy1Z3PN3VHcbutvWPafbEQ1gTctT2Ff8
         7+xQYgh8p5iyPdNvDGDTO11OFWhtU74hD1FIX7y3iu6493vJ+WCkNob95JeduhHjll8R
         sbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gP42T8zT3mePw609OfmZ1eBasEJR+G6ExT5RdmkKYZs=;
        b=lFuibMnneKsjA7z9Up/PyLxb+S2/Y05nNW286ORK3BEZ5lsVYerTZlz+Se0C44OI5h
         /2OB915OkuaLzUnKxCqgeOLHTZeF5G6y58rBFlc2d3ZnVzT+HnPusz3m6CmUbmhiLASC
         aNrPZ2cjxFcuu7cgjHxzc5FZ5ERo+dweF4lKXoiENc5HGz5B72xTSPEn6a4TdC2kMu5f
         oViu4nZrD+Ha87xKCUDPAgrSTIEPmptOLXjh+7ukYJYk2gcZt/cN9bQ7IhQ5oVjrFOAQ
         3KrRSk5cde2QUPSlU62qHY68QRJMNfhf5d1iMIuJJAaJlb+0Kn+9SP/gN1itmSOLbAkH
         X4zw==
X-Gm-Message-State: AOAM531JrlcQRUb2/hUhv0plliJb3J8CcCFJt/e3pSolNi0uqZ0WSwBo
	qsSOTzA75j6In4l68RI+c1BzYmnQpAk=
X-Google-Smtp-Source: 
 ABdhPJxMQm37+XdX5zZK/yHPcWiPiijQyZ4HiVJKHBqgbKYquS/PXDly2YwyQgpBJL0WohrjBPFpLA==
X-Received: by 2002:a17:906:dc10:b0:6da:f383:86ed with SMTP id
 yy16-20020a170906dc1000b006daf38386edmr12294479ejb.391.1646731629153;
        Tue, 08 Mar 2022 01:27:09 -0800 (PST)
Received: from Zen2.lab.linutronix.de.
 (ip-109-090-143-203.um36.pools.vodafone-ip.de. [109.90.143.203])
        by smtp.gmail.com with ESMTPSA id
 gz20-20020a170907a05400b006d91b214235sm5629878ejc.185.2022.03.08.01.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 01:27:08 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Alexander Kanavin <alex@linutronix.de>
Subject: [meta-mingw] [PATCH] dbus: adjust for dbus 1.14
Date: Tue,  8 Mar 2022 10:27:06 +0100
Message-Id: <20220308092706.3436144-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Mar 2022 09:27:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56385

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 recipes-core/dbus/dbus_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/dbus/dbus_%.bbappend b/recipes-core/dbus/dbus_%.bbappend
index 7bb40f1..be88280 100644
--- a/recipes-core/dbus/dbus_%.bbappend
+++ b/recipes-core/dbus/dbus_%.bbappend
@@ -1,5 +1,6 @@
 FILES:${PN}:append:mingw32 = "\
     ${bindir}/dbus-launch.exe \
+    ${bindir}/dbus-run-session.exe \
 "
 
 FILES:${PN}-tools:append:mingw32 = "\
-- 
2.30.2


