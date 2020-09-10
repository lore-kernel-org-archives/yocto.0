Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.20824.1599740782440728999
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SrsSbBDl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id z4so6505979wrr.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=44j3CvGlooK/gL5GCPuf+9AYTerPN8ONVPWAFH1q4HI=;
        b=SrsSbBDlyybpyQVJMKQwl8NU+AVGErKdwEYrrUb6BjsAWlfia9JVTVP9OqSqpQNIgo
         j4V/8XCiuLNzH/bzAtDheLafex3atLy5qyoZtkl4XpWhKKnAl4I3Bz4ZGyhBaLipGU+M
         Y16/OY7TUMCMtOZ+JdMavG8SWms5L7X74cNKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=44j3CvGlooK/gL5GCPuf+9AYTerPN8ONVPWAFH1q4HI=;
        b=TYXlxr8QLeLfsstes5WAb+gYmkUIWScfqcju1ojxdcDCzwQ0eAxFBVplAhzZkHtVy0
         suWfMttTQ55a776sEuHkoBBb7pjSuBzl8T+loTa/RkU2LFdB9viTkTCc3qr4uclQ0ia8
         fzPCQ3Dv0HXFYxADQeQiE6vpz4EfXGvzPYa8C/X9AFQWHq6AyKbcGfY3emYewDq2Bi8m
         0sApdhYXnjBgvDNmaUpYOoemFQYFnmVqUZkZrdkSeU5g0VOHEoWIX4VbbmQ2f7muzGR8
         wl1qKmUAgqJ4m4IMl/1OSfOCba/OgGPtJFZOZBcUzbFi/Vu85FvszLXsI9y3c8xqaNtC
         RTyA==
X-Gm-Message-State: AOAM531UXxpplJ3nnJSD4dds1MUQ46ZYfA6dSYjAE5kdUDyk70PYOsmG
	h2u+ec4gvY6LHwoJo08OLDF7JRyaZ2uHZw==
X-Google-Smtp-Source: ABdhPJzNFmm0fp6Gg2LEkUMxmqGbfu0/SPPY0AHLM9jAEwXiXGXVsMNhNpxgDRsHYffO0XQWjfkMlg==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr8272280wru.337.1599740780648;
        Thu, 10 Sep 2020 05:26:20 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:20 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 28/41] config.json: Use new buildtools tarball
Date: Thu, 10 Sep 2020 13:25:40 +0100
Message-Id: <20200910122553.2040430-28-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index b5d8264..c94605b 100644
--- a/config.json
+++ b/config.json
@@ -9,7 +9,8 @@
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
-    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
+    "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200427-22/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.25.1

