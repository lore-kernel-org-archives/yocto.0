Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.20817.1599740772117906586
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Cyc3CkCP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id x14so6448926wrl.12
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=AJIcCPSgRQaVYUe1WiWAErItLEOEwQW09AablFq87Ds=;
        b=Cyc3CkCP9jRbmFXbtqNEt7rBUWHo6AuCtoyEaWsGaFOx4VVXWDpRK/jrWQhIR2JXny
         lTnLFqK3KLJ62Pw4gWeHFVdjqK3bmlRtX0oAnQYU4vguOCDXVjaobjiTYlKjb4dJXzwI
         w+6Go+pS4g0FwMtyFl+GlKCASWe/oDpjbHAec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AJIcCPSgRQaVYUe1WiWAErItLEOEwQW09AablFq87Ds=;
        b=YYODg+X563ruvSH4Ue+gfvj4DUJ+U09gS+Zifk7+z6Zz9gmayDqwr/ywiKPEnomEgN
         Jxp8XkxgPZk9twWqDzR0f0O3VRBnZgVXjmkoskKGAQGdQ/hWphf52fU+7e1miGj607c+
         HkNckQBcWxsTx1FA5LywP+7nfQs+jVUL6Hbx/Kk+5Kth9Uf/LIcfPfT8Jt2j4YM5WeaP
         9ar2VhzknSAN/F6H+yJK/hRf2wtE+9VAY5e1k0m+VqbCIoGcYePB2BkVzUpoHJANuBap
         fdWQrf0RRWsFXekW7aLFCEXc5n2HmVdHNc9/vW/wa2i+0vigQHaNx1koHd2Rq5XcICEE
         KD0w==
X-Gm-Message-State: AOAM531/t1afbqvU4pvl9qskWrwp5+kuczSZGBB70Jg2Ho3scvmvCpmG
	7TKI+bMINGQlKayiXXGqe9z3ikQ1ud0uVw==
X-Google-Smtp-Source: ABdhPJzIJtka3QAXP1TeKPLYdI6Rt0X11can2Vl9aPKBSX59L10g8cUvHwGqccOViwKfLNGAkNho+A==
X-Received: by 2002:a5d:4fcc:: with SMTP id h12mr8724598wrw.199.1599740770335;
        Thu, 10 Sep 2020 05:26:10 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:09 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 18/41] scripts/run-config: Handle quoting issues in buildtools environment files
Date: Thu, 10 Sep 2020 13:25:30 +0100
Message-Id: <20200910122553.2040430-18-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index ce1f36f..b4f1d58 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -111,9 +111,11 @@ if bttarball:
     with open(btenv[0], "r") as f:
         for line in f.readlines():
             if line.startswith("export "):
-                line = line.split(" ", 1)[1].split("=", 1)
+                line = line.strip().split(" ", 1)[1].split("=", 1)
                 if "$PATH" in line[1]:
                     line[1] = line[1].replace("$PATH", os.environ["PATH"])
+                if line[1].startswith(("'", '"')):
+                    line[1] = line[1][1:-1]
                 os.environ[line[0]] = line[1]
 
 finalret = 0
-- 
2.25.1

