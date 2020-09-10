Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.20499.1599740764031871176
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZDS9yZB/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id j2so6485418wrx.7
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lspzHZltQnY7AxwQAtRtWBKuKnTlQcoKt0tA8Rxz72A=;
        b=ZDS9yZB/dKDucwCa1uWlh7Pdgi3LOEMV5A8UN/8FhIeSaE9SSFE9o0Qgyp/gP2NKmi
         nhPUmOPJ/Eb+AcbB42EqOhcfCTTf3t+g4+U86yiVUe8lqx7IYAQiRXnwuytxnvYG8aea
         H2XbKI3yfabGtZGZBQyCRDzK1g4erJbAUP1Os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lspzHZltQnY7AxwQAtRtWBKuKnTlQcoKt0tA8Rxz72A=;
        b=oERqFsNN540aUZytij4nkbiXSTTsGI3KBxPJ8a7M/YcU06ILAHuh0FA7IL4I/sTmOK
         cjegfZtHOgjZUEilzBbnEjJ+JIz0F4URAjP3Q3Tk+e9bTsP15m1maFdO4c+d6Z4ADOTe
         UA0FKDPBc3i015/iYgde0mtZ+CA6DzOkrh9pLF5eqHL5xNt6Cw2irBL7CiHN4/oCqJ5i
         fWKq6T1wEFZBjyAcUPLllIf2nr+fxLmUvYjPvvobiPZMixl2x+O/d6FyS5+AMnXtxYHv
         enj5SJzBhIps8x00yBjaFCGHYPr9NhSzIhbL9JOufS+BHBAHhK21KmYXzRgS5Q4B7E9S
         ErdA==
X-Gm-Message-State: AOAM533mHyV+BsspHj7lXglvmuwHJw8oo2pIQz3P/66WLNCiWxxlp0NO
	WIyRo580kop+x27qo2SKQjlLXK8WsRbtHg==
X-Google-Smtp-Source: ABdhPJy/IqiKw0W/U5buGxzhVprnR7h2hz5mYTnPJzI9RisZ2m+rsF9tGk95fhsuCwioNuGGu1Owcw==
X-Received: by 2002:a5d:66c1:: with SMTP id k1mr8922776wrw.34.1599740762337;
        Thu, 10 Sep 2020 05:26:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:01 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Thomas Goodwin <btgoodwin@geontech.com>
Subject: [PATCH][autobuilder-helper][warrior 10/41] shared-repo-unpack: suppressing exception, returning exit code
Date: Thu, 10 Sep 2020 13:25:22 +0100
Message-Id: <20200910122553.2040430-10-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Goodwin <btgoodwin@geontech.com>

The preceeding errors that would be shown should be enough to
identify the problem since it would have been a problem
running bitbake-layers add-layer, indicating a misconfiguration
of config.json.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/shared-repo-unpack | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index 92f0ccf..4a2b1c9 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -61,4 +61,7 @@ for repo in sorted(repos.keys()):
         if args.publish_dir:
             utils.publishrepo(targetsubdir, repo, args.publish_dir)
 
-subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
+try:
+    subprocess.check_call([scriptsdir + "/layer-config", args.abworkdir, args.target])
+except subprocess.CalledProcessError as e:
+    sys.exit(e.returncode)
-- 
2.25.1

