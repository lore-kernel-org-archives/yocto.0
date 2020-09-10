Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.22124.1599744642936690992
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BHc7BdRO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id e17so72279wme.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=BA6sBgAQnmcuPsKiChcQl4W/YSnTTSbpr5oTs77wNhI=;
        b=BHc7BdROoxuqZ/1j0c4mBKb5rc9s9Tgdctt02MmtklxPA6XMyj08ZU3fFEop7lX30u
         IiejYyyncxkGNjxNwAIJ/wH9ix9lTMQgyW+NUTGTrQMTAe+dJ/pLySegFyY0ypEp1p2F
         pdDQrFnGiLlGXg/RQRfRgO+VED0c5B7IIgn1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BA6sBgAQnmcuPsKiChcQl4W/YSnTTSbpr5oTs77wNhI=;
        b=KrzvjD9T/uuNkxTjDI6Cd8PN9cAXNAb5L3yBFGpKf4uW/NA+kW8ED+0dICJuloNO2P
         HN3ZwcOKlb9UHBHHo0XiPIskvfa5PXo8cq+WK11ZvJwGPEnEaxMcF9jLst+3vdXKPkbL
         YQklZMhxH9nRkhwf8YxjAR/ucEOVbSzy1+B1QPBzNAlR57SzzfvkgwLrywHSkiovmKUr
         mpgxl6UnT8z9dz4E0nyRuptO0NxpdvkRLqw6kMDw0F4lMS6oXg8AYiY8PH+hoGN+RZ0R
         V2F1M1hypRUfXx0tu5BcfttWm3k/9PgsZ2ayvtJo6NZFUXFxvhvp1Zz3BfeSXK6gVNej
         WDWQ==
X-Gm-Message-State: AOAM533IAQPm5AUovz8n8f2Lsx8pJyT8qHoYtYuwhCpOcQdne3D04d12
	zGB2tZPRUVRfrKY6d6oVzL47s75+1MSg7A==
X-Google-Smtp-Source: ABdhPJwRsV+CBo4PEZ+52FSWnWORU1xj9NsVXV4Pl3g1WgcuSumaPC/nwOmOmgzFwK1OagXA24G7Vg==
X-Received: by 2002:a1c:8195:: with SMTP id c143mr79023wmd.85.1599744641026;
        Thu, 10 Sep 2020 06:30:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:40 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 06/40] utils: Fix incorrect module usage
Date: Thu, 10 Sep 2020 14:30:01 +0100
Message-Id: <20200910133035.2044355-6-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index 31e1537..68652d9 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -196,7 +196,7 @@ def loadconfig():
 #
 def getbuildhistoryconfig(ourconfig, builddir, target, reponame, branchname, stepnum):
     if contains(["BUILD_HISTORY_DIR", "BUILD_HISTORY_REPO"], ourconfig):
-        if utils.getconfigvar("BUILDHISTORY", ourconfig, target, stepnum):
+        if getconfigvar("BUILDHISTORY", ourconfig, target, stepnum):
             base = None
             if "/" in reponame:
                 reponame = reponame.rsplit("/", 1)[1]
-- 
2.25.1

