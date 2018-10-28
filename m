Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0702E00C1D; Sun, 28 Oct 2018 11:50:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 652D2E00C06
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:37 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id u4-v6so511885pfh.12
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=i6qF6MuqIKhsdqEuywaAIU8sYfsfrB15uvQJaouLz8U=;
	b=ttW8vraEVoZ15Yy2EVXmAOWjhkXbjyeUXhS2+1muWgw0XxJXR6EdsvsHLpDUsgN7rA
	hn/TXF2OoKTOc5J1tMI4ufZ5TzknD3I8dZ/Z7abKXnkkZFV3xfbsz7TmnA1tSJpoVNR1
	y72cHmcpGKKnt/0PW0GmYI7vuR5RtDfvD0xOOkFdyTGx7213SEzTTaPQcTqJhqJHhfYP
	SXraK0I/foNcbcrRmix7k4+HEdZN6orvg/uM8S9k7DAr4qnQ+h1waDxZ7NvGJ5+BUTM4
	xdxn9obkZW7jCDkKgluT4NkzJbVPhYSp5Lw06Nz77xoBksR0d06OscgNYQCpgjOPRChl
	Ho+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=i6qF6MuqIKhsdqEuywaAIU8sYfsfrB15uvQJaouLz8U=;
	b=FovpDaaEvIx+EaAk93T3dmZi5s5pDNYsdmU+IB9NEX5vV+RHeadngKWXIfZ2Cqrx7h
	wXWkia/I23YWjObPQcBp3A2jzXtN3iw914Ml8EBHQjILJb612jn7xN1IGjhXaKaG/3Gj
	BozTrKRUjxtHCqi9T1IzFGhcpy9PVyRaKUYKhqqQGrhODtTUkZEMqU7AJUSqGf5cz2qA
	mpV2VidC1iAd0FNrkVRVMw18If1DD+s829oxM9MoLjZng+7YpTEMUhdFXnn+oxlug6ky
	cIRnJJxod5CNBLWR9b9GRPcZmptNc5bZZcr/Aq4CGZE1jgE5utIdDjPXv7Jh7z4obhRJ
	k/WQ==
X-Gm-Message-State: AGRZ1gLqgXGT2aySVh5oP80XMNGGJTRVn6w9bBaxUYIm784eozwDPc5f
	6ZcUH/C2StVenzbRA+9PeQ5LWRT+
X-Google-Smtp-Source: AJdET5f8EzYDs7t+W9RcgkUegdv4Jzku8JILHoBJ6J2C3zdfiN7nWaNEN/c9YjXCY5F7+KfEoaFAyQ==
X-Received: by 2002:a63:6dc8:: with SMTP id
	i191mr10690820pgc.215.1540752636729; 
	Sun, 28 Oct 2018 11:50:36 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.35
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:23 +0000
Message-Id: <1540752628-10832-8-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 08/13] security-build-image: remove X11
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 28 Oct 2018 18:50:37 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/images/security-build-image.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-security/images/security-build-image.bb b/recipes-security/images/security-build-image.bb
index 1a7af86..a8757f9 100644
--- a/recipes-security/images/security-build-image.bb
+++ b/recipes-security/images/security-build-image.bb
@@ -6,9 +6,7 @@ IMAGE_INSTALL = "\
     packagegroup-base \
     packagegroup-core-boot \
     packagegroup-core-security \
-    os-release \
-    ${@bb.utils.contains("DISTRO_FEATURES", "x11", "packagegroup-xfce-base", "", d)} \
-    ${CORE_IMAGE_EXTRA_INSTALL}"
+    os-release" 
 
 IMAGE_LINGUAS ?= " "
 
-- 
2.7.4


