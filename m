Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67A0CE00D36; Wed, 24 Jul 2019 04:23:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39090E00D36
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:23:31 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id v18so44096406ljh.6
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=SCwOyRDLE+/bg5nlCcJDUoVjY1u8RC8mM5Kp5VoZX9s=;
	b=un92HF9yslsNr2UrR451bcr0CDiOSjTQub41Z7bQU7/33scesT5I7SX2gxrb6KFHhX
	RYOW7eEvhhYtocNPadWV/A2KCNoElNDZJKyPLCy60erhkYB6q5jNEYvcUbHTpOniChM7
	V1Efa0WQiVRYwktffyX7jxdZTEnWAdLBdlVVgnCV41CzoNmO2WagR4TPwEmzzM91xkm3
	sTx025KRG5c9+V9UpNUcoW4AX8NbF1FzfMwKCQE4GVNFPqf//198pvEIeq/YH0K1muuh
	5W9H4hhpBXGe0nrBkt4d6qh2vkyOVfrVs4t8Fu8Jb6/12D7OZcHT4w7KKptPD3+EcWm2
	to9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=SCwOyRDLE+/bg5nlCcJDUoVjY1u8RC8mM5Kp5VoZX9s=;
	b=UaHixaulEx9cN9YL3SJZVOZHoyhRmzRmJoItwjuZNy17m7EGz0Lv6DgT+GozffqXlq
	8H0TqhR2uVQxz8YVn3OYyPI/z3WbvdtsR9/4WhMRfehA2K04z6L8pGTSDgYQhmRDO1xp
	ADJp0ZssEvDFBHpDTLjbSdu4RuiFFn3axKHs8mt64jqt8lG/lFV3xk2B6nrWFtwUOZK/
	PxdxXZkEf+dSPC92WLqHd4lstieZsnx1p0UjOyQiTAc9OVJC+qnvxKgVPfnIib1rPZHW
	VbRMLX4dfp3GavV7GWbi00EXrnqCiVbx1SyYzPo8Qf+VBLZXkB54KexXqwHjN0sa5wN7
	E+wQ==
X-Gm-Message-State: APjAAAVgaMozs5n6U5ymvM6AyjTYNV0R2MrXtlAewbD2MHJu/Mzu8RrE
	Ea0H7XDKWImLjc7sfmFMTLDrWhuwWKA=
X-Google-Smtp-Source: APXvYqwCJ8ogcEUKSzvOn8sXGbMJnUeADYfE4lgQ3oNW+nJ7yaco90ngw9/8p86otiTjkf4/sojzdw==
X-Received: by 2002:a05:651c:95:: with SMTP id
	21mr43056399ljq.128.1563967409785; 
	Wed, 24 Jul 2019 04:23:29 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id d7sm6982113lfa.86.2019.07.24.04.23.28
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 04:23:29 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
X-Google-Original-From: Dmitry Eremin-Solenikov
	<dmitry_eremin-solenikov@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 14:23:25 +0300
Message-Id: <20190724112326.960-2-dmitry_eremin-solenikov@mentor.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
References: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
MIME-Version: 1.0
Subject: [meta-integrity][PATCH 2/3] ima-evm-utils: bump version
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
X-List-Received-Date: Wed, 24 Jul 2019 11:23:32 -0000
Content-Transfer-Encoding: 8bit

Currently selected SRCREV (782224f33cd711050cbf6146a12122cd73f9136b)
comes after 1.1 ima-evm-utils release, so bump PV accordingly.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 .../recipes-security/ima-evm-utils/ima-evm-utils_git.bb         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index 623de09c3ad7..6d4f008df334 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -6,7 +6,7 @@ DEPENDS += "openssl attr keyutils"
 
 DEPENDS_class-native += "openssl-native keyutils-native"
 
-PV = "1.0+git${SRCPV}"
+PV = "1.1+git${SRCPV}"
 SRCREV = "782224f33cd711050cbf6146a12122cd73f9136b"
 SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils"
 
-- 
2.20.1


