Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D823CC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 05:29:49 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web11.4977.1632893389482899930
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 22:29:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gE82Wz52;
 spf=pass (domain: gmail.com, ip: 209.85.166.178,
 mailfrom: twoerner@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id w1so1565297ilv.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 22:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=gO+wIPRL8o/zp4HlUYdBKSXOOCYYyc6D6VeBxUBEVdQ=;
        b=gE82Wz52Yg8Zo5UzGYBbVK1Hv3PwAtD5NA+2iB4WqbgdGaDYtfajp7Uhu2qix1cnUr
         pb+t/8JzODvL3xWJxNbwWegfzF+eSW0jGUauzgqs8521EYtZFOYxO+VMQn+TLmD9yyUo
         /ZBhk/u+qU9bpHVjRleo/mc8xH+Q1IrFsjD9XZwpm1wZjyM4xrmemOZ8HWHcqI4IKkTL
         NPwekK+mqEedv5msVdBOi+RujeDp1XYMaNyOBPOrjbd76RJYCn7RiMzbaTePY3/vsiYs
         Hv/zK9wFu/wH2HL+VDbv39KpH/louDnXHX7Ft4g6mjJNPXACTR1OATgM/X1UjRBKluHi
         yM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gO+wIPRL8o/zp4HlUYdBKSXOOCYYyc6D6VeBxUBEVdQ=;
        b=acDu036qr26HlLFQpn1eBDYF/lR39jzM3brAueEUz893Kv5FFCzeTCdXZJAahrOeMK
         VMnpp1Tnt/5VXCxanykkV4fSt5L075fwUVu6V+TiI90x9kGOWQXhjXnApjUbUOsw6NBn
         gclSzWRfRvhcE0vClv/51/TpytqDB6JeLE5jt6amQhrZTPmB4sCOk3pTScoiSK4XeAeX
         UlS8kEFJ/7GVZ2ez+YRppT1lPs1+CzSj60XcQb5JG2sz7HnEUoUe2kwYzxB5leXBovwE
         neOBLrSMVOaeKRrvAmB0d0XX1MUSfLNzyO8g3C7NOZgAoA/qgMmhhPjHH7pqlBXTsDOP
         HKUg==
X-Gm-Message-State: AOAM533Gkt1z1i9UA7niyg3I9UnjrxaM/U+VxOOrvNnafROshge8NxQc
	53ew+jtACZf63kMTlCwxeZp981xYj7k=
X-Google-Smtp-Source: 
 ABdhPJxhUBdsqMLU+KwT76fQPht54pI9LdmqapybG5HvFySnWfoZLr8W/VL7ZM/bPmm3Xm8wgGN9EQ==
X-Received: by 2002:a05:6e02:17ce:: with SMTP id
 z14mr7103389ilu.301.1632893388585;
        Tue, 28 Sep 2021 22:29:48 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 u18sm748705ilj.24.2021.09.28.22.29.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 22:29:47 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 3/3] nanopi-m4: add common override
Date: Wed, 29 Sep 2021 01:29:38 -0400
Message-Id: <20210929052938.36819-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210929052938.36819-1-twoerner@gmail.com>
References: <20210929052938.36819-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 05:29:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54903

Add a common override for both nanopi-m4 MACHINEs.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/nanopi-m4.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/machine/include/nanopi-m4.inc b/conf/machine/include/nanopi-m4.inc
index b8e1db1..aaf07a3 100644
--- a/conf/machine/include/nanopi-m4.inc
+++ b/conf/machine/include/nanopi-m4.inc
@@ -1,6 +1,9 @@
 # Copyright (C) 2021 Blade SAS
 # Common definitions for all NanoPi M4 RK3399 board variants
 
+# add a common override for all nanopi-m4
+MACHINEOVERRIDES =. "nanopi-m4:"
+
 require conf/machine/include/rk3399.inc
 
 MACHINE_FEATURES += "usbhost serial"
-- 
2.30.0.rc0


