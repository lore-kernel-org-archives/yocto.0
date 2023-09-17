Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EA6CD13CF
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:48 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.41005.1694994939462821282
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BFFYJuSz;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-59c2ca01f27so16112517b3.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994938; x=1695599738; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GDIsOJMRyRP+MG/lBMK+oSKyu66PVxTxDx+2WHsF14=;
        b=BFFYJuSz4wmevBCWw5ndLusw09Eo+3RdqtVq6WYCa1eo8ppXwvAG6jrTNH8qlT0aNP
         6IulLgEvO4QilhoXsGiwWCszZseumGPERSN5cU88qTtrFYopdJxv00y73kvIYJTmMyTj
         sDvnuj5Ap6PbtW6DGkkR0AyGVc2b3L5Y+MzL9Nmty1Eo/FCNs3ClgVPd7m6PAdEq1dhW
         Np/tuHYDiLTpNx0Tljy9wYsV+Jpvxj9VU8RsaFrQQ5biuA0tnA3ziEWvqSeWac3h3hMR
         5qoSB9GzLdwyu63ukTLEYMD1tUD+Le2ucmJj3meTZuPG2eZV/AJZBHBv5lMYlc8dAY1t
         MICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994938; x=1695599738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0GDIsOJMRyRP+MG/lBMK+oSKyu66PVxTxDx+2WHsF14=;
        b=IWUeMMwzwXnsbcc3MDkyYDhsBDTehMoBnz99+jcw36GLp75XuLO2zB3aPhwoiSI1N/
         JDw1FIegB6Zv4wfImxDLjUtZe+wHWu96QLwvjEtfuHIB3hwZiKmKGhTqHpDHIxXJidOX
         6D49J2cvIXY8HwqUUiWX1+UED+QBTZG0MXwKEsN7faYMcU+afppW5BjNGTXysPYeSapM
         LixGDfHlQt5byovRzu8lKkmkp0ENXYYNaGtUodZ/pZy16rioLkcIZ5LFernFyeYrwh3P
         7GKTq4FAUCqncbzUOGNcIuN0uFZcLc9TZYAxmkRx0N5DpXIwUcS6h4POdKTr+rYHEjeR
         NdHg==
X-Gm-Message-State: AOJu0YwK09k/TFYFf0mIOWZNlYo38kELrD5iSvhcEkATU5S6/pi6zB7C
	P2j7a+4FeDdRvv6bS1uuNPhfKlkHsP4=
X-Google-Smtp-Source: AGHT+IH5WtUs0rso220I6CWVcf5YJU86TprRP4hd9zNxSSjyV1Od3a98YJxKvi+P40NMh4FSulAYAQ==
X-Received: by 2002:a0d:cb52:0:b0:594:e4d1:bd7e with SMTP id n79-20020a0dcb52000000b00594e4d1bd7emr7244524ywd.5.1694994938466;
        Sun, 17 Sep 2023 16:55:38 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/7] libhtp: update to 0.5.45
Date: Sun, 17 Sep 2023 19:55:32 -0400
Message-Id: <20230917235534.2871544-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230917235534.2871544-1-akuster808@gmail.com>
References: <20230917235534.2871544-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61028

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.44.bb => libhtp_0.5.45.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.44.bb => libhtp_0.5.45.bb} (100%)

diff --git a/recipes-ids/suricata/libhtp_0.5.44.bb b/recipes-ids/suricata/libhtp_0.5.45.bb
similarity index 100%
rename from recipes-ids/suricata/libhtp_0.5.44.bb
rename to recipes-ids/suricata/libhtp_0.5.45.bb
-- 
2.34.1


