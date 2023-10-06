Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 870CEE92FD7
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 02:44:44 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web11.4782.1696560277382904406
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 19:44:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KzwrBmrH;
 spf=pass (domain: gmail.com, ip: 209.85.167.171, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3af8b498d31so1180051b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 19:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696560276; x=1697165076; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E0gSIXw1uUxM1bJcbEDAsdpEVE6E8+zUVZAs2yov0Sk=;
        b=KzwrBmrHd/dnFD+18NjtSUcZgxkt2qpR3r8BbBXSxslQwPhpn6YQ6f6Xfp6LwVKaEP
         dZmY+1zHnKRbv9ehstCJO1lFVPLhkqkD7m3sD+yH8ao+N7HdTEX7HpB8gyh+oqB+t7OZ
         UaiCq0Utu19OeyibrZo+QlrN/MakB/9pBpE8td7oRUCYJa//cACGjEtV4C9oDhB9vQ1o
         sYcTE4/pL1ic86Us+inG73xgEWmZskRs2qC7uxurdgJ3lzAceRQooZDj1rwFMZW7gLAo
         ZWAuhQEOMYxzJCi+aHYxdC3w5je01A45OpgzrBUEYig292x457je5S8fCeUVRzDgC50B
         7FrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696560276; x=1697165076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E0gSIXw1uUxM1bJcbEDAsdpEVE6E8+zUVZAs2yov0Sk=;
        b=rLLk7xAn13elzGU92il/Fs4QlQLz47mLJSI/RUQUPwN2wG/7b+oAJWNz/8QuEPHfga
         mYRjOajoqGra/2B9rohhqu0tOR78RhNHH9RekCgxu8tTmgau2RZlgQjOI7rD257hoceg
         vIs7sjCj6XUor+ZjyG+8E3NTr66abrghgrYQzJdVz/REqi1oF362NSb3pnUjXVKRWgYE
         Bjn5chUAa2QxFhyaNzVZvypmQrPtaaowiMJQLRGZfWSUo9W1fQrlYMzKz3SjH/npV61c
         ZWmZK8ZuqvB9X+SH1SAHpHBmQK2Tlpm0AdxTrEqC+Dd0W9jptMeFMC5w69FHJAZj9Jeh
         UA+A==
X-Gm-Message-State: AOJu0YwOttizHIJaWIGt+bzI+l9N1m4fz4u6RwBSQIDegHM5pkC29n7U
	K7sZywywVVbuuaIObDObiGd2JoXWPSw=
X-Google-Smtp-Source: AGHT+IHFT2JFuPp96y9AXNIeTq1ua/tBKpJIYwXEiIIpcaye1DiSG7/0VPQoFn1NjwbbNUrvRkgHCA==
X-Received: by 2002:a05:6808:f8b:b0:3ae:1446:d48b with SMTP id o11-20020a0568080f8b00b003ae1446d48bmr8407828oiw.3.1696560276307;
        Thu, 05 Oct 2023 19:44:36 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id fe21-20020a056a002f1500b00690d7da743dsm293303pfb.161.2023.10.05.19.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 19:44:35 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: "dependabot [bot]" <support@github.com>,
	Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web 1/3] build(deps): bump pillow from 9.3.0 to 10.0.1
Date: Thu,  5 Oct 2023 19:44:00 -0700
Message-Id: <20231006024422.38381-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 02:44:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61255

From: "dependabot[bot]" <49699333+dependabot[bot]@users.noreply.github.com>

Bumps [pillow](https://github.com/python-pillow/Pillow) from 9.3.0 to 10.0.1.
- [Release notes](https://github.com/python-pillow/Pillow/releases)
- [Changelog](https://github.com/python-pillow/Pillow/blob/main/CHANGES.rst)
- [Commits](https://github.com/python-pillow/Pillow/compare/9.3.0...10.0.1)

---
updated-dependencies:
- dependency-name: pillow
  dependency-type: direct:production
...

Signed-off-by: dependabot[bot] <support@github.com>
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 5bc4659..5cc07a4 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -19,7 +19,7 @@ gitdb==4.0.9
 GitPython==3.1.37
 kombu==5.2.3
 mysqlclient==2.1.0
-Pillow==9.3.0
+Pillow==10.0.1
 pytz==2021.3
 six==1.16.0
 smmap==5.0.0
-- 
2.34.1


