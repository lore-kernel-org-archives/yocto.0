Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web10.5000.1588674472807971960
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 03:27:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L6ZBH4vh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f66.google.com with SMTP id y24so1716033wma.4
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 03:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4A+pm2Bk5WTU7DZ2jn44HPVjbO2zEYe9Nv7EW7WuSxg=;
        b=L6ZBH4vhtJI+wkdFItvERRXUKagXRm8xsgdecfiwuhN+pOm6HStPOItsn7Tfemiq+p
         BygYPVSygrGpVa4/BMs3FEud1RzRa4gSHGo4dD7ObDcrziOfpHVbbHoGFwYYzyakBCOp
         u3pn76J+KMLe57RBkDEbmUnlqVRxHcHPqkCoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4A+pm2Bk5WTU7DZ2jn44HPVjbO2zEYe9Nv7EW7WuSxg=;
        b=Fg5KYIZOyCy1T5ZULTIsi4VJ4PG3NMbnilD+CSn4MwFll7+gv+rMWlvilWEVUXU6V4
         Pp/5NAeGyg42qWAyiYKAvqTBVJP+szdDNFG1hBhUQQxoH42zAUntydvcvG2TnngIdN7a
         wjIVAxQmMmdNdd5s2+p9CF8KpkCMsSEVMUgRpfkBh7smAC5BkLl2ED68jo78NdsfCed8
         qDJS2nBXyHFklr/WirWNQ8JibnND7wMezk+ldX5THhqOC2qy1OOa6INA81tVCDIgyDK0
         f48TFOznEILi3wEc3YMr/QkCG4CrOAFH1X53vGDL+xdCWLRwm6LUIk5fLZHkO6iah0nY
         o1LA==
X-Gm-Message-State: AGi0PuZOm2o+2ZjbE0+Ruk2sUaVC05UN1Z//0fxIrkD2YyOm12HiDQlW
	zzWgW71jZUd2tAgPnLWq3tdqPnFtj1w=
X-Google-Smtp-Source: APiQypLsC9TwGmEx4YQAaawZHjDWrt8Afvw31vDt1vvatr/WJCaYp7yFZHNSHft0SuLRyXxQFqC+cQ==
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr2698799wmd.148.1588674471088;
        Tue, 05 May 2020 03:27:51 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e2sm2409121wrv.89.2020.05.05.03.27.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 03:27:50 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] disable-gplv3.inc: Disable glib-2.0 ptest python3-dbusmock dependency
Date: Tue,  5 May 2020 11:27:48 +0100
Message-Id: <20200505102748.3678367-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505102748.3678367-1-richard.purdie@linuxfoundation.org>
References: <20200505102748.3678367-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The newly added dependency on python3-dbusmock in OE-Core is GPLv3
and would fail to work with this layer. Remove it in the config
for enabling the layer.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index 45834b7..761be7d 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,2 +1,3 @@
 INCOMPATIBLE_LICENSE = '*GPLv3'
 WARN_QA_remove = 'incompatible-license'
+RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
-- 
2.25.1

