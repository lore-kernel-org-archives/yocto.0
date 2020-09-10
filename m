Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web12.20491.1599740758007468838
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:25:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eu1Qo681;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id s13so5445625wmh.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=wwGu3P2hms93QZLDcZ4fETw+MoK+JEKTUQDIk5b5c0U=;
        b=eu1Qo681/JbDT4cpOLmfn51MKJSIdYgFbrQuREW6+r2fzHPn9lNPxReV0YHigsLMIC
         K2zIsqKNJNpQPv8EB/AfVpeX+v3OnPDyTnh3JVEZddCu6QbSGTZPTf+q5jp5y85DB0Ew
         mx/g5QEis70vc55S+wz4NYmr18rgImFKYotQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wwGu3P2hms93QZLDcZ4fETw+MoK+JEKTUQDIk5b5c0U=;
        b=ARxHvhPiT3nP8qvKqrbMiK2Est7ihAAPHVQLvv0VY3H2NmiSI3HhP1dr24F93OOoSk
         Y7UY1r6J/0lKmBtaLXVjUQRkkVgwpP8ZjcdkP3SVddV5AS2AGMGmC8r7jp3LhBQKuizh
         UA8pHeqZWUGwL7bvhyuIXBJyNUJSUjGQaJEQwl50zXOeVl3OFFO7WMpKLzIDBYwjuLQZ
         aJOfWw32pNQFl77O2TVSo2dAO9cV0b4AIOhpSenjig/ZxXMHGXw2qOzPuuW2NzDRfClw
         aV+zYOwj/2c3Dhg4PT/4hfcy22vfl/mlzbViNl+1Cb5TdD8YMgy9uz8XXhtZoxj1mP8Q
         C+LQ==
X-Gm-Message-State: AOAM533LcROuFpLMwG66ev20sMDmZbjUI1vpgafK6d2UZnWE1KRGBKKb
	iaNeKUoby7oQkUgj92dWdS+GRhyE7KD2sw==
X-Google-Smtp-Source: ABdhPJzqasQCETOTc7z5tYg1FG1y2I3vMtPQ0/ayQTWlSiBnw0XM9xhGMUJ9S3nSD9X8I6szuf0M2A==
X-Received: by 2002:a1c:1b8f:: with SMTP id b137mr8856958wmb.151.1599740756347;
        Thu, 10 Sep 2020 05:25:56 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:55 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 03/41] README: Add pointer to the mailing list for patches
Date: Thu, 10 Sep 2020 13:25:15 +0100
Message-Id: <20200910122553.2040430-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 README | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/README b/README
index a6c4f1d..2747510 100644
--- a/README
+++ b/README
@@ -25,3 +25,8 @@ would also allow customisation.
 Authors: 
   Richard Purdie <richard.purdie@linuxfoundation.org>
   Joshua Lock <joshua.g.lock@intel.com>
+
+Contributions:
+
+Patches for this code should be sent to the yocto@yoctoproject.org mailing list
+with [yocto-autobuilder-helper] in the subject.
-- 
2.25.1

