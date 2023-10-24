Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9F6C07545
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 12:02:38 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.16253.1698148954613111509
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 05:02:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OKkBXuqO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4084b0223ccso34552815e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 05:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698148953; x=1698753753; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5njFdwhPboOA/ZgSk9queq/FL62IuS9Wyicv2/At2HE=;
        b=OKkBXuqOMTxCF7wMzXBF1EQECOiRYTc+EW/GJjw4VJmv7l50t/+1pL4HpbqUYcJQkP
         nu+HXk96OVGS74ou4/B+DSYqeHLU8TXrGTZsuZGo4tEi7R2EmgMkmgjxrxLf52bB0oWG
         8aU1riu1RoRa2cLdWIJxCgzw8XM0d3stgFfdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698148953; x=1698753753;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5njFdwhPboOA/ZgSk9queq/FL62IuS9Wyicv2/At2HE=;
        b=QGwiCBkOHs6SY34pbEKjk2z2wH4+aFYV6Sg3hBVprnB8/Wb2MawSZHIyAWiEXVUvpm
         6OBATmE9WLE+crIZvuiFgTXB9aH/rvNL2M2jY7er4THuaiRnW64G/jCfwcuN3/CgdvcM
         poGD58GIojr+TIP0tCYqv2JvLBQHkzygb30H2iduj8gvnFrR9BnwYh01M31kq8LWSycG
         jAArLZaMUD2hzTsQA39Kg5ZhETFcsrdtrl8Cnm9zvaUSMxIDO6pkXcnpMbe0v/igdnwV
         kEmU2fMHzHmXoEzYdW9TNVQk56+DnHMDqzhRYQcGcgM3RNSvIDTZ8qzCg37G0W1qxP6W
         Qwng==
X-Gm-Message-State: AOJu0Yy7R39zyEUb7Yoy19dk2h+PAj1NPi+AtPx0em9hHcJKMJylOQuW
	WHTGL7VyjwnRoH9hDbxJB582hqxTbxKeScK3wHc=
X-Google-Smtp-Source: AGHT+IEyQyemUkNiqJwuGRWLcPtUVA7axoW7tT9WhYNiz8aJjtLuDDfCpZgn1tANzc2mbrH2vP9P6A==
X-Received: by 2002:adf:cd12:0:b0:32d:9d66:5742 with SMTP id w18-20020adfcd12000000b0032d9d665742mr8918298wrm.10.1698148952296;
        Tue, 24 Oct 2023 05:02:32 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:18d6:7c14:536c:fd67])
        by smtp.gmail.com with ESMTPSA id k12-20020adff5cc000000b00326f5d0ce0asm9794684wrp.21.2023.10.24.05.02.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 05:02:31 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] SECURITY.md: add file
Date: Tue, 24 Oct 2023 13:02:31 +0100
Message-Id: <20231024120231.1243968-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 12:02:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61467

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


