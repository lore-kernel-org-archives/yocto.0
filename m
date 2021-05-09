Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web12.20446.1620575263149601791
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 08:47:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjFF0X91;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id p17so7915820plf.12
        for <yocto@lists.yoctoproject.org>; Sun, 09 May 2021 08:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WP/wGaWCYC9kIriMn8AHMoHAe38+EBWDV6JTV0ed/08=;
        b=EjFF0X91DTX8TNFkcX12swg38GWu3S48aLGkjB8SUVfmWashhlIKkbggYQKH3/Wo/b
         2sOwXeCBdvCmRb2vrbo5BhJNM+v81lFSWv4Q1UkYoIlkmH5wHue4a3zfZ1DD7wKL9dPx
         JI1ReUYpTtVIRU4MvoOMmyNDZs8w2vGxNP2qxlNbX/rchLDdOi11z1+bw3bn+1kb+Nyg
         L3/zmppmU3dpJq3WErxpLV2sdEr9B0aUWCF9RtJncTLBZ4ak1Xai36j6z/PTWIQDzMPp
         +saAAXSttAxobhbBATxePdw0FDn2jNj1ILzpv+iCsNNHcvml3/+8c9Hiw0SifydKW2YW
         bhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WP/wGaWCYC9kIriMn8AHMoHAe38+EBWDV6JTV0ed/08=;
        b=kNYmqwv/ZeUVkz12sr9HNGWCcLknQaag5Tk8xYbl/uzwCM4L9mXkPrIP/PqwHCxuSR
         SzDoOj5ylUO96nPaz5RghzpPF0xAlcc5KJlJCq4qIjU8AvRb7MgryUfAQx3tChxL6QBD
         JNxYQDuHjypEBrB8EZudcf3wESUAvEOXxhN5t34P5pG3kIpKy8JfXGUg5Jqgy2OK8qC8
         EjfzGHLgJsDMSFkyIr9PRgbzSwg5QookqH/domxB5+hUDOPa+KLxJeGTnCFmiN7D6ISE
         knsM1ArAjNibHkof7sfb0AAGE0JWCl8/TqsJw+UpbvDoR74DF+GoWB+YpWYNddpfS0/A
         4X+Q==
X-Gm-Message-State: AOAM532x7Dm8zMQDYgedWHipAwlP+fntpkpb5rQTNmQ9tYOqUOSjgjyT
	qWvMo70lGyHHJWVWK+21TiVLmtnuySXFNg==
X-Google-Smtp-Source: ABdhPJy2cgLxTfSDX9PoAVnBHTzR8lUtngCzFWhcIU+aB/R40wORVnDqIWkwdMSJKASsijWrFUwKbA==
X-Received: by 2002:a17:90a:ae10:: with SMTP id t16mr23374133pjq.86.1620575262633;
        Sun, 09 May 2021 08:47:42 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id in16sm9428165pjb.14.2021.05.09.08.47.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 08:47:42 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] ossec-hids: add UPSTREAM_CHECK_COMMITS
Date: Sun,  9 May 2021 15:47:36 +0000
Message-Id: <20210509154740.1628375-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210509154740.1628375-1-akuster808@gmail.com>
References: <20210509154740.1628375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/ossec/ossec-hids_3.6.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/ossec/ossec-hids_3.6.0.bb b/recipes-ids/ossec/ossec-hids_3.6.0.bb
index 10354a7..242bbdb 100644
--- a/recipes-ids/ossec/ossec-hids_3.6.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.6.0.bb
@@ -11,6 +11,8 @@ SRC_URI = "git://github.com/ossec/ossec-hids;branch=master \
 
 SRCREV = "1303c78e2c67d7acee0508cb00c3bc63baaa27c2"
 
+UPSTREAM_CHECK_COMMITS = "1"
+
 inherit autotools-brokensep  useradd
 
 S = "${WORKDIR}/git"
-- 
2.25.1

