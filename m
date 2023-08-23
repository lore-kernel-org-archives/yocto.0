Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA89C27C40
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 18:25:40 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web10.496.1692815136747095112
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 11:25:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=BMcMYeAb;
 spf=pass (domain: konsulko.com, ip: 209.85.222.174, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-76dbd877cd9so70931385a.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 11:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1692815135; x=1693419935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZSpoWV7IbzWbnJrDWWkPzrU9Hoin5nH8bv3WeZr/GcE=;
        b=BMcMYeAbVfo0yNyA1oUA7cJbws4V1pkVJw2vvhTVsx1N8J7Tt34lpLYRSAh98MJM9y
         TypSYo5C/E7Ww089t8ADFmHSy3jHTzXyOL05/Rig1JhtvdD0JqzvK/mk/Zq/RGvqlItB
         cidHOfE8K5fUETqZ+vrWNlPDSLcByK+TL3eNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692815135; x=1693419935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZSpoWV7IbzWbnJrDWWkPzrU9Hoin5nH8bv3WeZr/GcE=;
        b=GCFttipo7zPuwBgl1idXNlkC/dKCbiYpoFm+iX/Znkw5c+WegJaugDJFRb+KtOEOk3
         Sy5s/SoNsADyCj6MBkBTbEBYmxc8MwX1OAZOl4WozN0nolp6PAtrLMVzwKlveE7fENwe
         8hzww29rknAvzTnO8tt8rFYhNPvkLcC5jo8aDPDeyTEkvIsesNesYMbUmxZ6jZY7tKQ2
         ZOjnI4PryI09KmJWy5hGzCAO3CcG4QRjIH3Y/DU7SQ+V5eFn+sVIqgEEHtZIC4sCvrWm
         jZ3lEq90ZeqwObRCwS5m7eTuwq7hTpDRjDOiEaSlNg2Qei3oXRJ2YwBUpzYMU4y9FJHQ
         qyHw==
X-Gm-Message-State: AOJu0YxT2m3zsE/11v7sYjAwexNNJGkXmaBEYNhK3Hkrh8wSJCnCpJ0F
	IzzEmkjNExq1Ksl9e/RqNsXD5QK6C4O6rtiL/zI=
X-Google-Smtp-Source: AGHT+IHlE8pd9Gw5XmsWHLh+4Ia6YFwaGxvSDM3WsLcRgRKwepU4Q3sTJUcjF0SZebnoVHL30YLoUQ==
X-Received: by 2002:a05:620a:d93:b0:76c:bc55:1a4 with SMTP id q19-20020a05620a0d9300b0076cbc5501a4mr15852709qkl.39.1692815135163;
        Wed, 23 Aug 2023 11:25:35 -0700 (PDT)
Received: from ghidorah.spiteful.org (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a16b600b0076cf49bcb50sm4107431qkj.37.2023.08.23.11.25.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 11:25:34 -0700 (PDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-lts-mixins][PATCH 3/4] librsvg: upgrade to 2.54.6
Date: Wed, 23 Aug 2023 14:25:11 -0400
Message-ID: <20230823182512.1073623-4-scott.murray@konsulko.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823182512.1073623-1-scott.murray@konsulko.com>
References: <20230823182512.1073623-1-scott.murray@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 18:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60866

From: Chee Yang Lee <chee.yang.lee@intel.com>

update include fix for CVE-2023-38633.

Signed-off-by: Chee Yang Lee <chee.yang.lee@intel.com>
Signed-off-by: Steve Sakoman <steve@sakoman.com>
Signed-off-by: Scott Murray <scott.murray@konsulko.com>
---
 recipes-gnome/librsvg/{librsvg_2.54.5.bb => librsvg_2.54.6.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-gnome/librsvg/{librsvg_2.54.5.bb => librsvg_2.54.6.bb} (97%)

diff --git a/recipes-gnome/librsvg/librsvg_2.54.5.bb b/recipes-gnome/librsvg/librsvg_2.54.6.bb
similarity index 97%
rename from recipes-gnome/librsvg/librsvg_2.54.5.bb
rename to recipes-gnome/librsvg/librsvg_2.54.6.bb
index 59278d1..b917b76 100644
--- a/recipes-gnome/librsvg/librsvg_2.54.5.bb
+++ b/recipes-gnome/librsvg/librsvg_2.54.6.bb
@@ -20,7 +20,7 @@ SRC_URI += "file://0001-Makefile.am-pass-rust-target-to-cargo-also-when-not-.pat
            file://0001-system-deps-src-lib.rs-do-not-probe-into-harcoded-li.patch \
            "
 
-SRC_URI[archive.sha256sum] = "4f03190f45324d1fa1f52a79dfcded1f64eaf49b3ae2f88eedab0c07617cae6e"
+SRC_URI[archive.sha256sum] = "0ee6174140b5fc017e19a75c26e8c3324a560bf2c37f7abd3da06bd58542bb03"
 
 # librsvg is still autotools-based, but is calling cargo from its automake-driven makefiles
 # so we cannot use cargo class directly, but still need bits and pieces from it 
-- 
2.41.0


