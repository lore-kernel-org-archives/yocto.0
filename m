Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F131C5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 12:46:54 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.12105.1709124404838954925
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 04:46:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SvTgHc6y;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-33d90dfe73cso487704f8f.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 04:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1709124402; x=1709729202; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mx6HAaw9Bb5mTNPb9sRFyilUi+zn2qH0sUBH+BNWmlA=;
        b=SvTgHc6yzjil4YFvlzCQbkifp9SZXkoKsSBy4c14PAMeXhY0R0jCT66GppqUpqLX9+
         f6rfpp/rL1OANObSJqYewFDWrVt/XHP/vI1TBbW+S6n/cX6Nj57u9wfgWgr5db6uiue7
         UZaNrRuy67Kxf3HYhLtcWJDr03rLy2XSUiLq4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709124402; x=1709729202;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mx6HAaw9Bb5mTNPb9sRFyilUi+zn2qH0sUBH+BNWmlA=;
        b=PJs5CWXfJNEFu+Vhw3mwUwBDdR1tpIKA/Udo1uNBgLisPr5Wn+MrDA1KBz+Vgi0+Jh
         jZYFd6VdgPhVR+lVCy9xXskRNWzfqYR5ChFNunlNQSCAq/H5Rlp0Pc0/3RC8lMlJH9ok
         2b7v9frtErYRWNfUBAQ88MwdEDO/4EPhfs5m2yMMCEcSlrLgz9ANpTP1yAtON8dwZJQJ
         jHmJMpU0IHSX6Gig5APU+MFgVCzOHoSR/R2VCnViG+aN+6w0F8w28zX5LEOEhsm3AEPz
         PIZr+Omxgu1O89f5ezjesAmfuizqticgp1dr4LB5VNxoYSKQP7V196IChoIsve4zpgAp
         nspQ==
X-Gm-Message-State: AOJu0YwrQetOcVLvCDBC9ze0TNLhNvWFXf3MGdMiB0Zyu1ddQzHgGaTd
	mlg8HEqSeB3E3nU2h2Ewdj1r31GVm0HyrvqgFQ+0FOTeWcwoZpJ7vIuz9OwMsYGjtRf3ZbGkcVI
	+
X-Google-Smtp-Source: AGHT+IHOHYbVJpBiwof0oMkDkG/qWgmbq5PVYnYUPG1DCZbNYgdHjSrohraa2bHYnc9SD0W9y1jvvw==
X-Received: by 2002:a5d:64cb:0:b0:33d:d793:a210 with SMTP id f11-20020a5d64cb000000b0033dd793a210mr2925511wri.6.1709124402634;
        Wed, 28 Feb 2024 04:46:42 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:dfc0:7799:bd76:6cd8])
        by smtp.gmail.com with ESMTPSA id i4-20020a05600c354400b004101f27737asm2083460wmq.29.2024.02.28.04.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 04:46:42 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] gettext: Resolve locale alias file issue
Date: Wed, 28 Feb 2024 12:46:41 +0000
Message-Id: <20240228124641.1582401-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:46:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62632

Adapt to changes in OE-Core locale generation and match alias handling
with the change in glibc packaging. The file is only used for legacy
situations.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-core/gettext/gettext_%.bbappend | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/gettext/gettext_%.bbappend b/recipes-core/gettext/gettext_%.bbappend
index 4e18798..7bb9a4f 100644
--- a/recipes-core/gettext/gettext_%.bbappend
+++ b/recipes-core/gettext/gettext_%.bbappend
@@ -7,6 +7,7 @@ SRC_URI:append:mingw32 = " \
 FILES:libgettextlib:mingw32 = "${bindir}/libgettextlib-*.dll"
 FILES:libgettextsrc:mingw32 = "${bindir}/libgettextsrc-*.dll"
 
-PACKAGES:prepend:mingw32 = "libintl "
+PACKAGES:prepend:mingw32 = "libintl ${LOCALEBASEPN}-locale-alias "
 FILES:libintl:mingw32 = "${bindir}/libintl*.dll"
+FILES:${LOCALEBASEPN}-locale-alias = "${datadir}/locale/locale.alias"
 
-- 
2.40.1


