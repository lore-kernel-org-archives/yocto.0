Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA233CA0EFA
	for <webhook@archiver.kernel.org>; Sat, 23 Aug 2025 19:14:35 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web11.3150.1755975925588915237
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Aug 2025 12:05:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@underview.tech header.s=google header.b=HMFESLpm;
 spf=pass (domain: underview.tech, ip: 209.85.222.170, mailfrom: vince@underview.tech)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7e8704c52b3so366554885a.1
        for <yocto@lists.yoctoproject.org>; Sat, 23 Aug 2025 12:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=underview.tech; s=google; t=1755975924; x=1756580724; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ZV/t7014RW/krF6kJCRBqi/0psSvIMpB6tL6Tdaklk=;
        b=HMFESLpm39/JCa1G13Nxb6RYE6siwzDK44ILoKPG3cjcoU3t1LlJvb+V74oemgRAYj
         H/bKqfexawgkA9Psvb/cdZoPujZvanN1sYwbpa0m87fVB1zArMjrRe/mS3RjHgYTqhAi
         2Tenk6CgJhMQWr3ajiW3o0AHehYoY1md7HkE7yxxu5C9KgU8mW7tbBCnReLc95TkPAK3
         i+aSR3dGiShf8NxcChoEU6ruqHNORbrBOr3t5iLBtd0LOzM5f917w0E62uYHPKC9g+6u
         GO3cK1osFgyfXuQ0kPgraq9HUIx7cygHvtLpA5QSn/Ej0g9GxCkS+R7CDC8RV0jSE8yF
         hOng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755975924; x=1756580724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ZV/t7014RW/krF6kJCRBqi/0psSvIMpB6tL6Tdaklk=;
        b=PG06YUBuDTvLIi8D7xsJzGfleFsX6ncS1XyYOG4pGvZy6mOGwPMT/7gWo5Or/NSfoO
         jsO8/QVkzip+PWCq6CoL4r2BqaDy4oA/fuyu+UYNRI9MGor1vu1TI+lvenVFgm+Al8lC
         FQOeXk3MFujGmN/mcHXtbmSRIFSQALV56/nEZzFSU61gFWI0iizwZ+ZyayV43vuGCGvA
         iXJkadfyCXAhhpP+tnFg1XrzC/xzeDxDgY7oW07PMA65PunwXd2NVzx9e0qUBmRW+wji
         TW2n+2RijhN5S1Sv5FSLe/ccP4E5QkBxCW7knHs1QrWadIKbgmXB/88ax9rpZXTxgCJX
         74jg==
X-Gm-Message-State: AOJu0YykDYK22Pph9qrRJRRUkSFOTioom0T/ix+5E6jT3kx4miV40Gla
	yCIPTRKE1JMu897AvYsKHQ6gor4kfCaVFYDqyt/ZZzz3UGrodtGc787MJezKlIysfxVfQNHX8tx
	wiFGm
X-Gm-Gg: ASbGncvPJz+aB9nw1dX+QgoH3nyTtUidx3+TQ63QmmEnbx7yhoYGc9OxhrpyA+BGFqm
	5kte/6l/V4j6uL90SUQwVm7inHCr63H2lOmWLw0Zeso/epqs8EOQMF0VmqbFp2hByU5YiLOxjvV
	0luNhLB3+EFKF0PsTAN+B+zPWRIbxTpo9+HQ9jipOVVkh2jaF595PUluMAMO5aEgkVr2PsMwqJt
	rwcR7/lOxGI8tTYhtipsjKIzD3VXDIo5dW5g6mwBsS4LJqTZoEa9hDAcTMj45k9wuuUkrqaqDfW
	Gm8aEwVPJLzXerYztccKyU8tbTtVn04INZJ3C6ZNulkIdb9SIMM0qBs7l2jWRdFVOnhW25+KVZH
	XRWHdaROwoLc=
X-Google-Smtp-Source: AGHT+IGAw++IcnRb/u2TYHBScg9BN4Ke6NUIxS7R7Q7VpOnLK46a4oucaZzvxJk8FLuJPYBBJakg4Q==
X-Received: by 2002:a05:620a:1a03:b0:7e8:911:2311 with SMTP id af79cd13be357-7ea1103a248mr900753685a.53.1755975924067;
        Sat, 23 Aug 2025 12:05:24 -0700 (PDT)
Received: from vince-server.. ([2601:406:4d01:1820::6d26])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ec2f1cfd61sm166570585a.38.2025.08.23.12.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Aug 2025 12:05:23 -0700 (PDT)
From: "Vincent Davis Jr" <vince@underview.tech>
To: yocto@lists.yoctoproject.org
Cc: Vincent Davis Jr <vince@underview.tech>
Subject: [meta-selinux][PATCH 2/2] selinux-python: fix No module named pip
Date: Sat, 23 Aug 2025 15:05:07 -0400
Message-ID: <20250823190507.195486-2-vince@underview.tech>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250823190507.195486-1-vince@underview.tech>
References: <20250823190507.195486-1-vince@underview.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Aug 2025 19:14:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65786

When running the do install task run
into No modules named pip.

Add python3-pip-native to DEPENDS
so that pip it available.

PREFIX variable not being set also
appears to effect whether pip is
found or not. Unclear was to why
that is as of commit.

Signed-off-by: Vincent Davis Jr <vince@underview.tech>
---
 recipes-security/selinux/selinux-python_3.9.bb | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-security/selinux/selinux-python_3.9.bb b/recipes-security/selinux/selinux-python_3.9.bb
index b452887..88850ad 100644
--- a/recipes-security/selinux/selinux-python_3.9.bb
+++ b/recipes-security/selinux/selinux-python_3.9.bb
@@ -16,7 +16,7 @@ SRC_URI += "file://0001-sepolicy-fix-install-path-for-new-pymodule-sepolicy.patc
 
 S = "${UNPACKDIR}/${BP}/python"
 
-DEPENDS = "libsepol libselinux gettext-native python3-setuptools-scm-native"
+DEPENDS = "libsepol libselinux gettext-native python3-setuptools-scm-native python3-pip-native"
 
 RDEPENDS:${PN} = "\
         python3-core \
@@ -111,7 +111,9 @@ FILES:${PN} += "\
 "
 
 do_install() {
-    oe_runmake DESTDIR="${D}" \
+    oe_runmake \
+        DESTDIR="${D}" \
+        PREFIX=${prefix} \
         PYLIBVER='python${PYTHON_BASEVERSION}' \
         PYTHONLIBDIR='${PYTHON_SITEPACKAGES_DIR}' \
         install
-- 
2.43.0


