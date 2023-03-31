Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D99B3C77B70
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.59637.1680279684325525349
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=mEV41uWa;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id j18-20020a05600c1c1200b003ee5157346cso15736192wms.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279682; x=1682871682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WfMFzYpo2cuEuOjVhyvZm+8vZvz6cH9hVE9A7WyE+pY=;
        b=mEV41uWa/SU3xl/5y856aAWKC8uaRjHpbxYN6yFuYZvs7InuRe5UJkoxVO3h/tkcgU
         r0OsrH+acLuog1sapPoCcqHLS2siE9zjfWRIYyVPT1wf7sxqBzoADvJqqT/6gs9trNJe
         AJ5y16D2U2YUb4krLTGtqi1FeFDwGQMp3wztXd6GmIZqtTe1p+ki9SY+Uk7948tee4+V
         AQfAAYdLx7EB2AJ8UEm2/578BcxwjYds0+ZSo5NM+PapdBkOPWoSW4DGfwj+nOIPz5+j
         o/QQj8zwJPl+o0tJ464zHrfQ96ay0b/1/9YLB17sngQ+e4cGFzCB1ruASp/JBeXN+s4s
         A/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279682; x=1682871682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WfMFzYpo2cuEuOjVhyvZm+8vZvz6cH9hVE9A7WyE+pY=;
        b=F9aRjhnOhagaKAiYX5Niuh9RyOjFJ4kMq4RxsG4U6j3JP0EJN/xrFKaBrLNdv8EEGn
         tXlO7HZbGM9QAyU6YWjuY58Z2Cl9rtetDOcQAEh+KY9IdyAtPRzJHdelZaG+0IfCH9cH
         nBTbLxDyQxUf+aJZu6d8IcWdqaaL5pS8UhAbbYcDXW9OWaiC3qj/WMm+sWzE5Idlh3JF
         AomgsEvG57mKNu5CL6ZoYTF83IXYqpcZLifxC0jFQorvhTs4LsHAS/nvpLWsKD0Lb4a7
         bufe1V60mEqIa1AFm2jxktSQt72MKDfufLkOZSL3HgSgatu2nQp0VF+x97Csz0GkeEPP
         ifhw==
X-Gm-Message-State: AO0yUKUGWZCz+PXmwvbTg03Nv7luSswJDs3EGLz037hYOX62BGOMbreG
	5ZyhRGkdMCi8OCguDv27172xtg/cekHTp0IB
X-Google-Smtp-Source: AK7set9PFUXmLA0BPvJdy6f92O3vOhihYBkOjctVX0rliGJ4zsUqZkLgFao7i3SqCjtMzuSP8mEc7w==
X-Received: by 2002:a1c:7303:0:b0:3ed:e715:1784 with SMTP id d3-20020a1c7303000000b003ede7151784mr21607070wmb.15.1680279682567;
        Fri, 31 Mar 2023 09:21:22 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:21 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Chen Qi <Qi.Chen@windriver.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 07/16] go-helloworld: remove unused GO_WORKDIR
Date: Fri, 31 Mar 2023 16:20:33 +0000
Message-Id: <20230331162042.1801766-7-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59576

From: Chen Qi <Qi.Chen@windriver.com>

The GO_WORKDIR is used only in go-mod.bbclass. As this recipe does
not inherit go-mod.bbclass, this variable is useless here.

This go-helloworld recipe was made to inherit go-mod.bbclass and build
in module-aware mode. However, it was found that we need to build go
recipes in GOPATH mode in order to support offline build. As a result,
this recipe was changed back to only inherit go.bbclass. But the GO_WORKDIR
setting was not cleaned up.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-extended/go-examples/go-helloworld_0.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/go-examples/go-helloworld_0.1.bb b/recipes-extended/go-examples/go-helloworld_0.1.bb
index 0faab39..d0de035 100644
--- a/recipes-extended/go-examples/go-helloworld_0.1.bb
+++ b/recipes-extended/go-examples/go-helloworld_0.1.bb
@@ -11,7 +11,7 @@ UPSTREAM_CHECK_COMMITS = "1"
 
 GO_IMPORT = "golang.org/x/example"
 GO_INSTALL = "${GO_IMPORT}/hello"
-GO_WORKDIR = "${GO_INSTALL}"
+
 export GO111MODULE="off"
 
 inherit go
-- 
2.34.1


