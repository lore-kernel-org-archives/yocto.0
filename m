Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.22173.1599744658659065374
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=J7zpPmLC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id w5so6698860wrp.8
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/a/xLr053Ldy6HkYuGt9MlPrFd4yDBFwHgI9AoFKDJE=;
        b=J7zpPmLCjbL64I+5e0y6qAQjc5TwXTnBGwxgKGkdb5GmAdiZDcaq2zDtCtYnjbMpx+
         Q14fNqXBcXIGwa3H3W5tRD6uQ/mHM0HxMYObiAid2oNLzbt5BvVPQ9csMIW+99jgUuyz
         tNqc08V9Pioib/WlyJQbmnuvDbWr83oq2m2L0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/a/xLr053Ldy6HkYuGt9MlPrFd4yDBFwHgI9AoFKDJE=;
        b=dJx9cx+EkZX7AvQfH6GY3+BoMHhXxhMt50pOaelxit9nO+nvmwLaCOAZD5mPk2+uSg
         o9j6pntE4pq23ML+jsc6dowRbB4SjZBghkB5EcNfgj1uhqBfN3jOLlZUj6UrVclxaO08
         MR255KRifYGzHAvjF10odJQ2ipPFwD+sRIwc8CK7iajCAijwPzLnSRS9y+CAuqRMsbAP
         0C5AzA0oPfN5hbJaWZMlTpeAhB9hnWvOoO7aDqh8dfPnswDaApUvW16ZJkavQgher1AK
         1Px+7JwxnV+uyuCKyR1XY/d6Q0smevAXbRrBVVsdhCuIEVaFfL/rQOfUAACNQPQVdKX0
         fRgQ==
X-Gm-Message-State: AOAM533fxsCkxVt4ka9C+o1Wvogo5YTrIt6zpaRcwKkPmC9j57xRwQ+K
	BNpNJg5Z4n7ULpCa8MZTJddzXPTwLP8JvA==
X-Google-Smtp-Source: ABdhPJznJoA0qP5XSB035pX9X+/YdAOCzd+5pcZGlMVkXuD3nSw2XxGjYSot0V1d8eJyYcQ3TNlCiA==
X-Received: by 2002:a5d:620e:: with SMTP id y14mr9809921wru.371.1599744656915;
        Thu, 10 Sep 2020 06:30:56 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:56 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 20/40] send-qa-email: Limit results clone to shallow depth to avoid timeouts
Date: Thu, 10 Sep 2020 14:30:15 +0100
Message-Id: <20200910133035.2044355-20-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index d2f4574..7dbc290 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -61,7 +61,7 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
 
     tempdir = tempfile.mkdtemp(prefix='sendqaemail.')
     try:
-        subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir])
+        subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
 
         # If the base comparision branch isn't present regression comparision won't work
         # at least until we can tell the tool to ignore internal branch information
-- 
2.25.1

