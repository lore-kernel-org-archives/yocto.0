Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.4890.1598672264632739475
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 20:37:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VKnFplyW;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id j11so530546plk.9
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 20:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=U1krDPlMcBVhZ4+9pi1xW22gt9QL2+dxknP9BxD+M9w=;
        b=VKnFplyWa8jxLI0VVVLCgQilUHdOxfE2Mi6lLUEjtFznJ85w6RnahVhOoucBQ+tU5V
         e6F2JgaUBYVqg5spaaySsgPP2znS5PqyosW86U/+jLMy/t/8bdCsXD2wwXgmbpaWKsmt
         aumevofceS+xnh8Qhay+Tr39dUPGRzJm88h1cP2hkZFyBaeeyFExRgz8pJ5z6GTu4FQ/
         BviqdxdASD11A4uNAQC8e3NvJdS67rJmIkVVr1oI+RqGdtIbh9CV1c0L/1Vr6Sm9bZX3
         dcNgwgKu8km5isyLlbcH3j8Y6Y31rHHJHue2VRYfCfusopoWfT8EivtkoYz4kOxVDTn1
         1s0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=U1krDPlMcBVhZ4+9pi1xW22gt9QL2+dxknP9BxD+M9w=;
        b=aNDn6ZAgA2l/lY02vLEKjeZrddD12nqT+zmmnl6NM3taY6Uzi884nfqTL+Y5+wQXY5
         cr8xfLoNxSREEiqBv0takVE61aNEBZke2VEvZuVrxFtS1fGjGnUypIbGYO3jVwg8RSUo
         Hb6li/1K7H2IKXUqy8XaMjqRCfkZs/oSpc1wTj8TkkzKYXg5E8/TtQu1WiXYIWSwy08H
         2ZWo09je7wJTQPFiUnVZYk4FVN8yxYeNZdMhpAS+x59aU76Zugh3Q9ITiOzGVdm43Wvb
         Lpk4uJSrprgwE14KsczgrNdjJA6Po19k58Or956m8ADf4rpzXtZayLheQpr+4zNK76m5
         KvWg==
X-Gm-Message-State: AOAM532BeQz1OS0ZTvQQqDKs3pDFeWdTbJ/6jSUXtFzuLT86mXLJmSQz
	vqcFw17ieQkwEl73snpCLw1GDHtYzQo=
X-Google-Smtp-Source: ABdhPJyrCtjN8/TMa0IV8a5GhCzUvNXc8BkXoeb2cCc9FP6xAkUNu+pcNZQS+Cs6KQtitOJwAgMUfw==
X-Received: by 2002:a17:902:c085:: with SMTP id j5mr1472222pld.39.1598672263946;
        Fri, 28 Aug 2020 20:37:43 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:990e:2404:2153:5c03])
        by smtp.gmail.com with ESMTPSA id e16sm926952pfd.17.2020.08.28.20.37.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2020 20:37:43 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] kas/kas-security-base.yml: lets enable error reporting
Date: Fri, 28 Aug 2020 20:37:40 -0700
Message-Id: <20200829033741.23390-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200829033741.23390-1-akuster808@gmail.com>
References: <20200829033741.23390-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 kas/kas-security-base.yml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kas/kas-security-base.yml b/kas/kas-security-base.yml
index 768390e..2cf056f 100644
--- a/kas/kas-security-base.yml
+++ b/kas/kas-security-base.yml
@@ -37,6 +37,8 @@ local_conf_header:
     DL_DIR = "/home/srv/downloads/master"
     BB_HASHSERVE = "auto"
     BB_SIGNATURE_HANDLER = "OEEquivHash"
+    INHERIT += "buildstats buildstats-summary buildhistory"
+    INHERIT += "report-error"
 
   diskmon: |
     BB_DISKMON_DIRS = "\
-- 
2.17.1

