Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com [209.85.167.67])
 by mx.groups.io with SMTP id smtpd.web08.7627.1607353272681322371
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 07:01:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q/i6hdQt;
 spf=pass (domain: gmail.com, ip: 209.85.167.67, mailfrom: zmuda.w@gmail.com)
Received: by mail-lf1-f67.google.com with SMTP id u19so18536275lfr.7
        for <yocto@lists.yoctoproject.org>; Mon, 07 Dec 2020 07:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0eHFfKevj3ZINEp8nehWi1USsgMOCFD8IGpX52gldsI=;
        b=Q/i6hdQt7aoWnkadlLNKQRHTlnzWzgD57mTUYqc5HtyBYxDu31RDOGasWgwf9Tx8Ot
         oST6GmMGcCGWz1YCpFB4ui1uVZsTpMXK68gALraGo4MBtfFyKY5jJp+AYBwuRSkQM0yE
         DaNPSziv3GnwbcET1PikyWG2xjX4pd/NGiljMOOvfE7bc6Ub6Jh2+YLG3URzfYXEy9ju
         KvfkIeNNDVwF/JEz0Js3E2UMgjnLNtEhiqayEMakSLu5V1eZvSbb1oWeKLz5ijfjIZz/
         nHnsD3QbxROpmmG1erWtti/D0JbOC7FSrxu7bBFX1LfQwa6kc7Dk6tfrUjyxZC67yVT8
         cEXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0eHFfKevj3ZINEp8nehWi1USsgMOCFD8IGpX52gldsI=;
        b=d1DVPs4/iG8sUgCEKS978q2D6Evtv6MP3yZCQJvzppK98pmviKVaoUfcJE1n2tGO1U
         KLIVakw4nZKQoAOo5I4D4lysAuPj9+R7y655mzBI/g/NeYCHZ8+7UE3VFFAfA++lUf6J
         iN7Qbg184tuBI9+fOkYF84Af4HvKDtdL2a3Td0mjvyTG9vi7E4huw/50k2wdfAZnlVO2
         IDFiycvUdbKSlc6WV9MpJAsSdzw4LM+2ehw5VOcGIOaO6kTfqGlNJzOcqqQEez7MVdLz
         ZlVevxHUhKR3upQ9q9obBIUX4mHEzO90Oo24qvl+ED42L9H4LijGIf7xrT0WISysYHkX
         /hjA==
X-Gm-Message-State: AOAM531C5r7DjXZhH3t/qSPZUbbSPje4/JSEG8Lola4NLwGaoiLJaHPi
	haq52P6g6GTgulq0x+peZ5RAWNk1Zk5dXg==
X-Google-Smtp-Source: ABdhPJwE3oI8hv9ZING2cipPtnM7hxomD/no5eBIx3OBj3p3v0xtmi/xESNuCNOtmvHHqRrTEAGR4w==
X-Received: by 2002:a05:6512:3189:: with SMTP id i9mr3763040lfe.266.1607353270739;
        Mon, 07 Dec 2020 07:01:10 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id 5sm2928681lfr.197.2020.12.07.07.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:01:10 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 3/5] conf: machine: add 96boards Nitrogen support
Date: Mon,  7 Dec 2020 15:01:02 +0000
Message-Id: <20201207150104.12208-4-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207150104.12208-1-zmuda.w@gmail.com>
References: <20201207150104.12208-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

The board is based on Nordic nRF52832 Cortex-M4 chip.
The support depends on Nordic HAL. It has been verified
with zephyr-philosophers and zephyr-shell sample applications.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/96b-nitrogen.conf | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 conf/machine/96b-nitrogen.conf

diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
new file mode 100644
index 0000000..d1905f2
--- /dev/null
+++ b/conf/machine/96b-nitrogen.conf
@@ -0,0 +1,7 @@
+#@TYPE: Machine
+#@NAME: 96b_nitrogen
+
+#@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
+
+require conf/machine/include/nrf52832.inc
+ARCH_96b-nitrogen = "arm"
-- 
2.25.1

