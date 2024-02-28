Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D048C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 20:32:38 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web10.7904.1709152352819180571
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 12:32:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=bVyMyUxK;
 spf=pass (domain: mvista.com, ip: 209.85.128.170, mailfrom: jpuhlman@mvista.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-6093247d1acso2041917b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1709152351; x=1709757151; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qVAYUZw5124LyFf2dQK1zeUOKcu+guMcj7OiKKFJOQc=;
        b=bVyMyUxKBUgAlO8oog6NOUhljCAuf3NVEo0q5urjsZvj5lOPzO3acub08sFrItBs9M
         x/qnMHm6KYE1HugSEC8ejU/FTJ5O+udJ4EXpkvaJLkFL1iVqrsW+1B1suocWq2otLerl
         RCesekanR4OLbVjWL/JyY9Fhcqb+GpGY3/yB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709152351; x=1709757151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qVAYUZw5124LyFf2dQK1zeUOKcu+guMcj7OiKKFJOQc=;
        b=DMTMLuCbYIDoCY7zPlZsKVnTCRlpSPOCWZDjq0xjs8Q04rSzZuS9wQMW26365Ttye+
         ZO5Tgs3YrRyJagR1wL3waj1gm3jITcCJT0k5vwecnMXfaJJCYaVb67TNxJo5sE0r0it7
         +f5HR7LIiyF+DvAEPsAL37SSUbg36UsiggyulTycrwIQlZ1mIrXCzjsYAFIHJPOciDXe
         n6+pl0rVkcn2E5wMoY10zEtU03P7nqY+YLjk25auumwyRBB3YryWxRKfAkd91w1q1Mda
         Nu886ZrfqJNl8ldyEYjiXmvjyqIVh1RsnDQyX0G2z7UnZ6WlYGD9yofpXzWfmzDAcJ4T
         BWYw==
X-Gm-Message-State: AOJu0Yzvl/TiJbioQ1yYbSAiFNylhaKswBjhAHDh/A2JpyANqJqdOSxo
	Ur1RJZImbl48GFhIGx8hSTEBhyr9aUoBp7ptgVMA+bdsrGdeHbnxR+1R8tqyqHH2pjYEtXkMVZk
	e
X-Google-Smtp-Source: AGHT+IGDepb/WtxvyQ9sovictwmDkRjlTYPZcxJvrHYZYcsKZMXCdXxm78Tv9yi8wdXhHIvohs056Q==
X-Received: by 2002:a0d:cac1:0:b0:608:b676:bc15 with SMTP id m184-20020a0dcac1000000b00608b676bc15mr210321ywd.8.1709152350143;
        Wed, 28 Feb 2024 12:32:30 -0800 (PST)
Received: from brown (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id x135-20020a81a08d000000b006094ac70480sm48263ywg.51.2024.02.28.12.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 12:32:29 -0800 (PST)
Received: by brown (sSMTP sendmail emulation); Wed, 28 Feb 2024 12:32:22 -0800
From: jpuhlman@mvista.com
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH 1/2] arpwatch: fix misspelling of PACKAGECONFIG
Date: Wed, 28 Feb 2024 12:32:18 -0800
Message-Id: <20240228203219.1861150-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 20:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62642

From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-scanners/arpwatch/arpwatch_3.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.3.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
index 7a0a776..391a82e 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.3.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.3.bb
@@ -23,7 +23,7 @@ ARPWATH_REPLY ?= "${ARPWATCH_UID}"
 
 PACKAGECONFIG ??= ""
 
-PACKACONFIG[email] = "-with-watcher=email=${APRWATCH_FROM} --with-watchee=email=${ARPWATH_REPLY}, , postfix, postfix postfix-cfg"
+PACKAGECONFIG[email] = "-with-watcher=email=${APRWATCH_FROM} --with-watchee=email=${ARPWATH_REPLY}, , postfix, postfix postfix-cfg"
 
 CONFIGUREOPTS = " --build=${BUILD_SYS} \
           --host=${HOST_SYS} \
-- 
2.31.1


