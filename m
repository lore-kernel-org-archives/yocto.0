Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.189.1631637551012405301
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 09:39:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dAvU6ltt;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id lb1-20020a17090b4a4100b001993f863df2so3257948pjb.5
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 09:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=NJk6unEf3BwkxFHk5z86i44BYdBldXKNc1Gr4ytHJWA=;
        b=dAvU6ltti7+uF4kaACwuJGJ8EboZ+Bra/3ZgxCHI8GWm51kBzbygNo9rTlRAmBM9Ff
         V2y/e/A54xRiD3T8PqbCY8PB7j9bd+e+gBDl0Gu8IxEbJ062Efe9DSyTg4tHfAtDgdqW
         GqzU9RDVZLthBtCm4CUNxPbKQAQyuDeeDmI4px9MBtclbzQDWxl5vNojZCxjNCuTocBe
         Cwwu13oRHIRxLHtGi7Ka2Cl8IUei6ChBapJ+NQhfHHOxUgPt5Bd/70uAfb2kRIDG99Na
         HYLy32mv9Cdc7W/wQsxOKSU760jf+xU9UXtZtnFeXWkofIZ6VIseoRv/u2F3TkawW49u
         raJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NJk6unEf3BwkxFHk5z86i44BYdBldXKNc1Gr4ytHJWA=;
        b=XVdQC4yqUM/tnnlBRXloYAlTEJ1WojS76DgTvBhmJVmzrQgYbJihC4vUYyoxChQ/PM
         Mj4WcTHd5H4INFslQXQRhXomvdJyMbTWbqmJXVVvGVr9ewR5+F6FEhf4p/wSJsb3G/EO
         jgoVG5kUsfLwi14mkpFY5/llculrbSuzqpmhWUCu3YSj7G+0sO99CFvNnUhFx1ZeA3RB
         J4Jy22yefkxkVAz58FBdoG92OVp8ugbeL0AKOlxj/I8CJ6rdr7c6JHer7RdYULKQWoBy
         mbsOql4z0IDXyi93rvY+S3sXGRadb+ZTSDFjkpcAJdZlXoNZQqGysJtKVo5kWW6F/9UR
         tKUQ==
X-Gm-Message-State: AOAM530mbErmJKnsVZy8rlpdRqOYLM8qe3Cs5FLPuXWHJVFj53ZxW1El
	CEN1uMBSPelgeIt6TOIHj/NWbiiy6eo=
X-Google-Smtp-Source: ABdhPJwhd5502dG9XM3RWvBInIt9Czjox5nZO1fSzbQ+KqUFNeiJFiS6h4Dk4kEmkQBUhIIEBcSscg==
X-Received: by 2002:a17:90a:e7c6:: with SMTP id kb6mr3135152pjb.225.1631637550399;
        Tue, 14 Sep 2021 09:39:10 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id b7sm10591600pfl.195.2021.09.14.09.39.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:39:10 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/6] opendnssec: set precise BSD license
Date: Tue, 14 Sep 2021 09:39:04 -0700
Message-Id: <20210914163906.126666-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914163906.126666-1-akuster808@gmail.com>
References: <20210914163906.126666-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"BSD" is ambiguous, use the precise licenses BSD-2-Clause

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/opendnssec/opendnssec_2.1.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/opendnssec/opendnssec_2.1.9.bb b/recipes-security/opendnssec/opendnssec_2.1.9.bb
index 8e36812..6c1bd46 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.9.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.9.bb
@@ -1,6 +1,6 @@
 SUMMARY = "OpenDNSSEC is a policy-based zone signer that automates the process of keeping track of DNSSEC keys and the signing of zones"
 
-LICENSE = "BSD"
+LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=b041dbe2da80d4efd951393fbba90937"
 
 DEPENDS = "libxml2 openssl ldns libmicrohttpd jansson libyaml "
-- 
2.25.1

