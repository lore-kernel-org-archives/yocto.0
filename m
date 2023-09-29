Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 164CCE71D4A
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 15:10:00 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.20083.1696000192092520772
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 08:09:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=if4hgeyU;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-5859a7d6556so835523a12.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 08:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696000191; x=1696604991; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xrpprv0il8SJAtVhmYZxlZTYE0mi1y7SDa5TX6AX5ws=;
        b=if4hgeyUj0Pn5m053cr6j4ao1jPcm6T6uU96W3O0rSXvTmj57TL+igVwrHK+X8fE4x
         Ut+FZ4ryIbXImBtPncQO/EysTC8eMW433UQfx0s1BlF4Vnk2zUVFLIY550OzyDRNhV/S
         UIvrbdRmuVJcSyN2wBRujgdnMouS+5S4cRiBtTmgGdPXdvwf+KjbyLIhcjR6DoPTg6O/
         Bp/WgLHUnuCHrjw8J8KLD30P9zuuWq/n/uuuk/01mlo+96j/e5aVOFIj1HaLhlRpYMye
         JhsTQBb+S9C+fWQDLhB0mAZpBdmb5l85sttC5uMCLwh3yrEI2dAwS+zjbk5SFZ5UrDhg
         Ncgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696000191; x=1696604991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xrpprv0il8SJAtVhmYZxlZTYE0mi1y7SDa5TX6AX5ws=;
        b=F8hv/iV+DAh0uthJ3cEMHg/KQQcISyO1d5H1zFo3AdJ6F/EUdf6v0Fs2pje4+RgR1e
         leh6pHyh5m0ezzSN464T1yNX0S33jjwiEggFuXxhFjgjLfXUR6biZ5gXygT6SmxEVBIG
         vOe4g068C6+vBve+PrnsL9yXwC0+eVqBubLHUo4ItMIjmpG+Jys2UgzAY4QVEigViXxf
         IFHlq3pccsm8HobjH4frsQA3mZHtP14PNnsI0KOAhuWJotd8VYDJjFDKagZN53ZJJZ8s
         6UfMTn1MogxiL3O2i9MKZ8WJ/QfeHmbTDoggwwmQ/XsaYNEtNCH3XNzdD4fUE8m6QSlu
         MA6A==
X-Gm-Message-State: AOJu0Yz6TPX+M4UmzGQdOR1ITuePRKhb3Zyq8jrL/1sTN/0JWDwy9D5w
	JLBQMjgnv6q94kYK24pQLLCQPUrNd7h2CQ==
X-Google-Smtp-Source: AGHT+IHfAcrsmBBElOTjbbtZVXlpWWJV5U9XarAq9sPrPwnugZGi61oBibl2P2SsyZXNr93snTplxw==
X-Received: by 2002:a17:90a:d515:b0:277:81f7:8169 with SMTP id t21-20020a17090ad51500b0027781f78169mr4351939pju.9.1696000191236;
        Fri, 29 Sep 2023 08:09:51 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:1244:ff8c:57dc:4464])
        by smtp.gmail.com with ESMTPSA id v22-20020a17090ae99600b0026971450601sm1581255pjy.7.2023.09.29.08.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 08:09:50 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web] build(deps): bump gitpython from 3.1.32 to 3.1.37
Date: Fri, 29 Sep 2023 08:09:43 -0700
Message-Id: <20230929150943.1645476-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 15:10:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61169

This release contains another security fix that further improves validation
of symbolic references and thus properly fixes this CVE:
https://github.com/advisories/GHSA-cwvm-v4w8-q58c (CVE-2023-41040).

https://github.com/gitpython-developers/GitPython/blob/main/doc/source/changes.rst

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index b86ac6e..5bc4659 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -16,7 +16,7 @@ django-reversion-compare==0.14.1
 django-simple-captcha==0.5.14
 djangorestframework==3.13.1
 gitdb==4.0.9
-GitPython==3.1.32
+GitPython==3.1.37
 kombu==5.2.3
 mysqlclient==2.1.0
 Pillow==9.3.0
-- 
2.34.1


