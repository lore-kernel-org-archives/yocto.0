Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69661C433F5
	for <webhook@archiver.kernel.org>; Sat,  6 Nov 2021 00:35:58 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web08.13954.1636158957511520883
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 17:35:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nzDwNVYQ;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 w33-20020a17090a6ba400b001a722a06212so1329836pjj.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 17:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tKGfvJFeXwl5GkIgbC8FJHucWQZBmxS3W5/DRN+Ut3Q=;
        b=nzDwNVYQY275uPCNKPFJSHRtT4xE9CKXIcFBejA9nsr2pVQBJFOUc390+hcYgjME96
         fBhL6wydQf8HcGB/M9cSavow7g8KQHeupUCNdO85l51H9RveXdO5/Y3JLCGrybaUpyfH
         UOO8ztIfuPun/U5YUZCirzsOgL83tdxTdlyhnayBccHTXRySwYwEoaiKit6S5J1LdXyu
         S9sZEJZh+az125PQ21IG9UAjBZL4WVaPlS3/+HPMvYYxi+bDfgN4+73o+6tYMN+dRqNN
         Ko0lrToqlZfwaK6kw1+t3f0EpozLi7q2RUVtcVOuS/WPcsQts7Sgb5Ys10EZXuxJ8XrX
         yXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tKGfvJFeXwl5GkIgbC8FJHucWQZBmxS3W5/DRN+Ut3Q=;
        b=xeyBdetDTpC4yRK+lDj8iQfhjLG4l2km9H/wKdrmSd1b4IkWt4mhtPrWvlY0AB5uzJ
         /r7aeDMlB+ZdQlHGghdvUd2aTZDMgk+GFCDKKakSgnyXfXMCZJfZoiQzEPyl2Sd2w6A9
         K8nKtJrX6PwJ3qO9jtZfJY3MAOR543IAg0nPYurriAbSr5lVX6OQmiXMyDkBCbtt2Wfj
         vW/5QrrM2nDLDxwt3fHntMkJhVK2uNjz8gVYcTXcCTChlEW0izx2CFUDgOpKLac2D3Bz
         2wqa35gE9NQUf0NlAe04d+xnRGb59ECYg8gMDDIa0Rbd0l+c+EBlWJxh4Iu0qcQ6ihvv
         n3pg==
X-Gm-Message-State: AOAM530J+PHlISVRnOlqooI+9P3sjFx8rBxSx4hZbo58fvUxJhQy6bfD
	5KkWiujWApR+4bN5rh2V8qKjFMmbnks=
X-Google-Smtp-Source: 
 ABdhPJzdQgoiKis7iy+ATjSc5raG/j+wAY99xDx+kZ+tgDIG3pb3Yb3pawSjHXWwrXeLcBoRZUXn+w==
X-Received: by 2002:a17:90b:4c4f:: with SMTP id
 np15mr31632056pjb.65.1636158956542;
        Fri, 05 Nov 2021 17:35:56 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::f94a])
        by smtp.gmail.com with ESMTPSA id
 f19sm5948065pfe.153.2021.11.05.17.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 17:35:56 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH] flex: Add missing dependency on libgnurx
Date: Fri,  5 Nov 2021 17:35:53 -0700
Message-Id: <20211106003553.2858091-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Nov 2021 00:35:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55261

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-devtools/flex/flex_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-devtools/flex/flex_%.bbappend

diff --git a/recipes-devtools/flex/flex_%.bbappend b/recipes-devtools/flex/flex_%.bbappend
new file mode 100644
index 0000000..898c75a
--- /dev/null
+++ b/recipes-devtools/flex/flex_%.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
+
+DEPENDS:append:class-nativesdk:mingw32 = " nativesdk-mingw-libgnurx"
-- 
2.33.1


