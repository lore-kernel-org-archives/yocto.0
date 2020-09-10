Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.20497.1599740762591865841
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gzR4msAF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id j2so6485342wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=9J2k7DsurTUAW2kRaEYPkxzwF1yMRS+lCQuv6qLI3Ds=;
        b=gzR4msAF8j6i2pWejivt14iXOxWf4+ilrzbMRlEW3JCOTFJ5AdIfdVgYOsO3EIoVX3
         aacan3VI3+dO/RX9eOaAHRQt8jhdrP7Cv9o6ifFqDQX3kmvXfSgrk3sN0eDNLDA0c3Oa
         wffMs/ICRldlEG1g2avu9Rk5Tibwx7hyjMlRE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9J2k7DsurTUAW2kRaEYPkxzwF1yMRS+lCQuv6qLI3Ds=;
        b=Jjl5mKvoplAFgkbfFKSXRjY2+BtRcS+sFOYdEOVeRwpL9ZoLFhAguPFcBTxMoxjTfI
         NZC1SBLgSpEY1X7idpJrnNGq1LXvo0hb7i380Gx/HmEYKNEmyBx8lJfIhyWLp+j+zZ+p
         JbD/gRaZqwTkW//Hxl3/xPTV4v1sMdF1vfE2pISWRhNCOMOu3LhmjtT4CknULGGOJN9E
         jUKdXoww9ZhWdDh7ls1/SE5Gn1+Fk35YSc0gb6ikWblfaacTlTXQ1DyCL30avORARHm/
         xY/3qzTzBhCmOUdUNRbk2Ha+zxxa+24K/5SW49F3mplsoB3S/7IspKocQEwgPp1x8Ek/
         m6mA==
X-Gm-Message-State: AOAM5330DJh37hMAMe48W0OugYesPvzlZi62h8uGAdSNYtJHTuwC7Wez
	N6lF4/X0JA0BeU+Y4fvs9HdMVa34ITkfFQ==
X-Google-Smtp-Source: ABdhPJwcnjQrnRgrm6tJnKPFfmU/5NlvFfCAkegi/SFA8A2cYKy/iovu2vmIiw19NgjFGy/2J/anOw==
X-Received: by 2002:adf:fcc7:: with SMTP id f7mr8760339wrs.274.1599740760809;
        Thu, 10 Sep 2020 05:26:00 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:00 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 08/41] prepare-shared-repos: Really fix shell globbing
Date: Thu, 10 Sep 2020 13:25:20 +0100
Message-Id: <20200910122553.2040430-8-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index 2a2b343..8400d09 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -39,4 +39,4 @@ with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as temp
         if args.publish_dir:
             utils.publishrepo(tempdir, repo, args.publish_dir)
 
-    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir], shell=True)
+    subprocess.check_call("rsync -a " + tempdir + "/* " + args.sharedsrcdir, shell=True)
-- 
2.25.1

