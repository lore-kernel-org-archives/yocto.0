Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E80C47082
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:17:58 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web12.20904.1649617737183568927
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:08:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O6/xtE2W;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: ticotimo@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id
 a16-20020a17090a6d9000b001c7d6c1bb13so14549328pjk.4
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Apr 2022 12:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wLPxoIcrs7D54p0xqvu6Be+unhoE3U/V6Tkv1+8fe/k=;
        b=O6/xtE2Wb79wlFG4qokHiqOThg4zTGkoxx1tY0+/OgT7nwTQBOuYVQJVy5xuSBHkfN
         XGn3DAwRzLuvaaxImjaoagQu7X/Qt4Od1JYXP26bZEr7BMWnuW0FO7jtzqODKsZBnb47
         uMdItdZFq6NZuVM25aAlzEyd/ccmfIrtGcY1EIooQq+KJwNOx3lIzRce76Oq2JsxidCc
         JwRHMcKTLMaVDIhMCqiobvnQkLkPNDWTHNC0eOfLCcuIZGNORYyCG4bdifTtKxlQATqg
         hkfpoDUxUsEUYY2wDYuwu0RoG5AU01q6T++E0d6PGGz3ArjuP3/y+RmGXyTjOC78l9WZ
         LHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wLPxoIcrs7D54p0xqvu6Be+unhoE3U/V6Tkv1+8fe/k=;
        b=q6AxNW6RnjGgVNcwvnMB80ySeSKzZZ8VZRWA35raIvK48S/BjpwmJn7vQeef5ZwBW6
         j07TXfQwhf26PUlPqtOhWuk2PF3cW2zTeZYttlt+e5fnEWqKrWf6KmiLLBsmcTCEFsd0
         S1rx5cW4eQUR2dBy42xXqrY1fZa3oMvF5PJYuC1GIZK29y0KQEQ2aXMKHSu7vBEOVh9g
         54DygVAa53gq1ZbLtdSMNaenaYvLrDV9gCof2DCFSh2o8q1J57lWx+ZCZt0yOVCjDDih
         Au/8mBcEXjPbYd5m96yVe6gBcKO8i2dQUGqiRIz4MBftpdaTHwb9oulKQe7hExSryWPc
         ZngA==
X-Gm-Message-State: AOAM533egGPe81K/qCYmMiZXCeei0mhUEaT8W2lZCQoyWYRXvFRBg1Gw
	pcnAKduWhrvyZIee32gqSzYz8BYKXW8=
X-Google-Smtp-Source: 
 ABdhPJxjcVH8Z+IiheVX78yRo7nra2oXttBbnPn1DSpWDEreHyq9ZVkeXWZ7xjP5bhe2lge7ktsoRw==
X-Received: by 2002:a17:903:246:b0:153:84fe:a9b0 with SMTP id
 j6-20020a170903024600b0015384fea9b0mr29172969plh.163.1649617736367;
        Sun, 10 Apr 2022 12:08:56 -0700 (PDT)
Received: from nereus.hsd1.or.comcast.net
 ([2601:1c0:6000:1b20:48cd:8d9b:66c9:7179])
        by smtp.gmail.com with ESMTPSA id
 f16-20020a056a00239000b004fa7103e13csm34001213pfc.41.2022.04.10.12.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Apr 2022 12:08:56 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: bluelightning@bluelightning.org
Subject: [layerindex][PATCH 1/4] layerindex/urls.py: fix about url pattern
Date: Sun, 10 Apr 2022 12:08:39 -0700
Message-Id: 
 <75f052d19dbefd4d54dc3331bf11acb01eba88ea.1649617288.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649617288.git.tim.orling@konsulko.com>
References: <cover.1649617288.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:17:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56711

The url pattern was not including the trailing /

[YOCTO #14445]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/urls.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/urls.py b/layerindex/urls.py
index 45dbd3c..de15bb0 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -128,7 +128,7 @@ urlpatterns = [
         EditProfileFormView.as_view(
             template_name='layerindex/profile.html'),
         name="profile"),
-    url(r'^about$',
+    url(r'^about/$',
         TemplateView.as_view(
             template_name='layerindex/about.html'),
         name="about"),
-- 
2.30.2


