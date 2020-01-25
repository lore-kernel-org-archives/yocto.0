Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web12.8336.1579985015000956499
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jan 2020 12:43:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+yjd9CC;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id q39so1423122pjc.0
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jan 2020 12:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=4wGFkF72VrrNsuG0P2k9uKmDC1TIYicqfJF8Ns/dNBU=;
        b=r+yjd9CCB2ts34Xqf4bl+HTrRtIBaV6kWNRPsIbQYBqcuEDUXmxLO2WhTBhv3Y87/q
         PCdO61EKO2WMsvfi4z3S07zASaccS1FweHpedoIX3bfRqSVhmuaSVEyHyJ8yn61y8Lcv
         8rmqNoRYbooWskhggRbhzYBXV21ghX5AV5JHSPOkaafR+YrZ8NPWPGk/XbOf4RSpcttX
         VOvkjWXu5eymWv/JO8qODqpKWKKdhuw3+5fSKHbtT7AAcFxXzxadXSEyputHBZV0eoqj
         p3dIxOzEz/s/MYGRcJL9Ybffw2Nud7djtgw6+YAdBvxTGaKKtu5++DdevoOQiTK7E0Lc
         13QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=4wGFkF72VrrNsuG0P2k9uKmDC1TIYicqfJF8Ns/dNBU=;
        b=IiSSRHL/6+BZ8TjuEjoqjiNaXb2olgSjnx7/eQ7lwuiXJ63mf2K1JBGAoc6ZMh8iqN
         /crnEMCsMr8H/A6KQ0V33HAFCa0UnqcKN+tENUBvDh25S6AiXbcie///pYwF64QeLVa0
         bFPZFNKVQRsPpH+GsH6XJB56deRoxiAMSDjvefAA7EKRYa9K8qELTJkbbTDB/NtF3lb5
         bu4X6y9RJC8zT2ggAiPNKQB2OCYe1m7XkQKRwIDIJdO3RBsdg+DDUwZ74406TKW4DSjz
         5NQz4ouotMAcJ9v1a0L1hWv+FFZzAGLaXnbL6z9l/CgTzLUbUUKXijMvsDtMCtzo9Msa
         ih2w==
X-Gm-Message-State: APjAAAVs1DL7D5SeV/uZl+1ivanyjzcSp/aobHcvFY0RsRt+BqClbVRE
	UYB4/Tf75PjC5k1x2YvTYkRrYp5j
X-Google-Smtp-Source: APXvYqzWVrtLtcXfenj85sY7OWQOng9eYNt7DNUv50EBK0PtKlw197Y+6MZb4NkIskD0iPQ2vnRa3g==
X-Received: by 2002:a17:90a:191a:: with SMTP id 26mr6267426pjg.111.1579985014277;
        Sat, 25 Jan 2020 12:43:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:953f:6ade:6955:1d1c])
        by smtp.gmail.com with ESMTPSA id c17sm10421921pfi.104.2020.01.25.12.43.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jan 2020 12:43:33 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][master][zeus][PATCH 1/2] checksecurity: fix runtime issues
Date: Sat, 25 Jan 2020 12:43:31 -0800
Message-Id: <20200125204332.2605-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

add some missing perl modules

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/checksecurity/checksecurity_2.0.15.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/recipes-security/checksecurity/checksecurity_2.0.15.bb
index 030bf25..204123d 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
@@ -18,4 +18,4 @@ do_install() {
     oe_runmake PREFIX=${D}
 }
 
-RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob util-linux findutils coreutils"
+RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob perl-module-carp perl-module-env perl-module-tap-parser-iterator-array util-linux findutils coreutils"
-- 
2.17.1

