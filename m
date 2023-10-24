Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5AABC07545
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 12:02:28 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.145979.1698148939643201517
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 05:02:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gqbVni8/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.178, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c503da4fd6so64700721fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 05:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698148937; x=1698753737; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5njFdwhPboOA/ZgSk9queq/FL62IuS9Wyicv2/At2HE=;
        b=gqbVni8/B8VbWdnHJVjz+rugVmPorDDlogtKcPDzLz6nydApAB7fXE50ab8BJf/rjw
         2m7mGkdGmDch9UdObqJvqHwDeSCpQe0A9IBeSrlgGa/HWrb58t8YHyh/Hx/FbA2IQJ4g
         uVFBAVKPA4kGWudCMK1KnN4ua9td7gD1lT1PU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698148937; x=1698753737;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5njFdwhPboOA/ZgSk9queq/FL62IuS9Wyicv2/At2HE=;
        b=aUkHsUpcYPDZ0HhvlvzoZ4AMLti3+rGJCefUoxTeq4usbFypH8+NcPJEwVGxeCMh1Q
         jxerBW2e9zI15+CZqDqDdjfVwKgj65By4Eccg2FgY3q85Jn40cGSdEq9Lky7/r7NwzFs
         bVoZ51NUhXL92oYFOd8epNl875SxWjM8+B+33oLv/ctGlVaElv5dDSEUZDl2ilTLJW6y
         zLfb5fsEo8Po3oOuw0312+chdJb3gmg6z2VAMxR9zh4oIvXwHgJTvub8lQvpv/yjiS8D
         wFojIyH7lRkjKDsjsfXW65cBzl4GrPwuVTS3fD4ng22QzlJDaLutiPQ+/oOdC1ZKKW3d
         XfUg==
X-Gm-Message-State: AOJu0YyxGN4VVwJ2XjQfsqDlKf2XfedhwL1qsb8tGAnugel/X5tFSWS2
	t04/gnBAbqd1/PVFJJmo+xgQoFv4deW1xov9Vng=
X-Google-Smtp-Source: AGHT+IHCj10eUSwbQiVBwp4o/vWN3/iNVue9Bvsp0xbOSKEXqURjY/ZOMc6pbq2OsqUOzdFHw4Wv6A==
X-Received: by 2002:a2e:b896:0:b0:2c5:103b:b0af with SMTP id r22-20020a2eb896000000b002c5103bb0afmr8183976ljp.24.1698148937154;
        Tue, 24 Oct 2023 05:02:17 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:18d6:7c14:536c:fd67])
        by smtp.gmail.com with ESMTPSA id u1-20020a05600c210100b004068de50c64sm11676198wml.46.2023.10.24.05.02.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 05:02:16 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] SECURITY.md: Add file
Date: Tue, 24 Oct 2023 13:02:16 +0100
Message-Id: <20231024120216.1243928-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 12:02:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61465

Add a SECURITY.md file with hints for security researchers and other
parties who might report potential security vulnerabilities.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 SECURITY.md | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 SECURITY.md

diff --git a/SECURITY.md b/SECURITY.md
new file mode 100644
index 0000000..7d2ce1f
--- /dev/null
+++ b/SECURITY.md
@@ -0,0 +1,24 @@
+How to Report a Potential Vulnerability?
+========================================
+
+If you would like to report a public issue (for example, one with a released
+CVE number), please report it using the
+[https://bugzilla.yoctoproject.org/enter_bug.cgi?product=Security Security Bugzilla].
+If you have a patch ready, submit it following the same procedure as any other
+patch as described in README.md.
+
+If you are dealing with a not-yet released or urgent issue, please send a
+message to security AT yoctoproject DOT org, including as many details as
+possible: the layer or software module affected, the recipe and its version,
+and any example code, if available.
+
+Branches maintained with security fixes
+---------------------------------------
+
+See [https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS Stable release and LTS]
+for detailed info regarding the policies and maintenance of Stable branches.
+
+The [https://wiki.yoctoproject.org/wiki/Releases Release page] contains a list of all
+releases of the Yocto Project. Versions in grey are no longer actively maintained with
+security patches, but well-tested patches may still be accepted for them for
+significant issues.
-- 
2.39.2


