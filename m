Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 710EFCD13D2
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:48 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web10.41008.1694994941078012691
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=I0VFt7zy;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-59c04237bf2so31112057b3.0
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994940; x=1695599740; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NglPXKgPyAz1asSd4tfbsXXr5p1UEER2Nm3unNbpBsE=;
        b=I0VFt7zyqsD2BJPahNLTEl4s7DpiomcX1Pm3dUpHSPlHQt3JHmx7rjW8SLcb5F40UL
         7tpQs4ryB0NtwFn/uvPol10gQGcSQbybmXvxzi7giBqfeYfh2g3PJMdXSn8O41ffbsRM
         tEE3fa9dqA5LCrXsCK7esXzSbevngSbDgVSBRpzl6djO6bssnFpNpyKXHOGrhhW4jY6g
         bZyafLXC3q7vy7xbN3kZoWNptHwy64ttJ5XpZb7MyX+K47xUKcRmG18kWSPJZWBVV8ZP
         +5HPOwEyiLKM6EWySF7+GJfXnewKIXmCxB0UqcHPnx//SrSzeOb++Yab/a5/wW8/SpuO
         4KJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994940; x=1695599740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NglPXKgPyAz1asSd4tfbsXXr5p1UEER2Nm3unNbpBsE=;
        b=cme4t/2FXqh6KkOotjfAFxEGdll0/xLN4xdlOeF71yL+vhjcPv8WwePEivcoztghNp
         kjdlREHwlB5Wzz5GvVttjLpI+F5rH+uazi/8FgDL59dRzYPQq4sMNcfnEOAkHoCt5Nv7
         NaGCDDX2wHHzBQvzafYQG8mxlYYbLhyrfsuhjn0tJ99KRD8tv7PuSt40M0CvQ14CaUZT
         PUhvi1BdN9a2zrU0Nw3TeQjA1/MS+1TZ7Nv6BHT59Tz6qFEWBTTN4Yb/uB8ZCU4GF8DE
         tKaMfyKjI4g53+Nqgc2QktkUn2ECvdDx3dKTO0cTnNi9wggwkHsX1xM80Sv+nXbo0uYL
         smaA==
X-Gm-Message-State: AOJu0Yx6B317Qfdo08kCH58jdYrM9zoT2MRjzBbd5XAFECLcYFXS2QJT
	SllfVvmyBGjb8XoE2PToXMua2hGBCKY=
X-Google-Smtp-Source: AGHT+IFJvyK3GsKuBa8eRZPI8EsIdrCPPPa6TYSMQbKTE5blySlJg5Z0mIj7lBMb8LLZY41j4O3niQ==
X-Received: by 2002:a0d:f506:0:b0:59b:eb87:9bb6 with SMTP id e6-20020a0df506000000b0059beb879bb6mr8024297ywf.43.1694994939982;
        Sun, 17 Sep 2023 16:55:39 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/7] lynis: Update to 3.0.9
Date: Sun, 17 Sep 2023 19:55:34 -0400
Message-Id: <20230917235534.2871544-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230917235534.2871544-1-akuster808@gmail.com>
References: <20230917235534.2871544-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61030

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-compliance/lynis/{lynis_3.0.8.bb => lynis_3.0.9.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-compliance/lynis/{lynis_3.0.8.bb => lynis_3.0.9.bb} (93%)

diff --git a/recipes-compliance/lynis/lynis_3.0.8.bb b/recipes-compliance/lynis/lynis_3.0.9.bb
similarity index 93%
rename from recipes-compliance/lynis/lynis_3.0.8.bb
rename to recipes-compliance/lynis/lynis_3.0.9.bb
index 0a49812..8c796c0 100644
--- a/recipes-compliance/lynis/lynis_3.0.8.bb
+++ b/recipes-compliance/lynis/lynis_3.0.9.bb
@@ -10,7 +10,7 @@ SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz \
            file://0001-osdetection-add-OpenEmbedded-and-Poky.patch \
           "
 
-SRC_URI[sha256sum] = "98373a4cc9d0471ab9bebb249e442fcf94b6bf6d4e9c6fc0b22bca1506646c63"
+SRC_URI[sha256sum] = "f394df7d20391fb76e975ae88f3eba1da05ac9c4945e2c7f709326e185e17025"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.34.1


