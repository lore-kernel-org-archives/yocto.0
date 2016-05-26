Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1CFE00DBD; Thu, 26 May 2016 06:11:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B448E00DBD
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 06:11:23 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id yl2so9003085pac.1
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 06:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=X/OKrP7SW2XthO5AgpFJkmYnl5NDHbKLkisF0a9Iqwc=;
	b=RkZ5+aDrCsYENxXKp1JVCnYCK3EnKW25UXctq286ooL0uLPW3Jpy8Qo53s74Uh0qtB
	PJ0UYUvYOse0maBesYdy1G0fNrKnsvYNyyThuhZ+7eM5rPOG5n+RG+tGaf7eMujD9Hvk
	qpjSg1hIxwZgA332XlFhqYsMMmF0lbeRA95tO/oIu8I64hQ23TEeExf+8VmSFnhussiW
	TA6M4rZzIh4zrDyLUY4y21P8UP21OceIQ+9vMiHMTypftFYetqlbDmP9X5xV/7Ejzw9c
	l9H64bDuu9GIzPkUBBXIMKWOQwZLRrlDSMTPIfpE6cpF0+CQm2+QgROQrMXS37yC2Mdd
	G81Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=X/OKrP7SW2XthO5AgpFJkmYnl5NDHbKLkisF0a9Iqwc=;
	b=KOfxFXBGcaEmWIDD5C/Ad9dM+45Yjc5/4kpbYka1fexEGjV4If+c2hNp2Wjtn31b0V
	HrOcrNQIOeCE1IStiS0Kbxx0moGvCdTpLSXFP1/uOj5cyvLs0tJ27JsN3aAuitTgTUeM
	uok9OwAYhDQExRy37sLjxNONlGz/Adnsa8SRGf3yXDsM4XnsGeFYkDyXhSCGtkUmH9m7
	zl+HvBXeSMbZGofseOF+Yf7+qHxmIimlQMT9WSLqhLalm+NO8uPO/FXF2XqKt+8KsWSY
	RzcDUAcEXehySPu48Up0XSLJVDw2eh2O2r5Qf6oZ3WBhDqFrfuTOtU3qkO+xY2MzB6sX
	bK+A==
X-Gm-Message-State: ALyK8tK1sm7r4iGjH2gPcdymc/ighRj2FbqDo4LEr/Iif6oraX0bfriOu08lSjtdQ3sUzQ==
X-Received: by 10.66.21.102 with SMTP id u6mr13983869pae.118.1464268282794;
	Thu, 26 May 2016 06:11:22 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	s8sm20541048pav.39.2016.05.26.06.11.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 26 May 2016 06:11:22 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 26 May 2016 18:41:05 +0530
Message-Id: <1464268265-14388-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] libselinux_git: fix warnings of unavailable patches
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
X-List-Received-Date: Thu, 26 May 2016 13:11:24 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

Drop unavailable patches entry to fix the warning, even we are using
libselinux v2.5 these warnings pop-up during recipes parsing.

WARNING:..libselinux_git.bb: Unable to get checksum for libselinux SRC_URI
entry libselinux-get-pywrap-depends-on-selinux.py.patch: file could not be
found
WARNING:..libselinux_git.bb: Unable to get checksum for libselinux SRC_URI
entry libselinux-mount-procfs-before-check.patch: file could not be found

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/selinux/libselinux_git.bb | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-security/selinux/libselinux_git.bb b/recipes-security/selinux/libselinux_git.bb
index 20b5534..d2e4a32 100644
--- a/recipes-security/selinux/libselinux_git.bb
+++ b/recipes-security/selinux/libselinux_git.bb
@@ -11,7 +11,5 @@ SRC_URI += "\
 	file://libselinux-make-O_CLOEXEC-optional.patch \
 	file://libselinux-make-SOCK_CLOEXEC-optional.patch \
 	file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-	file://libselinux-get-pywrap-depends-on-selinux.py.patch \
 	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-	file://libselinux-mount-procfs-before-check.patch \
 	"
-- 
1.9.1


