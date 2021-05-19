Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web09.10977.1621429288368835241
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 06:01:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VYOkduW7;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id b12so8297103ljp.1
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 06:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xFvF2MSlP6NB9Sj7QWJVkrNFht4VmVyVogwNFdtyM6s=;
        b=VYOkduW7Mbqx/M62G3D7YVW6nI/M6J8AYeUstC/f5SO1mIRp14hJJgZV92dgBvDxUg
         zuKyYsGiuMW7i09E5kkyewOzr3IEN9UYRNDsCxLSeUjO5WOf+9SmNGmD3ejBhwttun9x
         5vdEVZBHR15p/ySlFIddI06dZp3x30a03VwSsNuIgT6lFM7qCtJc0WFcXFIq59/oTM5l
         TAY4Jf01s+yApQWyz7bWhgBsRxf0JsHuXNUi+90yDw/vqw4tq5axAeyRlxYbQajr4Qxn
         7NNHbpZSyVYkhFLOk3rbg0TtUh3uSd54tLgo0nmQ//kvmTTjanlc6aPmKqUtpIMFVFAm
         soFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xFvF2MSlP6NB9Sj7QWJVkrNFht4VmVyVogwNFdtyM6s=;
        b=XcBZM9mxJS9W6BaYfdyfk9l+cq126N4qiUzF0laqtsFKTFRTDLHN0rIzgE/6pD1khg
         5usGhdWsLky1ysIC+hE2NwcMZEB10B8Sdm3NQinwhzBTril4Diwe0KWWo4h2gPO33DKd
         Mhk2KOg3MKhdUqyEHgs7IcwcWwhOezWYkEkXSfw6uBBUou8LnKdPrfriQNou214RiyAx
         WAFsxinVPdZodC+qxbRhHc6cysXzqqpaPpX3wjiasrfv/0Er7pXwIMsVbNqm3wmdZWZF
         PTFb+YiPHFlD88n+IsyN5T2+SNNiUErzuYjfpj2/XAUxpSVB8kw9kZSM+92yXRMelioY
         X3Mg==
X-Gm-Message-State: AOAM5339k63lRGx719OUofKaz1CaG+mddhPL3YHogeaI1csz84KpYnIl
	SWc/FBMrJ38beoUPGLfZOcTa3/AiTdxwKQjX
X-Google-Smtp-Source: ABdhPJyaAMNrvNRaEFDV1RxgyU7GLzusER8E+64lQrA7EK/GzS9/mMH7pCkEs7uXRVaZyQBDRbzbUg==
X-Received: by 2002:a2e:9c05:: with SMTP id s5mr8610581lji.208.1621429286346;
        Wed, 19 May 2021 06:01:26 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:ef2f:5b80:79d4:29e9])
        by smtp.gmail.com with ESMTPSA id k21sm2536015lfu.98.2021.05.19.06.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 06:01:25 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v2 2/2] nrf52840dk-nrf52840.conf: Add nRF52840 DK support
Date: Wed, 19 May 2021 15:01:11 +0200
Message-Id: <20210519130111.2585823-3-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210519130111.2585823-1-zmuda.w@gmail.com>
References: <20210519130111.2585823-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

Add support for Nordic Semiconductor nRF52840 Development
Kit board.

This is a generic MACHINE over nRF52 SoC family config
plus PyOCD flashing ability.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/nrf52840dk-nrf52840.conf | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 conf/machine/nrf52840dk-nrf52840.conf

diff --git a/conf/machine/nrf52840dk-nrf52840.conf b/conf/machine/nrf52840dk-nrf52840.conf
new file mode 100644
index 0000000..c5be5db
--- /dev/null
+++ b/conf/machine/nrf52840dk-nrf52840.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: nrf52840dk-nrf52840
+
+#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52840 Development Kit.
+
+require conf/machine/include/nrf52.inc
+ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
+ARCH_nrf52840dk-nrf52840 = "arm"
-- 
2.25.1

