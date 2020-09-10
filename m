Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.20781.1599740768818240993
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GGyDgHaR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id x23so5446457wmi.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/9piNuP7xL5GMEVIXNMTim1fbtYPSHomLnEM0tp7/aU=;
        b=GGyDgHaRsOeeFrX9ujpJIY5rjKXYq/213w8GoklwaXHh3TCZH97SCabuwxYxvCzIpm
         wQXoL31rJOASiPPsX4q1SQHzrtbCOhfBQUlWj0qaufl0ZPICn3u2eiSm7rykvt0WdMJX
         +o0WB8LWyk51P0EafSN0qok2c3He2E56Xwzqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/9piNuP7xL5GMEVIXNMTim1fbtYPSHomLnEM0tp7/aU=;
        b=R354PDBwHcuNr0Rjqa21kJUFUQBYkm1qhWZkQVcLlL5dfCJ0ElNblgV6M89eNzC+XR
         oCcv7kf810sXAJWukrc/BD+94ivRYqXC0Izyi8H8XUXMAxRtvuO5/8ZNfXI+6LM+dwPg
         WWIaa9Jps/MQwpa116IFZauilG1+lCPHFMGnUBCilBkOFnEi4NdGdUTeCv9Zz4DhpLlF
         uLWvkeZwivTetrx3AZSj8KcpiRk5BCuvxKGzVBdlymw6p+jT5DPlcty6tT+o3s/SNkPX
         m/HdWquS2YVBTedRfxXKzHoOoKlVVsCWc3NJmO4eeaPCF8Kuft8IBfWJGh0Pov4N4dOh
         TwDA==
X-Gm-Message-State: AOAM533qgRI/DLZNOjRnBu8bwuB2nZ9YKCZkYnQFoR51r24m3hAFmRz6
	vBE32IRoCLcoyTBaOpCjMft5qVPcLtrisw==
X-Google-Smtp-Source: ABdhPJz+/ZM8G6peckztfshFqvfpNeV2v7N5btAYyryj6N4gq3HRHm1CJzWWT3iLII4xG/gZOFzp2A==
X-Received: by 2002:a1c:bad5:: with SMTP id k204mr8629333wmf.111.1599740767152;
        Thu, 10 Sep 2020 05:26:07 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:06 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 15/41] scripts/run-config: Fix buildtools path
Date: Thu, 10 Sep 2020 13:25:27 +0100
Message-Id: <20200910122553.2040430-15-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index e946e90..cbfe073 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -92,7 +92,7 @@ if "buildtools" in ourconfig and args.workername:
 
 btenv = None
 if bttarball:
-    btdir = args.builddir + "../buildtools"
+    btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
         if not os.path.exists(btdlpath):
-- 
2.25.1

