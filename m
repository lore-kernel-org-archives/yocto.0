Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7690C25B48
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 12:02:28 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.16249.1698148945516667467
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 05:02:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Mv2q0+6/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-32d80ae19f8so3135314f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 05:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698148943; x=1698753743; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=4D3rg67upzQb5Cfa/B5x3TJt1uwCRoucS04kwHBZQqw=;
        b=Mv2q0+6/fXIAVCJWWq7vRJ0LcWo+aA73bfrlvqe9C79sLaFS2dQsLrD6QwF/MrQHRd
         2XyNSz0Ipzir2UTJnp46rv6gcn0Tlp5XrBPyXeRlwvQ1ZxUvIlCbKuJqB2WyvxqCTt6D
         b3IVcQ1W7mCA4bGxTS1diEmpsvEkQoLeBxfm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698148943; x=1698753743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4D3rg67upzQb5Cfa/B5x3TJt1uwCRoucS04kwHBZQqw=;
        b=wT8bAR7fGbTE/LUEdUuexWFhJWv7DTrmaaqpuGZJlEU5jXoKLO3apMx6K2cVq37lN8
         BNcX98h4qh5yccHaVNidX9o8hNzu8WI5ZjlcpZs7A3PfuEVp+rz7fDQY492Y0cf/RfLU
         NddmMl7/L4lAqxUq5+RbAkbnMPYOcTijKMqVTUnhhPXDAjrj4rjIyDm/D4nnao1PneAw
         qgjFLjios4dU8uyuDRfxDzyeMPQ8QaJFQwFPVNf4XTdvc/FVMndg2LNYKM/VY8nKl+12
         6gXLUrZIP6/2fKLTQeb4v8cbeMgDgslutF9Wi8LHV3YWTrJWRj2DU4lNpek5sQNv2E0t
         OtCA==
X-Gm-Message-State: AOJu0Yynvus6MNiWtkriEkW/Yv3g28/tF1w73JSk1YAH+bBo8mjyhqG0
	a2XQDJGdnH+JgVv9sOBJ5fIq01BE7IDC9+eHj/8=
X-Google-Smtp-Source: AGHT+IHU/nxpWUMmJZct0Cmv+L3PpYcJ4ZI1HBAUageysSIzM17GRuL08XmqcI0hOQfv/mmeZ+uVOw==
X-Received: by 2002:a5d:548c:0:b0:32d:9395:dec2 with SMTP id h12-20020a5d548c000000b0032d9395dec2mr8139717wrv.71.1698148942328;
        Tue, 24 Oct 2023 05:02:22 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:18d6:7c14:536c:fd67])
        by smtp.gmail.com with ESMTPSA id q18-20020adff792000000b0030647449730sm9781898wrp.74.2023.10.24.05.02.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 05:02:22 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] SECURITY.md: Add file
Date: Tue, 24 Oct 2023 13:02:21 +0100
Message-Id: <20231024120221.1243945-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 12:02:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61466

Add a SECURITY.md file with hints for security researchers and other
parties who might report potential security vulnerabilities.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 SECURITY.md | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 SECURITY.md

diff --git a/SECURITY.md b/SECURITY.md
new file mode 100644
index 00000000..7ccecc1f
--- /dev/null
+++ b/SECURITY.md
@@ -0,0 +1,13 @@
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
-- 
2.39.2


