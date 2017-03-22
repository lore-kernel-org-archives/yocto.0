Return-Path: <benjamin.gaignard@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97898E00961; Wed, 22 Mar 2017 02:39:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D16C5E00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 02:39:30 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id u108so126562771wrb.3
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 02:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=8d+aIwEL1e9POJv/gizVFQFl2bWfMvpr5/qdH/0hpBE=;
	b=TbOIroRr4RblvgIuLeeqdcTbQRdapttfQ/dBaAEeHk59Xm5ovw64WgFoXrbGjbEOJR
	DU3kchjMeNlKIB9K4DpjAUASF8wwbc4KGFn+SmclxbcepfQOq796yBZXCbqjoyXEUhDS
	30yZCHi3gTl3j8mQ3788aqsPexmLYN/3ce+6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=8d+aIwEL1e9POJv/gizVFQFl2bWfMvpr5/qdH/0hpBE=;
	b=mczj+dcYtpb6RykM0nvQW/s/xhWcsHhayY5q8PBPaubIXSg77gBrusnjSErnD+jkKu
	2l6eBWJ+fdXNEP7+oHbKpgjFl0Zz+5fde81/rm7oPFaYaxoGxEgAL+NVLdVYMl05GqSb
	wQexuE2hA4r2OmSnaXzVh8A6pCohaVl764vQt9/aGOWq56ngIkkpEm8ki1W5EnFW35Lo
	nd4RS3w9WBP3yNeozOHxOW0OXkECvwHl+eqm2r0OzQq+R16zbpIerwLNSndY3kf7en0f
	AD8hycG6WzdDYCsnDsrlL8WIYlCeOTD8tTDlzehE8a4FC6alM409kfP63GraLO1sbcH1
	E8nA==
X-Gm-Message-State: AFeK/H0Rf85bd/hThSDrjunEjhUePZxfRCjzX0ACTKYQZNzg31dyueKlTQVuQyLQtc7LHiRW
X-Received: by 10.223.155.193 with SMTP id e1mr35672479wrc.86.1490175569359;
	Wed, 22 Mar 2017 02:39:29 -0700 (PDT)
Received: from lmenx321.st.com. ([80.215.246.28])
	by smtp.gmail.com with ESMTPSA id
	k76sm1130531wrc.12.2017.03.22.02.39.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 02:39:28 -0700 (PDT)
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
To: yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 10:39:15 +0100
Message-Id: <1490175555-5478-1-git-send-email-benjamin.gaignard@linaro.org>
X-Mailer: git-send-email 1.9.1
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: [meta-security][PATCH] swtpm: depends on expect-native and socat-native
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
X-List-Received-Date: Wed, 22 Mar 2017 09:39:32 -0000

The configure script checks for expect and socat and
fails when it is not present.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
---
 recipes-tpm/swtpm/swtpm_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 0d3bab0..7b9662a 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -7,7 +7,7 @@ DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
 
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
-DEPENDS += "tpm-tools-native"
+DEPENDS += "tpm-tools-native expect-native socat-native"
 RDEPENDS_${PN} += "tpm-tools"
 
 SRCREV = "65d8e4d83447f4c13a41a6f995bd0490f49bc5ef"
-- 
1.9.1


