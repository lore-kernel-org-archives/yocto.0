Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.7077.1621337320655508977
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 May 2021 04:28:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p/EAISR8;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id f12so11130476ljp.2
        for <yocto@lists.yoctoproject.org>; Tue, 18 May 2021 04:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T6VYdLEHYd2cz3wgtgUMhQL+yKctjk7CzyuL45MEHEg=;
        b=p/EAISR83D/sn1tWPPLM+UhCO0LtQfRJ0nBUeduSSTstlPjg2BkpwAtnmzEez4pPOS
         NorgzjMmOL4nNxovH5dZ28yxMl0tPlkUq/drO62+LkbB0OESlcObzBtCeNcz/Hwd8idQ
         AbnavkxJfO+fKxkSoKvaOHetA9nKHwSwVg65pp0OrOonZ6/j8PlVXVa3vbECBufZbVnh
         Ibd+eBJVyJsWJlrsxMBNW9zWzuGaTKmwMuDvP5tZuRfHfFpXz3SBP7YKGn/nIIoq2Eyl
         8UNn/CfcD+R0lYq3wtA8iBWuXv5zkXhEq3NWnJFF/vniIB4dPFlD8B30XeXP9lR1clQ+
         EdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T6VYdLEHYd2cz3wgtgUMhQL+yKctjk7CzyuL45MEHEg=;
        b=gEI2kwckRaP4/y7HZEmdETBliZ5g5jB6lW/YyPslXXmKHhgxHa8yf7y/gvcwR3Fb45
         tziJOspgTAKAesg8dclxV0ckUh4MEbTRTylv3Fb3QV0IA/+xLNHcQxpbz8BtJnmdrs1p
         isGVKrzfVFtnVVKMxaSgO/c3OiUr8+9z8LS0bGbihjfYbaeo0QrUqY5pSUoz5cUKaQIc
         qG5XSlMlA0iz+uO+5LotlvYLASYavjR5Yg/dxzzTGBHBjkIlCj5pz5FD0pbaGedkGZLf
         3Y3Iirh/kjPTvNITEoTXHPHn35ZHOwrJVF+GgjIPsTIDT1B2q68ZDBSiKlLuCKhpAhB8
         KddQ==
X-Gm-Message-State: AOAM531L4ZidLOgQNsvhBKbaRLKtsItrUJXoy3MWqp65VDyyxxE5JzkW
	dEj9k5RyQ6/oFpNYCPliTaGneZygM6VVcw==
X-Google-Smtp-Source: ABdhPJwTy0BCpKX5FEBh8ya/TkNQEmXhEpl1eSW5BkD/lSxEaRVyXWqKhtFjcRvZ4L3it3kssGv3kQ==
X-Received: by 2002:a2e:968e:: with SMTP id q14mr3630789lji.507.1621337318505;
        Tue, 18 May 2021 04:28:38 -0700 (PDT)
Return-Path: <zmuda.w@gmail.com>
Received: from p1.lab ([2a02:a319:8239:4400:4a1:dc07:cf12:9f1f])
        by smtp.gmail.com with ESMTPSA id b14sm765968lfb.111.2021.05.18.04.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 04:28:38 -0700 (PDT)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH 1/2] nrf52832.inc: Rename to nrf52.inc
Date: Tue, 18 May 2021 13:28:02 +0200
Message-Id: <20210518112803.2548979-2-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210518112803.2548979-1-zmuda.w@gmail.com>
References: <20210518112803.2548979-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

The file is so generic anyway it can be targeted for
the nRF52 family without any harm.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/96b-nitrogen.conf                   | 2 +-
 conf/machine/include/{nrf52832.inc => nrf52.inc} | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename conf/machine/include/{nrf52832.inc => nrf52.inc} (86%)

diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
index 998db4c..48f2041 100644
--- a/conf/machine/96b-nitrogen.conf
+++ b/conf/machine/96b-nitrogen.conf
@@ -3,6 +3,6 @@
 
 #@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
 
-require conf/machine/include/nrf52832.inc
+require conf/machine/include/nrf52.inc
 ZEPHYR_INHERIT_CLASSES += "zephyr-flash-pyocd"
 ARCH_96b-nitrogen = "arm"
diff --git a/conf/machine/include/nrf52832.inc b/conf/machine/include/nrf52.inc
similarity index 86%
rename from conf/machine/include/nrf52832.inc
rename to conf/machine/include/nrf52.inc
index e938aa6..d22f8bc 100644
--- a/conf/machine/include/nrf52832.inc
+++ b/conf/machine/include/nrf52.inc
@@ -1,7 +1,7 @@
 #@TYPE: Machine
-#@NAME: nrf52832
+#@NAME: nrf52xxx
 
-#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52832 (Cortex-M4) SoC.
+#@DESCRIPTION: Machine configuration for Nordic Semiconductor nRF52xxx (Cortex-M4) SoC.
 
 require conf/machine/include/tune-cortexm4.inc
 
-- 
2.25.1

