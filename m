Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web08.6008.1623401539618129327
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jun 2021 01:52:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rm64L6WG;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id r198so7449442lff.11
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jun 2021 01:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Tc7TrwADHaJn7uNO/k34LricKqat6YYw3hUEX5+Cx4o=;
        b=Rm64L6WGwEVImE68VtG65REr1n7Pe5oNhPG1YuYBbR6OSndLJhxUPz8Ms+3DCDmXm0
         i+6qbttOevKXNdxbFsdd/Hfa0xbXJhKIjMbOTHID2vwvFGBNtnaCBX08pxwAS24ohanK
         Agz0s1/wu9TLuFgU96tHh2RyelwLu0Oczqs867rJ88Sgrf0A04II8EYMf5xgXvIAEZzG
         pk9Ho+lr+9FW8siqlHET8+xB92YXa4UkwVKi6OJRJqdAxpLrXElbQy1QEGiVblH3K5jv
         NCYukyQ56o8/SJv7+i767ZAXfZ+ohPmX1LBcbcPkHLwrlXcVM1coI/+xSis4zG0Wlfmc
         8h3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tc7TrwADHaJn7uNO/k34LricKqat6YYw3hUEX5+Cx4o=;
        b=dkAj/KMC2b9CTO9sJxoRcAOKST0sJFbQjed9HkFTzlQw3PXiojB8s+UDhD39HcbL6e
         gMFbEYfafZu29FQUnL9DeoD/J2zapHYqRFKmHPugSL4GASM6G+RUOrdLddihzDPfOMr+
         v9OuFeT5ozIZw0Fg5Toao+0QQ5agI4DgYWbRG7+TMgtp7quYv48NbC852TPb/Si892eJ
         1ikFTPOjwqCDqAEYt/CAcS8xw+VMa+F0VhWCnowuuP60RS33IBD39JGw03cq+gNuYUn1
         AdpQchJplrC4m5pLHJhKU0t/q5IY0DB90QgMESgwEN7KJiOME2t6/i8W11iv86tkgNPt
         6KOw==
X-Gm-Message-State: AOAM532Qsy6iwCiVSw4NZkOO0WfR2sTQ6IbtRDoLx+GQBtXISF4iwPb/
	acxNCKM7YoILXDY09aYzsGvjyVUrWkeACVd9
X-Google-Smtp-Source: ABdhPJwJQqxGgga/GseGBFM3ZqqDnGRRqEQt5NoTvkks+wHWrbk4af9Cn25Ie9wEt8pbH9ZZFHcoNw==
X-Received: by 2002:a05:6512:3457:: with SMTP id j23mr1970324lfr.146.1623401537515;
        Fri, 11 Jun 2021 01:52:17 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain ([2a02:a319:8239:4400:b71d:7ae0:b524:c53d])
        by smtp.gmail.com with ESMTPSA id e29sm528825lfb.258.2021.06.11.01.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 01:52:17 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Nagesh Shamnur <nagesh.shamnur@huawei.com>
Subject: [meta-zephyr][PATCH 2/3] arduino-nano-33-ble.conf: Add Arduino Nano 33 BLE and BLE Sense support
Date: Fri, 11 Jun 2021 10:52:04 +0200
Message-Id: <20210611085205.1870988-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210611085205.1870988-1-zmuda.w@gmail.com>
References: <20210611085205.1870988-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Nagesh Shamnur <nagesh.shamnur@huawei.com>

Signed-off-by: Nagesh Shamnur <nagesh.shamnur@huawei.com>
---
 conf/machine/arduino-nano-33-ble.conf | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 conf/machine/arduino-nano-33-ble.conf

diff --git a/conf/machine/arduino-nano-33-ble.conf b/conf/machine/arduino-nano-33-ble.conf
new file mode 100644
index 0000000..e45cfc2
--- /dev/null
+++ b/conf/machine/arduino-nano-33-ble.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: arduino-nano-33-ble
+
+#@DESCRIPTION: Machine configuration for Arudino nano 33 ble and Arduino nano 33 ble sense
+
+require conf/machine/include/nrf52.inc
+ARCH_arduino-nano-33-ble = "arm"
+
-- 
2.25.1

