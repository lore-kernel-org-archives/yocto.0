Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web09.172.1631637549656585997
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 09:39:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ANRrdPND;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id w7so13247520pgk.13
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 09:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=bWL36mA0XEf+iTWzGqwc3v8QD9V1sECMPgOpdCpclQ0=;
        b=ANRrdPNDR9kUWX3Ac7h8BuXz3Oy7IrdL5Ag1phWx/3inQOvkaO3FvWXjqkF5EdJ7cY
         ce7p4cqMcUVlg5dpreO9XpH84wPksdqXbGcY+hjxV7ilNu6nblJoY7PqCxmhrUZyJXsP
         DhQiiU132fcz9osaJ2JfvgIGwZZmN4uiLOTTl6RiUsqih8qEjDVkQ5ovFD7pIt4WW+/E
         QSTxBidWZBS0CVy+mOxx9HyKnXRCoLcl3p7DHeOwtR3FX5PW1mMeeV1bW2UAgZtJBStv
         ciih+XjtZ6KOM9nL61nNG7jf6ZX07X0KxdGmpbD3V/1waPZ/bsnZpJlmDoH0rG890vTi
         1hTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bWL36mA0XEf+iTWzGqwc3v8QD9V1sECMPgOpdCpclQ0=;
        b=Tq2heZ9Jx59AfWB7RDsHXRL/9HVmrIq8NetmEp3KiPl42XyxelJeO6wxzNf7uahQNC
         wlgt4TDSZXtmP3pmM1gukzWYNaxqsQsbYlzd5ccST3Bmgyvqu7OI/sr4/MrgUYial8mk
         +fFOiRHl6Xmxh3oCIOwMfGdJjecNN0mg6nBfDDRtYD9Qh0p3G2W2nSc9Hmnf21x16ByY
         dktKh04I4b/U0D6by0x0b94RT8HSiMPbrzxhEtxXO5zn/vi3vO2b96SnsTZXaSPW0Dap
         OZ1JgdwdCtnKns54ej01LDD9YtRL/hcvwh0FWYbC0A3m2O8xfiJXbz786k9a0XXKn3XK
         lFgw==
X-Gm-Message-State: AOAM532SfuUp/BWqxraacmVyFfCGG1lY2oD/MgbKlgwq9C6GnZWKwR2k
	zIBl7sRqQT1Kjl+Yg5aPcPw/UsTtPuY=
X-Google-Smtp-Source: ABdhPJxgyfvPQ+103wfVHPXWp/aLUME/AXbUjlg/qDc41CxLx6MHQzPsw4CXE+tEs6iuo6jPjDUo2A==
X-Received: by 2002:a63:1656:: with SMTP id 22mr16098379pgw.20.1631637548898;
        Tue, 14 Sep 2021 09:39:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id b7sm10591600pfl.195.2021.09.14.09.39.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:39:08 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] ibmtpm2tss: set precise BSD license
Date: Tue, 14 Sep 2021 09:39:02 -0700
Message-Id: <20210914163906.126666-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914163906.126666-1-akuster808@gmail.com>
References: <20210914163906.126666-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"BSD" is ambiguous, use the precise licenses BSD-2-Clause

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
index ae8974b..df66779 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
@@ -9,7 +9,7 @@ It also comes with a web based TPM interface, suitable for a demo to an \
 audience that is unfamiliar with TCG technology. It is also useful for \
 basic TPM management."
 HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmtss2.html"
-LICENSE = "BSD"
+LICENSE = "BSD-2-Clause"
 SECTION = "securty/tpm"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
 
-- 
2.25.1

