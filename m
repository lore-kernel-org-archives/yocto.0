Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9703EC47DDB
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 12:26:11 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.14191.1706790366074477124
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 04:26:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dnq4dG2+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3394b892691so415894f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 04:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1706790364; x=1707395164; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=qx2HEJUIfLv57OrLBCvIaAAyqIm+1aeZsjTe3vWoyqs=;
        b=dnq4dG2+efqx66okmGoW/v3B0thJ0TA6L1se6SasqJGKl3qMbfmIb/gV9bbBrc2IML
         ucGC2UOxKrYQrAlHoBd92ox55uGaubs0V2msqlyNQ4k5ftkGdTThuYVbxzOqKh593Eu6
         /LztDTU8+v9F76Ge5HbokoU3VNCq8+o4h+V/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706790364; x=1707395164;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qx2HEJUIfLv57OrLBCvIaAAyqIm+1aeZsjTe3vWoyqs=;
        b=KXRY9U44znZOOgki0ZVT987pNFIOULpxhgARQqdvrot/9xCag3n52CPZwMJNpbKEwN
         3qwE61u6CRPhflLQTsH0NMO6Le3gLy5Egv66uIra+gYF/ZXgb2Qs04aAjCgRElyWN8iG
         TnPW0fOpurSqDw38sHEre1WE7hYcOZSjoYAzIf3pdknmBGqnhf20p1xw1vBJ1nq70kw+
         thllMlXTMym9CG5fWCnMNM1chWh0Q64HWSAflbJAZvav3AceeqXy4+nCMp8/7Poh5zYU
         Bx2br2czaouRDltJBJyCh/QJ0WPvpjDS6NBpvt5AhK2nmTbSpbuRNt4uzg/FIKXRniPg
         FwzQ==
X-Gm-Message-State: AOJu0YzIjaqwqX/PQJLMqtJb0wrAjFa8oQ2jm9svnrNLBVk4aI9Hpv+0
	sq7hPk/rG3Ltt+m+fdkFPndapQU80t0aI8Ndny5rI0mPCRnGMfqz9Q/cyBkaIaKPJZuKDv8PUQx
	r
X-Google-Smtp-Source: AGHT+IHHJ9at6/Ns92fUT2/qcJSIXEsjojm+ilRdI0QlgESFZi7/PDJTn3hkp0Mv4TrryRYKN6xz9Q==
X-Received: by 2002:adf:f58b:0:b0:33a:f601:fa69 with SMTP id f11-20020adff58b000000b0033af601fa69mr4123363wro.5.1706790364109;
        Thu, 01 Feb 2024 04:26:04 -0800 (PST)
Received: from max.guestnet.cambridge.arm.com ([212.187.182.166])
        by smtp.gmail.com with ESMTPSA id bp20-20020a5d5a94000000b0033af280ec84sm10003864wrb.26.2024.02.01.04.26.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 04:26:03 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] layer-config: Allow layer add to be disabled on a per target basis
Date: Thu,  1 Feb 2024 12:26:03 +0000
Message-Id: <20240201122603.1552014-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 12:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62357

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/layer-config | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/layer-config b/scripts/layer-config
index cb16e60..93dc7e3 100755
--- a/scripts/layer-config
+++ b/scripts/layer-config
@@ -57,6 +57,9 @@ for repo in needrepos:
     repo_basename = repo.split('/')[0]
     if repo_basename in repos and "no-layer-add" in repos[repo_basename] and repos[repo_basename]["no-layer-add"]:
         continue
+    nolayeradd = utils.getconfiglist("NOLAYERADD", ourconfig, args.target, None)
+    if repo_basename in nolayeradd:
+        continue
     try:
         bitbakecmd(args.abworkdir, "bitbake-layers add-layer %s" % (args.abworkdir + "/" + repo))
     except subprocess.CalledProcessError as e:
-- 
2.40.1


