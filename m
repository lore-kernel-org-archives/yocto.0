Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D74DE00C9B; Sun, 13 Aug 2017 07:29:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8210CE00A9C
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 07:29:32 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id t138so11690138wmt.4
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 07:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=I2vHIZM9JY1Pm4rwn9wgbzyxeQOCwTZ15MgBNIFwgj0=;
	b=iSVu9h/Cp26mvXGv2HKCb2YCld3sdGoYeM005BzJnfRrFCiHlygWDEHSdSNWl5U44f
	UOLpOgm9gF1H8gFZnfSyWMRiVW0LXEtWt0inSd5ORmAiL0gw6Rocg7ltdEhv9142uDHl
	FxjxJeNm78d5jQ7RuFpCywXh0r64MiqOjAVxqyZQYxhkVdbsiP51G0FaF/o5LQwKarm2
	mzqlj0A23u/pBg7kkfQ13MPM88WUTcw/PNdKf1cRUbIHzDL4w+GYorkqnzVDCfpCftJa
	6HZWnmXjutV4zzqGGfOOrDqd8wvUUO7GaOwhmt1xOFm5NBISptUWhYUIULqb4zUCKcS9
	abzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=I2vHIZM9JY1Pm4rwn9wgbzyxeQOCwTZ15MgBNIFwgj0=;
	b=WSJgutNRbYNopAY2bMLZmQMQdQdzBxHy+/qspUd4awDWCo7TXzIwE7/LrywmcszTkr
	xs9n28UT/WZgyRejlvi8VYoS1fuDd35Pn27YNpXKalwZuwSdTNH9ngq+RZaBKbeOgqrR
	2BmWj2K058sRAoZ2RDeF+bjykeiXXzg4xioPLft+bBPf1MawgH7UQ2TXvjWq5XqW0+bZ
	9QlzahzaNJHViIrs+xwitaZ6AY0ap069v7AsVR06NhIimb02xO1qvF9A8CgjrvfAWV7f
	MNWCgSuC4ryuf6KHi+xff0GFUMURDn6UBzQ2u96tFqQdx+XSFBbAnRb+SaBvA4E0rRrv
	TgeA==
X-Gm-Message-State: AHYfb5iaeQISqmx9+ToNyvgjXY9ItoOTd8P2sBRlfdivJK9brNLTCEv4
	Q0teIoP0CA4hWjd/
X-Received: by 10.28.156.210 with SMTP id f201mr2570145wme.50.1502634571648;
	Sun, 13 Aug 2017 07:29:31 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host193-245-static.58-79-b.business.telecomitalia.it.
	[79.58.245.193]) by smtp.gmail.com with ESMTPSA id
	u17sm3961630wra.42.2017.08.13.07.29.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 13 Aug 2017 07:29:30 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 13 Aug 2017 16:29:11 +0200
Message-Id: <1502634551-6371-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: srifenbark@gmail.com
Subject: [yocto-docs][PATCH] kernel-dev: fix typo
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
X-List-Received-Date: Sun, 13 Aug 2017 14:29:34 -0000

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 documentation/kernel-dev/kernel-dev-advanced.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml b/documentation/kernel-dev/kernel-dev-advanced.xml
index 0394e08..c7e5a3a 100644
--- a/documentation/kernel-dev/kernel-dev-advanced.xml
+++ b/documentation/kernel-dev/kernel-dev-advanced.xml
@@ -867,7 +867,7 @@
             When stored outside of the recipe-space, the kernel Metadata
             files reside in a separate repository.
             The OpenEmbedded build system adds the Metadata to the build as
-            a "ktype=meta" repository through the
+            a "type=kmeta" repository through the
             <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>
             variable.
             As an example, consider the following <filename>SRC_URI</filename>
-- 
2.7.4


