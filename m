Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAC3BC4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 18:49:42 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web10.32257.1698864577765633763
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 11:49:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MREQNjzs;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6b5af4662b7so148728b3a.3
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 11:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698864577; x=1699469377; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yT14v9ZKQFtmarBAtTl0wJlU68ckXEPMx25tuaQeWHQ=;
        b=MREQNjzsRre5kVrP/717XfJ4oEBKOr0H32DBUcxqK+EMxWxiLv7BUgRn/3ZuEHRtAT
         nQI+N8Xk8PGDEP7c4wu9XlATNFTAo5zvpS5qrusnseEILa3bXk/sYmid43gN65sU/QFE
         ugwuWISydjI1cagPba3pokWY6+VlIJhkXeukPtJrxvKdv6n7rKWrtfBCpv3eeihYJG1U
         KSc4PlgZIV4v0qejUcTXbqqX84u63ulqiTVIfd+xpoB2w60zOwWqlyG9X2aWT6jA1c8y
         Dt2Jm7Ro6sPapl8d6Fpfc/OogVH7mO8CE+QTmaCrReTM0kz/zBBAe0sRs7dJC64t11fU
         +1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698864577; x=1699469377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yT14v9ZKQFtmarBAtTl0wJlU68ckXEPMx25tuaQeWHQ=;
        b=ZRgIiffZtj0WWnTdIisyzMPrEU8cHpoKSUnqb7vqmSvJOIUUttBsHaZjmtT9wiXXyb
         PkWRR87DfSNSoFvZZ75AWwRcj9GfKmTLZWxwq9Ttkvk0+xKp9KVQS6+zm/aknGi0B5/G
         nJkE2GJIOYULYvSl/ZiGamNRJnuxxfU4cfrRYS0nHMSLgY6E/cIO8virQPFB5bGpMtP9
         KGkO7r+4bAfrMpHDYAXFPv9uya3638P0fgtlepcwwTkykTJ9yKXqP27GoeKUixoEJ7/p
         UhPFrVi0mpGqV0IUsvBbrJrpf6OUvz60n65/XptCCE2+yGADvOh1xdEyQhdwxFO7zBvo
         8Npg==
X-Gm-Message-State: AOJu0Yx7W9Wxd3azOxy1uw+ISPVR54WXK2JY2PO/2Sf6vukq1Z68irhk
	Q3PiQxOlE7NtiVzOp5Ud4W9uWWvmJ9y0bw==
X-Google-Smtp-Source: AGHT+IE/rSw2Wj3Gnos5zFocKJH8uvOhVLTIIpRd+IrB1EdvuOGPDnzpi6ua2URmc2aRIyoGxhqn1A==
X-Received: by 2002:a05:6a20:4414:b0:181:82f0:6f77 with SMTP id ce20-20020a056a20441400b0018182f06f77mr970672pzb.61.1698864576512;
        Wed, 01 Nov 2023 11:49:36 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:5857:1859:58b9:947c])
        by smtp.gmail.com with ESMTPSA id gu23-20020a056a004e5700b006bde8e1f0adsm1600519pfb.98.2023.11.01.11.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 11:49:35 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] Add SECURITY.md
Date: Wed,  1 Nov 2023 11:49:33 -0700
Message-Id: <20231101184933.279637-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 18:49:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61563

Add the generic Yocto Project tools SECURITY.md as a first step.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
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
2.34.1


