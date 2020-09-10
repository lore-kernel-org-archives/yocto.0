Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.20506.1599740775200489581
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PZAbr8lk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id j2so6486016wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=XVlAzCPl1iuiVRH0pewS6nLGu0RC0pK9g1lhhqIeVuw=;
        b=PZAbr8lkGNCptNZc5Z739R162LACdpk+Hd7xijrWH1yRDTgBFdlFnRhjPBeHr/T258
         g/s8pznT9udw17hGOFyEpZhJx+VjNBsa0CQGt3jiJyJsUNtobP07wENkbI/Lde7FwpeN
         Ti8RaNLOKsz5bKo6ixaVKNmY/hk9o3bOBYo84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XVlAzCPl1iuiVRH0pewS6nLGu0RC0pK9g1lhhqIeVuw=;
        b=bywr9HdBJME0XQPsaMk+Wtim62TcxrFXzCr4Lk6G4VTzk9pcvxd94K68tZv5J32KZj
         PEALTbcveXfBfh4aCKBJuxdDsCfyFNZY9TlReLpXRIwsYJNsZsYPdE6rWjxkB3EYvs8n
         XfC9R2WtIcs/BEFIPmtdl9FsmeQgH0QFaxwyHlvkGP9hOgTQSI6f1H46bIqoCHwlxy9n
         sJ7Dj8yW5BMpEVPPtQotR/3JqI4w58hyGAEY+5HmUTvH5oEtToLUuZK2/n1AiNRF0qdI
         bUPwfBGD6EI5FRVzItxFtuIPlwS7jMxbj+Ebco9eVs+QiAN4XoLtbpCxl9cjIT83K9qK
         x1bg==
X-Gm-Message-State: AOAM532uylMvrH073fGfJxRxXA/KSREq88KSpE/UTwC5s9+iMiwHJX+u
	TvPicRV0dSFejT361ETChf1naCAzTwNPDQ==
X-Google-Smtp-Source: ABdhPJz6OEDx/Ki6L948dTS3WWJ2GVS/oqT3xsYZuOAvyBQLyhkZXMOBj7IdslxwaCjtBkuYrbinmA==
X-Received: by 2002:adf:f6cd:: with SMTP id y13mr8557203wrp.161.1599740773507;
        Thu, 10 Sep 2020 05:26:13 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:13 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 21/41] run-config: Fix lockfile loop handling
Date: Thu, 10 Sep 2020 13:25:33 +0100
Message-Id: <20200910122553.2040430-21-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-config b/scripts/run-config
index 55287c3..4d795b9 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -110,6 +110,7 @@ if bttarball:
                         else:
                             subprocess.check_call(["wget", "-O", btdlpath, bttarball])
                         os.chmod(btdlpath, 0o775)
+                break
             except OSError:
                 # We raced with someone else, try again
                 pass
-- 
2.25.1

