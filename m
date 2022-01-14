Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 465D8C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 05:55:18 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web09.3761.1642139717065393857
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fWvXv1l+;
 spf=pass (domain: gmail.com, ip: 209.85.210.170,
 mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id x83so1872522pfc.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 21:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=cM+uxKPOUJkjy/JmUGQ3nZk2l2gzqS8rhpZWY97+970=;
        b=fWvXv1l+D6wlXk45+IH7mI7Nr+R6JwORf81LGeA247369T9XDgwx6rOtC8mU+b5oF+
         Z4amFYUve9JGjD2eb5WzINgGHHm311P/FO+Ymbli5P1dP3qzXSSx8zRhGsuqN2w6Jw4o
         2uBNCUUSigQEZtmDbpbFo2vgfaOGv4pyH/tn+d/minwXExlgV9+VI33XoZpfYrhjTNXA
         tZ8zPCZmcZXmkw0k5WWRROVRALmg/wmCEbHv4FwYYF6mAuXO1+412CDpuz2qQESoWkli
         qB+QsMwO5Y4bTyagMqe7PBhK9B5juCd7TETjOE/qYkV10W6Q7kBgcBFKzF3Q3c5olGk4
         XwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cM+uxKPOUJkjy/JmUGQ3nZk2l2gzqS8rhpZWY97+970=;
        b=iFmeD0tr/FxH74eXVv1kjto62odHIzaiLagMZ0Q/1K12vN6tyDhs9o6kjG5bOapaoh
         9x9fxWN2FkjR8tpPVjcBwT4EB1MgUCjtAb6EaxkGzq6Bdv+7ZyhmBtoaACBXbbmjDfEJ
         j3KTMpPvu2PpjpbLaoyIjdXt7StXWOUWkr5g/wrRvispRS6fukMtaoaRgRUaz+bpIWYy
         S4Xpf6Vruc4ftWP3MrbODnxHDMIHzTPXZUBzhV9Gs/vklt+OjAOCd0/PBV4tsu8avm5z
         uIWbP+GhXyaTq6YgfDX4LTdr+75orgZCkK5HAjpAzu5t6oYfpkiCS6CBKZQcs6Bukgz3
         YDDA==
X-Gm-Message-State: AOAM531eu9eKgn9TrzN8LNUj7qo/LuQ3NodL6lt49BypYTb+PhnqsRKm
	cxG4GqcUMZncr9C0X/EEhkqxySUoorXzFQ==
X-Google-Smtp-Source: 
 ABdhPJxT9L+0XA3p3U3nHIRjkUSFMtZvk9xwZ8A0k5/yhYArpjKxOBrAgu8So0Wo6SnOLTkPnN9Isw==
X-Received: by 2002:a63:7783:: with SMTP id
 s125mr6662986pgc.462.1642139716328;
        Thu, 13 Jan 2022 21:55:16 -0800 (PST)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:bf73:e59:4f56:2dd4])
        by smtp.gmail.com with ESMTPSA id
 d2sm4514714pfu.76.2022.01.13.21.55.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 21:55:15 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex][PATCH v2 05/18] requirements.txt: bump to Django 3.0
Date: Thu, 13 Jan 2022 21:54:28 -0800
Message-Id: 
 <094c89bc70c0add040e880dfb2c84a3b617de4af.1642138698.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642138698.git.tim.orling@konsulko.com>
References: <cover.1642138698.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 05:55:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55856

Incremental upgrade towards 3.2 LTS version.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 1c2c4a1..ac69589 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ beautifulsoup4==4.8.1
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
-Django>=2.2,<2.3
+Django>=3.0,<3.1
 django-appconf==1.0.3
 django-axes==4.5.4
 django-bootstrap-pagination==1.7.1
-- 
2.30.2


