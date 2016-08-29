Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC0ACE00F1D; Mon, 29 Aug 2016 05:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99386E00F18
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 05:45:48 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id v123so10243453qkh.3
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=lYXviff3BL+3D9r/orC5QUKPfGemetIOPlRzHJjsOFo=;
	b=JI6UQp4V0Gi+5icVhUY3uFMdVoc+r5ZHtqPBUKsaJTicfYSkqwkH9w5rj08DlpmOWh
	xgEcR0tCUWoT1dX9fSsPNwQI+xantmZMjT6Ty2/F8m66kZnoSpG4vC5DS6ISVtO3VDd6
	aokQ2fFsm9idAMbJNy25AzI1ql34WL3WihbUiEIwuoi0eCM4LACjnPivXTrYKW/qvLPF
	18F3XaZqpaFQcF3+KuTECxgz3pMTWsQawxNM1Ebi25oAhCqv8HToTdMSxVuDDpeddYIb
	RQUkEKmhC7CGR3qpoBisDA3Bd8HSygXz0fQpqrISp0BLfL+Vg+hPnqafhVBT98asxMjs
	h7cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=lYXviff3BL+3D9r/orC5QUKPfGemetIOPlRzHJjsOFo=;
	b=NmmMa6HjjWvWsvufqxwYdjOf4TfO6pdZYn4YX+iYTSL1aU2gQutB8cDD3wddEj+zCf
	Lw6IX6EYFVJwZWcTEWGpvS6SdFlZ1Hu0KZ4lntDR3xFSjEyYBVyxq7g/ukhLcn/BGqvN
	EQxS6G5OB2m2qDVnInkQswz0n+1WpTWoVZjKXke507ddxIynjGSNCvUYeKPF+QQPTq99
	4+XAxdVsL4bP7n4okpTqRqZW1rz7QKSmIvoC9JQ2ymg6vL5opGder/Hoi9+sGnStY8sr
	k4dYb1zizvbSSj1nnndlHm8yxUn/idN++KYVJChrZNqXpoP3vNx45HuKTmtVYnAu2QIf
	0mYQ==
X-Gm-Message-State: AE9vXwOo5a0TRF/XT9IELclBHxhZABeMDA+BvOS3vwjN6tlmExMUTIvRjKFThZDez0ubnA==
X-Received: by 10.55.68.81 with SMTP id r78mr17700944qka.119.1472474747300;
	Mon, 29 Aug 2016 05:45:47 -0700 (PDT)
Received: from kdekidd0.inp-wifi.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	k20sm16489567qkh.28.2016.08.29.05.45.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 05:45:46 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 18:15:41 +0530
Message-Id: <1472474741-22678-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Sujith Haridasan <Sujith_Haridasan@mentor.com>,
	Christopher Larson <chris_larson@mentor.com>
Subject: [OE-core][PATCH] ruby: ensure that .ext/rdoc is gone in compile
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
X-List-Received-Date: Mon, 29 Aug 2016 12:45:51 -0000

From: Christopher Larson <chris_larson@mentor.com>

rdoc gets unhappy if this already exists, so remove it before building.

Without this, it's possible to hit this error:

    Directory .ext/rdoc already exists, but it looks like it isn't an RDoc
    directory.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
Signed-off-by: Sujith Haridasan <Sujith_Haridasan@mentor.com>
---
 meta/recipes-devtools/ruby/ruby.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta/recipes-devtools/ruby/ruby.inc b/meta/recipes-devtools/ruby/ruby.inc
index fde67e9..d8f6882 100644
--- a/meta/recipes-devtools/ruby/ruby.inc
+++ b/meta/recipes-devtools/ruby/ruby.inc
@@ -37,3 +37,7 @@ do_configure_prepend() {
     sed -i "s#%%TARGET_CFLAGS%%#$TARGET_CFLAGS#; s#%%TARGET_LDFLAGS%%#$TARGET_LDFLAGS#" ${S}/common.mk
     rm -rf ${S}/ruby/
 }
+
+do_compile_prepend () {
+    rm -rf .ext/rdoc
+}
-- 
1.9.1


