Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web12.5025.1588674471940819711
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 03:27:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=SFx5asF6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.68, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f68.google.com with SMTP id x4so1699855wmj.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 03:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qfcg1/bBpHdLQLR+HBgRU/cjIpqDpCud0zbzy2UEdNU=;
        b=SFx5asF6GwNspvxXLLBbA3l0fSDshqZKI2YH6jSx+h2hBfxZQfg5pEA+tnES5SRHaB
         aa0VtXu9xhKQutcVpB85cacTTz1vLGR8l1ieZfjgX5votzul+DZo93BFNendmLzOGPae
         aqEe6UBHFIiuTWnN4VMLGU14o3GEniYLnJm/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Qfcg1/bBpHdLQLR+HBgRU/cjIpqDpCud0zbzy2UEdNU=;
        b=dxzdVrwrdVjrfRS8VQl4uMagCwkvamx8Bd3TJzmOe4TSyczETlXRvHKokFVL8ocvoJ
         /G8q3LjklGlCj1XmfbdnmTTNhRS9pthmjQRXErFF5mpSDuWmfJ2G5Un5kCxv83+2qmWX
         Uyb9WW6GfLmU/7ntE1Nd5QGJ2CWTMPye40NnvbrbE/RanDIdO8nzJnjr2eUSIWwqTsIK
         6h+FHZ2caS7ztFsh3OF3CFAIbBUkBzZNz3BGaQTFmwzS23s/ZG0RMX2nPLavLPJNA3Fx
         rn42LsDNJUOstrUT9XRHWNJhZlJRyGoOXeTx4fIIkvuXLgWdzFcDG9FiHTWOjbJ6aY0p
         4p1g==
X-Gm-Message-State: AGi0PuZGtZmiLODtG/3eD9kOuVWk8XLWFOBNHjNWxmWMDx+Gkd5V1vo4
	FVs72/LJ3av88027nXO/yPBCi7bLab8=
X-Google-Smtp-Source: APiQypIA6jZEiH27sFbhvuSwMGJsHWxFSncvrCgZyhNlQvx2ujtb+MAYvpyvdTa3K2rur/qHuNXbsQ==
X-Received: by 2002:a1c:b70a:: with SMTP id h10mr2565067wmf.172.1588674470051;
        Tue, 05 May 2020 03:27:50 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id e2sm2409121wrv.89.2020.05.05.03.27.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 03:27:49 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] conf/distro: Add disable-gplv3.inc
Date: Tue,  5 May 2020 11:27:47 +0100
Message-Id: <20200505102748.3678367-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We're finding this layer needs configuration to work as intended. Rather
than teaching this to things like the project autobuilder, collect
the configuration inside an include file in the layer itself which
everyone can either use directly or refer to.

Initial population from the autobuilder config used for this
testing this layer.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 conf/distro/include/disable-gplv3.inc

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
new file mode 100644
index 0000000..45834b7
--- /dev/null
+++ b/conf/distro/include/disable-gplv3.inc
@@ -0,0 +1,2 @@
+INCOMPATIBLE_LICENSE = '*GPLv3'
+WARN_QA_remove = 'incompatible-license'
-- 
2.25.1

