Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2361E00D31; Thu, 14 Mar 2019 16:35:57 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B2AAE00D2E
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 16:35:57 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id i7so1845399pgq.0
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 16:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=x0mgs1GeFBPsG18DP6IM23qwrW2neGYocMb45goL3JI=;
	b=eu/xsFRNQ5vB4s3OBimPaJAUm+c8eb7AkZ2BcrvA1c0kcGb4yWb0q3NAw0UsMxhD5Q
	Oip9NWGyOOj+GcfflaXjbCYCmLTVPPqyj85WLFZn2q/aMNmENUE2+TKgZlkfumo2u8+P
	hYm5XNKbLDGLj8tjqmS1cngah8WzIb6d1dauWaPdXcunw9uE9LKFyAY1GDLoNUj2JfHz
	v5L85YXuYG+vZgoTFwW9+nEQEsg8vQ55x+VZGCc+dRA8047gJEbxBbF/Wkug79UuqAVp
	inoRDmsIrB/hNHDEmxmLP671MewABfnqcqVc2H+9eQpw2QNsI88SHHmoHmOUIuYOJG4Y
	3N3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=x0mgs1GeFBPsG18DP6IM23qwrW2neGYocMb45goL3JI=;
	b=f4oqcnKi6zqBzS6Aw8m/lagPJ8h7TImzHZzR3tRpsLV78oq7Z73GcdPT65ky57AIFO
	T4RSY2pW77PSvkk/YLH39USNVrfKOFyuVgirlIT+rMUorjoPYTIx/gmuBXQ6lF+CPT/6
	I/JPjTGZUQguDmwqNXQrniGhTr+vvTjxTlM8MSN95CqxrhDbmEfrCv7FIbzJjomdmslS
	dvJ3cO90dMh1uRqztCxpvs9Tnuc1S0V1anHDig0mHU/LUX12cU5GoZQI9T3hOsKIPBi3
	qrr9woMX8b0XQh26r74r0OqyFAMt05EM772YLNCuJTbjZLB0rY4JP9pibuAUwSkMcJPo
	OI0g==
X-Gm-Message-State: APjAAAXqd89gve2OxDyr1p+S694l9FvCvnRP8gfKcG5HJo0Auv64UUK6
	Y58i1YLhm38FUZto1um+mClqPnZ3
X-Google-Smtp-Source: APXvYqyZiy35zJOnN9Ka2dOuDWLw7A8yBbq0IMm7KKeqBNvjB3x+VrOtEM8Dq5Vl8X8gd4JbY+2+MQ==
X-Received: by 2002:a63:fe0d:: with SMTP id p13mr437484pgh.366.1552606556573; 
	Thu, 14 Mar 2019 16:35:56 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f16sm373634pga.71.2019.03.14.16.35.55
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 16:35:55 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 16:35:52 -0700
Message-Id: <20190314233552.28782-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] tpm2.0-tools: fix protocol
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
X-List-Received-Date: Thu, 14 Mar 2019 23:35:58 -0000

A commit amend misstep didn't capture the https to git change in
SRC_URI.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb b/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
index 6cceba6..56c68db 100644
--- a/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2.0-tools/tpm2.0-tools_3.1.3.bb
@@ -8,7 +8,7 @@ DEPENDS = "pkgconfig tpm2.0-tss openssl curl autoconf-archive"
 
 SRCREV = "74ba065e5914bc5d713ca3709d62a5751b097369"
 
-SRC_URI = "https://github.com/tpm2-software/tpm2-tools.git;branch=3.X"
+SRC_URI = "git://github.com/tpm2-software/tpm2-tools.git;branch=3.X"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1


