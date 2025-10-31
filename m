Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D958CCF9FE
	for <webhook@archiver.kernel.org>; Fri, 31 Oct 2025 22:03:01 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web10.7009.1761948179930513271
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Oct 2025 15:03:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZxB1iEzO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.219.50, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-8803e8f440eso8658296d6.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 15:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1761948179; x=1762552979; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iK5Mes5W26nROBYa+izfWIOE/7pk6XrN0xgdPTqT7qg=;
        b=ZxB1iEzOzj8f9duec7BbF3WGpc1TA1ObiWOYMnyhl5BpG+5iscGJuARkLiP+NpOlBk
         9/8L7F1w56zvlPDpI2VxCMxohAU0osAuUrYmCb76xDGby/5h+tOtuILVDk6+D8tuioi+
         N0nd6HU69F80C+ViUKrqlZ1qd051KiHApV38w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761948179; x=1762552979;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iK5Mes5W26nROBYa+izfWIOE/7pk6XrN0xgdPTqT7qg=;
        b=hvqxNxSG608WpFv43IslEb/lpQ8zG8KvdVe26QE1j8oKFcJcta2+v4JjQsSishyNAi
         N9KKXBVrpF+lVoQDlDyRnJoQv40a+wg5H3RahweBxhgJl8MM+LjPErUkNPmOK2dxIUt4
         zkGlBXQq0iaaC3/5kOTLdqhA8dEE0epDkYZIhsWUx575ma3jMm+y4Ey4Unu+INft+9DT
         43nsh1waHEkB/IDpHhbgjnjf4kRTf3doK2acaU1mcJ6wbw8aZKwFCD3NbmUnVz99AI/G
         1uZo5SiOBLKLHr6sGgkNzNj2IgBDOxuA2NUa054zasJuWmO20oOs4qLI6mAFD00HYQCe
         Dt4g==
X-Forwarded-Encrypted: i=1; AJvYcCWfvzUgA/mqfJe0Qo2Yok1jId/AVU3kmB3XQzsWY+k6g2mLCIeP5l4Jve1AKsPtnhIMnOaoAA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyN0h4FuH+FX8ggnVKWGuolRiSFUWlW9EdmDSXg+sb7sWuusVlV
	yICgfSkDx56nNWf86tUIZ7wixOnFQ/bAZx0GMkrrHieBgNsL5bx3qcoVm8JZ500zRyeRPbddQzL
	QmAGd
X-Gm-Gg: ASbGnctbJSPwNK1l/wmowsFa3njCYsqseBu6w2sM3kpqpPApbfS9zD/JPPxF38pbrZQ
	Dkrd9QuZSHuUNYc9b8FrwPVpN7Q69jKSCPe9I9P0nXK5buVdAa5fM8F3oF73IIv14MANqljWfz/
	eDjR8sq7LnOCpxD3tnintrHKnltkkbY3+Lp4NmvN2H9VVstwMcCTHaAC396kPkE5xWDPEOh/I/Z
	bIRsr/41y2UnfUBJAnUFYIDOqIEqYb5dp5JJPRMdKRWeLMAXh5PgBzwRQ+GMX6LFdXSDsqPUA4r
	x9kBwMiekhj4cKqiaMU39s+GfOstrPlWnYTM8DQTFoMp7ukOZePt4JkgvmF/M2u4h2X0gvXeyC+
	IbdOf50r8z2mflKKtNuz5cKkuUD58m+UCyRnNlX6BfMyK8+1r3PO1mXmaykUEeQE6aR5LrFF14q
	lOxWuPqTdnpdjr10oFtnclwJ3dO0Hpsz5bluSgXDjRprm2wy5c9i+X21A=
X-Google-Smtp-Source: AGHT+IGuI3q09VlCniYPo2DAn2ZRDNR/zc3OApujD6MYSvLafbYLiQtdXp21THOc04nqEynbfs1Xqw==
X-Received: by 2002:a05:620a:4443:b0:8a2:bff5:40cd with SMTP id af79cd13be357-8ab9ba72e01mr605697985a.87.1761947627565;
        Fri, 31 Oct 2025 14:53:47 -0700 (PDT)
Received: from yoctolap.taild15c8.ts.net ([2607:fb91:1eeb:8e1f:15b6:68a8:131:b8b2])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ac02f84935sm181548085a.38.2025.10.31.14.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 14:53:46 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org,
	yocto@lists.yoctoproject.org
Cc: chee.yang.lee@intel.com,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH release-tools 2/2] relnotes.py: append PGP signing details
Date: Fri, 31 Oct 2025 14:53:29 -0700
Message-ID: <20251031215329.199723-2-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251031215329.199723-1-mhalstead@linuxfoundation.org>
References: <20251031215329.199723-1-mhalstead@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Oct 2025 22:03:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65989

We switched to detached signature files because clearsigning removed special
characters. Update the release notes to incidate the location of the detached
signature and current keys.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 relnotes.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/relnotes.py b/relnotes.py
index 951226a..4dc5412 100755
--- a/relnotes.py
+++ b/relnotes.py
@@ -334,6 +334,12 @@ if __name__ == '__main__':
             FIXES_RST += "-  %s\n" % commit
     print("Done")
 
+    sig_url = "/".join([DL_BASE_URL, RELEASE, "RELEASENOTES.asc"])
+    key_url = "/".join([DL_BASE_URL, "keys", "yocto-release-key.asc"])
+
+    outfile.write("Detached signature at %s\n" % sig_url)
+    outfile.write("Signing key at %s\n\n" % key_url)
+
     # write to RST file
     rstfile.write(".. SPDX-License-Identifier: CC-BY-SA-2.0-UK\n\n")
     rstfile.write( cast_to_rst_sections("Release notes for %s (%s)" % ( RELEASE.capitalize(), BRANCH.capitalize()), Sections.Section))
-- 
2.51.1


