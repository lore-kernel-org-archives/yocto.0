Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web08.42608.1624250481091548958
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 21:41:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@verdurent-com.20150623.gappssmtp.com header.s=20150623 header.b=k7aTjHlo;
 spf=none, err=SPF record not found (domain: verdurent.com, ip: 209.85.215.179, mailfrom: amit.kucheria@verdurent.com)
Received: by mail-pg1-f179.google.com with SMTP id y14so1714714pgs.12
        for <yocto@lists.yoctoproject.org>; Sun, 20 Jun 2021 21:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FntbAUvL1pdCXNglRQtrEfjHNK6Lom+qREFytKGyYus=;
        b=k7aTjHloGL0WhW8AJQ9oFRqMBHn5cJH3QOomWqBLkOhuv63Cik5L8j8vPg/UOrKp+3
         2Nutp4JFfVv3OY2nbS0V0PSL2VYjKNQYApuo+nqWKwLI47PXdr0jXfm+Vv5MZvL0B794
         wjZ28XqLgiFbIZh+nJ00LsiHvZxP0oO+TWq5VSAxar28qwEM+/U+KZpdce4iCutTuR8A
         AaRemQAYQi5/JiA50Mi1fsSaYkMOSe7LxX2kdPcfRz4u73Gjf6Or22Fc/IL9cwmFpD2R
         xshJmf0fBQtl8p9yYTzwRY8Ya6mmsUIUn73z/i90ddpMieQcwdBClGUYCYgx3SADmR18
         78ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=FntbAUvL1pdCXNglRQtrEfjHNK6Lom+qREFytKGyYus=;
        b=KQv677gCeaaZZXjP6ADg06xqPlIr3/A7/bc8BaBdksFuvlRctyhlx9TSIxY14qx1zv
         0zXLz/LfRMcrEOPMd0kVnK3ghKAGUDi1hY5DBuzrg986J7rij8TKHBE/onMZwgA43p6d
         IWZnTET5fimNF0il+vozBJw0zHBxcIyAhvFqwAFQc4kDmf7B/d3L0H7GNJ1YIoECUeku
         JbLKpEBg4SNrPsMS7bJagb3p5vQf7bZ7yp3SrvB3CKV8ow6ioBQC8ynYiz0S+wRxo30l
         EIdIzGqysgNjuK2tPWdhpPuExA+2Ktf34f1JiPC8htozfrSCFKL6OXPL4lbxbT8EAQAU
         6XKQ==
X-Gm-Message-State: AOAM530wlbenYGbXve2LTamS6rehAI3COOPHJ5++QP+hCdpmLRRf7Jkz
	8YRba+DBQuNL/eGYc3DmbVaydXm5bf2CPg==
X-Google-Smtp-Source: ABdhPJxoay4G0PPUi/ccac/seB5jQppBSbRyBmCqYElzn1TMpTnb5voQxPErDB+smvttTzARaXxxEA==
X-Received: by 2002:a63:789:: with SMTP id 131mr18651068pgh.174.1624250480017;
        Sun, 20 Jun 2021 21:41:20 -0700 (PDT)
Return-Path: <amit.kucheria@verdurent.com>
Received: from localhost ([103.208.71.34])
        by smtp.gmail.com with ESMTPSA id r128sm1877476pfc.138.2021.06.20.21.41.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jun 2021 21:41:19 -0700 (PDT)
Sender: Amit Kucheria <amit.kucheria@verdurent.com>
From: amit.kucheria@verdurent.com
X-Google-Original-From: Amit Kucheria <amit.kucheria.ext@huawei.com>
To: yocto@lists.yoctoproject.org,
	wojciech.zmuda@huawei.com,
	andrei.gherzan@huawei.com,
	naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH 1/2] zephyr-coap-server: Add recipe for CoAP server
Date: Mon, 21 Jun 2021 10:11:11 +0530
Message-Id: <58d211d0992dbc3b1dcf9c82d82e83fc15001a87.1624250327.git.amit.kucheria.ext@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This sample application provides an example coap-server using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
---
 recipes-kernel/zephyr-kernel/zephyr-coap-server.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-coap-server.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb b/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
new file mode 100644
index 000000000000..f7d75c04efd4
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-coap-server.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/coap_server"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.25.1

