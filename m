Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F94DCD37B4
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 23:55:48 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
 by mx.groups.io with SMTP id smtpd.web10.41006.1694994940215752140
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 16:55:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=l1/UZE1l;
 spf=pass (domain: gmail.com, ip: 209.85.128.172, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-59c0b5f984aso26756877b3.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 16:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694994939; x=1695599739; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fAmXwDmAHg5CcK9LavvQe934zC8Se9niPEGnlD1YueY=;
        b=l1/UZE1lFdeA68x75MnFKoXIdyUJOV6htEGq/xJ2xi8hwrSIhjpIIAf6YdvGSQO2Ja
         DSXj5Df6C7DMEAEYw/t8PWyuqmvCQhjDZmk0RRumjWq/TJFDbDl3IRBjXW4bOeMU/h6X
         DUdURy0Rm5PN8FnUEXa2eQHPpN5cCqSldVv8EIjr4u1fz+KNWl/jSLtk1u9GPyWNUmyB
         mplYah029JyZKdz8gYDy46c51donRKQUW0/7BRzS7/bhcNpzoSai/F989WRiYSipPpQr
         sYGgfX8QVoTf+JD25oBCGZgglJzlgOXNVigNs6c3PA7CYzNH8djGUV++U4qlyG5MuAYS
         uhdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694994939; x=1695599739;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fAmXwDmAHg5CcK9LavvQe934zC8Se9niPEGnlD1YueY=;
        b=P/yZLbWwodm4wvE0VbbtgnRF9BXVg8ct4Y17oL7qZRgMDBhoQmBM4SuucNcY0omRBR
         Sg1YTwXgNyTWEQi3fSpPx9qzt77msFbm1uPDO4PgTLqyhPi6UTROriYQuMNQNm2DnyxN
         fkZy6lhC8e5Lr+2yeGUk+A5XJrEuU2LmsSQDPvoMLooNzQpHqG+Y2ZqLuhkF2j7w88K2
         TJU36j+sAssRUKT+FMfD5mydzdQa3eAjMHPmhQGao6bEfjzUnF8FkEH//3V+DoKzH2bJ
         T2ic/iMxfohM1P82Cdp9vhCAtREA/GnRx2hHoMbEejO9qSfIfm5Et+5KADKj9rICMs/0
         4UvA==
X-Gm-Message-State: AOJu0YymOulARspJgvH7reLobrwPQsQR47Y/k0HGthMO5JZoGPmuvGqi
	917KhwcGDtuybLIRsBYCVEP4CcoeDdg=
X-Google-Smtp-Source: AGHT+IFN0Iqvh9e9wj5NN0KAbxk/yXiohx5HPKa5G37DybFBtljMY5YKUeK+Yt1fUyIHCwgr8Lk2Yw==
X-Received: by 2002:a0d:df97:0:b0:59a:f131:50fa with SMTP id i145-20020a0ddf97000000b0059af13150famr7872526ywe.47.1694994939241;
        Sun, 17 Sep 2023 16:55:39 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f623:9dad:2eba:f0e5])
        by smtp.gmail.com with ESMTPSA id x9-20020a0dd509000000b0058c4e33b2d6sm2209291ywd.90.2023.09.17.16.55.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 16:55:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/7] swtpm: update 0.8.1
Date: Sun, 17 Sep 2023 19:55:33 -0400
Message-Id: <20230917235534.2871544-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230917235534.2871544-1-akuster808@gmail.com>
References: <20230917235534.2871544-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 23:55:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61029

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/swtpm/{swtpm_0.8.0.bb => swtpm_0.8.1.bb}     | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.8.0.bb => swtpm_0.8.1.bb} (92%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
similarity index 92%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
index da86c47..7a538da 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.8.1.bb
@@ -6,9 +6,8 @@ SECTION = "apps"
 # expect-native, socat-native, coreutils-native and net-tools-native are reportedly only required for the tests
 DEPENDS = "libtasn1 coreutils-native expect-native socat-native glib-2.0 net-tools-native libtpm json-glib"
 
-SRCREV = "2ae7b019370760e17f4f2675195a91ca53950eda"
-SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=master;protocol=https \
-           "
+SRCREV = "d2849a9f5ced70438d67036693438344b47b4161"
+SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.8;protocol=https"
 PE = "1"
 
 S = "${WORKDIR}/git"
-- 
2.34.1


